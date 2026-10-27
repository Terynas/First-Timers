# Handling events

> Source: <https://warcraft.wiki.gg/wiki/Handling_events> (Warcraft Wiki, CC BY-SA). Re-run sync.sh to refresh.

[TABLE]

Events are messages sent by the WoW client to UI code (OnEvent script handlers of Frame derivatives), mostly in reaction to things occurring in the game world. To process events, an addon needs to create an event handler and register it for the events it wishes to receive.

## Contents

- [1 Setting up an event handler](#Setting_up_an_event_handler)
- [2 Examples](#Examples)
  - [2.1 Hello World](#Hello_World)
  - [2.2 XML-Specific](#XML-Specific)
  - [2.3 Lua-specific](#Lua-specific)
  - [2.4 The vararg expression](#The_vararg_expression)
- [3 Notes](#Notes)
- [4 Relevant API](#Relevant_API)

## Setting up an event handler

Events are sent to Frame-derived [widgets](https://warcraft.wiki.gg/wiki/Widget_API "Widget API"); an add-on needs to create a frame if it does not already own one that can be used for the purpose of handling events. Frames may be created in Lua using the [CreateFrame](https://warcraft.wiki.gg/wiki/API_CreateFrame "API CreateFrame") function; or constructed in XML (using the \<Frame\> tag).

Once a frame has been created, its OnEvent handler must be set to a function that would handle the event on behalf of the addon. The OnEvent script handler may be set using the Lua frame:[SetScript](https://warcraft.wiki.gg/wiki/API_Frame_SetScript?action=edit&redlink=1 "API Frame SetScript (page does not exist)")() function; or constructed in XML (using \<Scripts\>\<OnEvent\>function body\</OnEvent\>\</Scripts\>). The OnEvent handler function receives at least two arguments:

1.  self, a reference to the frame to which the script handler belongs
2.  event, the name of the event being fired
3.  The remaining event arguments are placed within the vararg expression (...). You can extract variables from the vararg expression by simply assigning it to your local variables: `local arg1, arg2, arg3 = ...;`

The addon's OnEvent script handler function should either handle the event, or call another addon function to handle the event.

In order to receive event notifications, the event handler frame needs to be registered for events the addon needs to handle; use frame:[RegisterEvent](https://warcraft.wiki.gg/wiki/API_Frame_RegisterEvent "API Frame RegisterEvent")("eventName") to achieve this. The RegisterEvent function can can be called at any time after the frame's creation; the OnLoad script handler is a convenient location to register for the desired events when using XML.

If you no longer wish to receive event notifications for a particular event, use the frame:[UnregisterEvent](https://warcraft.wiki.gg/wiki/API_Frame_UnregisterEvent "API Frame UnregisterEvent")() function. If you wish to disable all event notifications currently delivered to a frame, use the frame:[UnregisterAllEvents](https://warcraft.wiki.gg/wiki/API_Frame_UnregisterAllEvents "API Frame UnregisterAllEvents")().

## Examples

### Hello World

The two implementations below are functionally identical: they print "Hello World! Hello PLAYER_ENTERING_WORLD" to the default chat frame when the character zones into the world. Note that the event variable is implicit in the XML OnEvent handler: it is supplied by the OnEvent closure signature.

**Using XML**

    <Ui>
      <Frame name="FooAddonFrame">
        <Scripts>
          <OnLoad> self:RegisterEvent("PLAYER_ENTERING_WORLD"); </OnLoad>
          <OnEvent> print("Hello World! Hello " .. event); </OnEvent>
        </Scripts>
      </Frame>
    </Ui>

**Using Lua**

    local frame = CreateFrame("FRAME", "FooAddonFrame");
    frame:RegisterEvent("PLAYER_ENTERING_WORLD");
    local function eventHandler(self, event, ...)
      print("Hello World! Hello " .. event);
    end
    frame:SetScript("OnEvent", eventHandler);

### XML-Specific

You may bind an already declared Lua function to the OnEvent handler in XML directly, rather than creating another function by providing a function body within the \<OnEvent\>\</OnEvent\> tags. Doing so will save you memory:

**FooAddOn.lua**

    function FooHandler_OnEvent(self, event, ...)
      -- insert event handling code here
    end

**FooAddOn.xml**

    <Ui>
      <Script file="FooAddon.lua"/>
      <Frame name="FooHandler">
        <Scripts>
          <OnEvent function="FooHandler_OnEvent"/>
        </Scripts>
      </Frame>
    </Ui>

### Lua-specific

If your frame registers a large number of events, you could reduce the required number of if clauses, and generally simplify your design by doing:

    local frame, events = CreateFrame("Frame"), {};
    function events:PLAYER_ENTERING_WORLD(...)
      -- handle PLAYER_ENTERING_WORLD here
    end
    function events:PLAYER_LEAVING_WORLD(...)
      -- handle PLAYER_LEAVING_WORLD here
    end
    frame:SetScript("OnEvent", function(self, event, ...)
      events[event](self, ...); -- call one of the functions above
    end);
    for k, v in pairs(events) do
      frame:RegisterEvent(k); -- Register all events for which handlers have been defined
    end

Note that in the case of the events:XXX functions above, the variable self, implicitly defined by using the function table:functionName notation, will point to the frame handling the event rather than the events table.

### The vararg expression

The vararg expression (...) may contain additional arguments supplied by the event. Arguments contained in ... can be read by simply assigning them to other variables, possibly using the [select](https://warcraft.wiki.gg/wiki/API_select "API select") function to skip forward to a specific argument in the list.

Consider the example of handling [COMBAT_LOG_EVENT](https://warcraft.wiki.gg/wiki/API_COMBAT_LOG_EVENT "API COMBAT LOG EVENT"):

    function eventHandler(self, event, ...)
      if event == "COMBAT_LOG_EVENT" then
        local timestamp, combatEvent, hideCaster, sourceGUID, sourceName, sourceFlags, sourceRaidFlags, destGUID, destName, destFlags, destRaidFlags = ...; -- Those arguments appear for all combat event variants.
        local eventPrefix, eventSuffix = combatEvent:match("^(.-)_?([^_]*)$");
        if eventSuffix == "DAMAGE" then
          -- Something dealt damage. The last 9 arguments in ... describe how much damage was dealt.
          -- To extract those, we can use the select function:
          local numArgumentsInVarArg = select("#", ...)
          local amount, overkill, school, resisted, blocked, absorbed, critical, glancing, crushing = select(numArgumentsInVarArg - 8, ...);
          -- Do something with the damage details ... 
          if eventPrefix == "RANGE" or eventPrefix:match("^SPELL") then
            -- The first three arguments for these prefixes (appearing after the 11 common to all COMBAT_LOG_EVENTs) 
            --  describe the spell or ability dealing damage. Extract these using select:
            local spellId, spellName, spellSchool = select(12, ...); -- Everything from 12th argument in ... onward
            -- Do something with the spell details ...
          end
        end
      end
    end

## Notes

- The global this, event, and argX variables have been removed in [Patch 4.0.1](https://warcraft.wiki.gg/wiki/Patch_4.0.1/API_changes "Patch 4.0.1/API changes"). Instead, use the arguments passed to the OnEvent script handler.

## Relevant API

- [CreateFrame](https://warcraft.wiki.gg/wiki/API_CreateFrame "API CreateFrame")("widgetType"\[, "name"\[, parent\[, "inherits"\]\]\])
- frame:[SetScript](https://warcraft.wiki.gg/wiki/API_ScriptRegion_SetScript "API ScriptRegion SetScript")("handlerType", func)
- frame:[HookScript](https://warcraft.wiki.gg/wiki/API_ScriptRegion_HookScript "API ScriptRegion HookScript")("handlerType", func)
- frame:[RegisterEvent](https://warcraft.wiki.gg/wiki/API_Frame_RegisterEvent "API Frame RegisterEvent")("eventName") (and possibly frame:[RegisterAllEvents](https://warcraft.wiki.gg/wiki/API_Frame_RegisterAllEvents "API Frame RegisterAllEvents")() )
- frame:[UnregisterEvent](https://warcraft.wiki.gg/wiki/API_Frame_UnregisterEvent "API Frame UnregisterEvent")("eventName") (and possibly frame:[UnregisterAllEvents](https://warcraft.wiki.gg/wiki/API_Frame_UnregisterAllEvents "API Frame UnregisterAllEvents")() )
- frame:[RegisterUnitEvent](https://warcraft.wiki.gg/wiki/API_Frame_RegisterUnitEvent "API Frame RegisterUnitEvent")("eventName", "unit1"\[, "unit2"\])
- [Events (API)](https://warcraft.wiki.gg/wiki/Events_(API) "Events (API)"), a listing of events you may subscribe to.

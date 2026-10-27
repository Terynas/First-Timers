# AddOn loading process

> Source: <https://warcraft.wiki.gg/wiki/AddOn_loading_process> (Warcraft Wiki, CC BY-SA). Re-run sync.sh to refresh.

[TABLE]

This page details how AddOns load and unload, including the order when information becomes available such as SavedVariables and character details.

## Contents

- [1 AddOn loading order](#AddOn_loading_order)
- [2 Events during login](#Events_during_login)
- [3 Events during logout](#Events_during_logout)
- [4 Example](#Example)
- [5 Patch changes](#Patch_changes)
- [6 See also](#See_also)
- [7 References](#References)

## AddOn loading order

*Main article: [TOC format](https://warcraft.wiki.gg/wiki/TOC_format "TOC format")*

Blizzard's AddOns usually load first (the native UI), followed by custom AddOns in alphabetical order. However, [.toc](https://warcraft.wiki.gg/wiki/.toc ".toc") directives can override this behaviour (e.g. `LoadOnDemand` or `LoadWith`).

Within an AddOn:

- [XML](https://warcraft.wiki.gg/wiki/XML "XML") and [Lua](https://warcraft.wiki.gg/wiki/Lua "Lua") files load sequentially as listed in the [.toc](https://warcraft.wiki.gg/wiki/.toc ".toc") file, and also when reaching [Include](https://warcraft.wiki.gg/wiki/XML/Include "XML/Include") or [Script](https://warcraft.wiki.gg/wiki/XML/Script "XML/Script") tags in XML.
- By default, [Saved variables](https://warcraft.wiki.gg/wiki/Saving_variables_between_game_sessions "Saving variables between game sessions") load after the last file listed in the TOC. This can be reconfigured by the [LoadSavedVariablesFirst](https://warcraft.wiki.gg/wiki/TOC_format#LoadSavedVariablesFirst "TOC format") directive to instead be loaded before all files in an addon.
- Finally, [ADDON_LOADED](https://warcraft.wiki.gg/wiki/Event:ADDON_LOADED "Event:ADDON LOADED") fires to indicate the AddOn has finished loading. This is the earliest time for an AddOn to read its saved variables.

## Events during login

AddOns load in parallel to the login screen, but can register for events to access information as it becomes available. However, LoadOnDemand AddOns might trigger part-way or after all steps have finished:

  
**Normal sequence:**

1.  [ADDON_LOADED: addOnName](https://warcraft.wiki.gg/wiki/Event:ADDON_LOADED:_addOnName?action=edit&redlink=1 "Event:ADDON LOADED: addOnName (page does not exist)")
    - Fires when each AddOn finishes loading, including all files and saved variables.
    - Confirm which AddOn loaded using the first argument (in case a LoadOnDemand AddOn loaded in parallel), access saved variables, and deregister from ADDON_LOADED to avoid repeated callbacks.
2.  [PLAYER_LOGIN](https://warcraft.wiki.gg/wiki/Event:PLAYER_LOGIN "Event:PLAYER LOGIN")
    - Fires during the loading screen when logging in or reloading, before the first [PLAYER_ENTERING_WORLD](https://warcraft.wiki.gg/wiki/Event:PLAYER_ENTERING_WORLD "Event:PLAYER ENTERING WORLD"). Most information about the game world is available to the UI.
    - Finish any one-time initialization and frame placement, so they are in place when the load screen disappears.
3.  [PLAYER_ENTERING_WORLD: isInitialLogin, isReloadingUi](https://warcraft.wiki.gg/wiki/Event:PLAYER_ENTERING_WORLD:_isInitialLogin,_isReloadingUi?action=edit&redlink=1 "Event:PLAYER ENTERING WORLD: isInitialLogin, isReloadingUi (page does not exist)")
    - Fires during any loading screen including logging in, reloading or entering an instance. The first time happens after [PLAYER_LOGIN](https://warcraft.wiki.gg/wiki/Event:PLAYER_LOGIN "Event:PLAYER LOGIN"). If this is a reload, talent information is also available.
    - Finish any reoccuring (ie, instance-dependent) initialization and frame placement, so they are in place when the load screen disappears.
4.  [PLAYER_REGEN_DISABLED](https://warcraft.wiki.gg/wiki/Event:PLAYER_REGEN_DISABLED "Event:PLAYER REGEN DISABLED")
    - Fires when the player is entering combat lockdown. If the player is in combat while reloading, it will follow [PLAYER_ENTERING_WORLD](https://warcraft.wiki.gg/wiki/Event:PLAYER_ENTERING_WORLD "Event:PLAYER ENTERING WORLD").
    - Finish any outstanding modifications to secure frames, as they are unalterable during combat lockdown.
5.  [SPELLS_CHANGED](https://warcraft.wiki.gg/wiki/Event:SPELLS_CHANGED "Event:SPELLS CHANGED")
    - Fires when spells in the spellbook is populated, and again when it changes. Currently, this event fires after the preceeding events (but it was not always this way).
    - Update any pertinent non-secure frames.

  

Error condition:  
[SAVED_VARIABLES_TOO_LARGE: addOnName](https://warcraft.wiki.gg/wiki/Event:SAVED_VARIABLES_TOO_LARGE:_addOnName?action=edit&redlink=1 "Event:SAVED VARIABLES TOO LARGE: addOnName (page does not exist)")

- Fires when the client runs out of memory while attempting to load saved variables, after [ADDON_LOADED](https://warcraft.wiki.gg/wiki/Event:ADDON_LOADED "Event:ADDON LOADED").^([\[1\]](#cite_note-SAVED_VARIABLES_TOO_LARGE-1))
- Usually there is no further action; the client displays a [popup](https://www.townlong-yak.com/framexml/live/go/StaticPopupDialogs.SAVED_VARIABLES_TOO_LARGE) informing the user of the error.

## Events during logout

1.  [PLAYER_LEAVING_WORLD](https://warcraft.wiki.gg/wiki/Event:PLAYER_LEAVING_WORLD "Event:PLAYER LEAVING WORLD")
    - Does not imply logout, as it may preceed another loading screen (instances, continents, etc.).
2.  [PLAYER_LOGOUT](https://warcraft.wiki.gg/wiki/Event:PLAYER_LOGOUT "Event:PLAYER LOGOUT")
    - Last chance to modify SavedVariables before AddOns unload.^([\[*citation needed*\]](https://warcraft.wiki.gg/wiki/Warcraft_Wiki:Citation "Warcraft Wiki:Citation"))
3.  [ADDONS_UNLOADING](https://warcraft.wiki.gg/wiki/Event:ADDONS_UNLOADING "Event:ADDONS UNLOADING")
    - All AddOns commit SavedVariables prior to reloading, quitting or logging off. Called once only, rather than for each AddOn. This does not occur during a crash or Alt-F4.^([\[*citation needed*\]](https://warcraft.wiki.gg/wiki/Warcraft_Wiki:Citation "Warcraft Wiki:Citation"))

## Example

LoadingOrder.toc

    ##Interface: 120105
    ##Title: Loading Order Demo
    ##SavedVariables: LoadingOrderSavedVar
    file1.lua
    file2.xml
    file3.lua

file1.lua

    print("This loads first")

file2.xml

     <Ui>
      <Frame name="TemplateFrame" virtual="true">
        <Frames><Frame><Scripts><OnLoad>print("Inherited elements of the frame are processed first.") </OnLoad></Scripts></Frame></Frames>
      </Frame>
      <Frame inherits="TemplateFrame">
       <Frames>
        <Frame>
         <Scripts><OnLoad>print("First child frame's OnLoad fires first")</OnLoad></Scripts>
        </Frame>
        <Frame>
         <Scripts><OnLoad>print("Second child frame's OnLoad fires second")</OnLoad></Scripts>
        </Frame>
        <Scripts><OnLoad>print("Parent frame's OnLoad fires after its children's.")</OnLoad></Scripts>
       </Frames>
      </Frame>
      <Script file="file2.5.lua"/>
    </Ui>

file2.5.lua

    print("Files included in XML are executed as they are encountered")

file3.lua

    LoadingOrderSavedVar = 0  -- default value until ADDON_LOADED
    print("The last file has loaded.")

    local frame = CreateFrame("Frame")
    frame:RegisterFrame("ADDON_LOADED")
    frame:SetScript("OnEvent", function(self, event)
      if event == "ADDON_LOADED" and arg1="LoadingOrder" then
        LoadingOrderSavedVar = LoadingOrderSavedVar + 1
        if LoadingOrderSavedVar then
          print("The demo has now loaded .." LoadingOrderSavedVar .. " times".)
        end
      end
    end)

## Patch changes

- [![The War Within](/images/thumb/TheWarWithin-Petopia-Logo.png/40px-TheWarWithin-Petopia-Logo.png?c7c8d5)](https://warcraft.wiki.gg/wiki/World_of_Warcraft:_The_War_Within "The War Within") **[Patch 11.1.5](https://warcraft.wiki.gg/wiki/Patch_11.1.5/API_changes "Patch 11.1.5/API changes") (2025-04-22):** Added the `LoadSavedVariablesFirst` [.toc](https://warcraft.wiki.gg/wiki/.toc ".toc") directive.   
- [![Mists of Pandaria](/images/Mists-Logo-Small.png?f96b23)](https://warcraft.wiki.gg/wiki/World_of_Warcraft:_Mists_of_Pandaria "Mists of Pandaria") **[Patch 5.4.0](https://warcraft.wiki.gg/wiki/Patch_5.4.0/API_changes "Patch 5.4.0/API changes") (2013-09-10):** [SAVED_VARIABLES_TOO_LARGE](https://warcraft.wiki.gg/wiki/Event:SAVED_VARIABLES_TOO_LARGE "Event:SAVED VARIABLES TOO LARGE") added.^([\[1\]](#cite_note-SAVED_VARIABLES_TOO_LARGE-1))   
- [![Mists of Pandaria](/images/Mists-Logo-Small.png?f96b23)](https://warcraft.wiki.gg/wiki/World_of_Warcraft:_Mists_of_Pandaria "Mists of Pandaria") **[Patch 5.4.0](https://warcraft.wiki.gg/wiki/Patch_5.4.0/API_changes "Patch 5.4.0/API changes") (2013-09-10):** Circa 5.4.0, [PLAYER_ALIVE](https://warcraft.wiki.gg/wiki/Event:PLAYER_ALIVE "Event:PLAYER ALIVE") stopped firing during login. It now only fires when a player is resurrected (before releasing spirit) or when a player releases spirit.
  *Previously, AddOns could use [PLAYER_ALIVE](https://warcraft.wiki.gg/wiki/Event:PLAYER_ALIVE "Event:PLAYER ALIVE") to signal that quest and talent information were available because it was the last event to fire, even later than [PLAYER_ENTERING_WORLD](https://warcraft.wiki.gg/wiki/Event:PLAYER_ENTERING_WORLD "Event:PLAYER ENTERING WORLD").*  
- [![Wrath of the Lich King](/images/Wrath-Logo-Small.png?6705fd)](https://warcraft.wiki.gg/wiki/World_of_Warcraft:_Wrath_of_the_Lich_King "Wrath of the Lich King") **[Patch 3.0.2](https://warcraft.wiki.gg/wiki/Patch_3.0.2/API_changes "Patch 3.0.2/API changes") (2008-10-14):** [VARIABLES_LOADED](https://warcraft.wiki.gg/wiki/Event:VARIABLES_LOADED "Event:VARIABLES LOADED") is no longer a reliable part of the addon loading process. It fires in response to CVars, Keybindings and other associated "Blizzard" variables being loaded, and therefore may happen after [PLAYER_ENTERING_WORLD](https://warcraft.wiki.gg/wiki/Event:PLAYER_ENTERING_WORLD "Event:PLAYER ENTERING WORLD").
  *The event remains useful to override positioning data stored in layout-cache.txt.*  

## See also

- [Handling events](https://warcraft.wiki.gg/wiki/Handling_events "Handling events") for information on how to sign up to receive event notifications

  

[TABLE]

## References

 

1.  ^ ^([a](#cite_ref-SAVED_VARIABLES_TOO_LARGE_1-0)) ^([b](#cite_ref-SAVED_VARIABLES_TOO_LARGE_1-1)) [![Blizzard Entertainment](/images/Blizz.gif?984542)](https://warcraft.wiki.gg/wiki/Blizzard_Entertainment "Blizzard Entertainment") [Crithto](https://warcraft.wiki.gg/wiki/Crithto "Crithto") 2013-06-24. [Patch 5.4 Addon Changes - Saved Variables](https://web.archive.org/web/20131208192601/http://us.battle.net/wow/en/forum/topic/9362996672). Archived from [the original](http://us.battle.net/wow/en/forum/topic/9362996672)

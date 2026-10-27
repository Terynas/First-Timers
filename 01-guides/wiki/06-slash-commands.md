# Creating a slash command

> Source: <https://warcraft.wiki.gg/wiki/Creating_a_slash_command> (Warcraft Wiki, CC BY-SA). Re-run sync.sh to refresh.

[TABLE]

**Slash commands** allow the player to interact with addons by typing commands into the chat window. This tutorial describes the necessary steps to add the ability to handle slash commands to your addon.

Summary: assign a handler function to `SlashCmdList[`*`key`*`]`, and create `SLASH_`*`key`*`1`, ..., `SLASH_`*`key`*`n` global constants containing the desired command names, where *key* is some unique command-specific string.

## Contents

- [1 Background](#Background)
- [2 Strategy](#Strategy)
- [3 Parsing Arguments](#Parsing_Arguments)
- [4 Notes](#Notes)

## Background

Slash command handlers are typically invoked by Blizzard's FrameXML code handling the player's chat input; therefore, an addon offering a slash command must register the command by placing certain values in a location where the chat input handling code looks for them.

An addon must create a function that would handle the slash command (possibly parsing the argument string passed to it), and place it into the SlashCmdList table. Additionally, an addon must declare which slash commands it wishes to bind to its handler function.

## Strategy

1.  Pick a unique identifier for the slash command: e.g. MYFANCYADDON
    A common convention is ADDONNAME if you only have one slash command, or ADDONNAME_COMMANDNAME if you have multiple (where ADDONNAME is the name of your addon).
2.  Decide which slash commands you want to respond to: i.e. /myadd.
    You can select multiple alternatives for the same command -- allowing shorter or longer command names to be used in case of conflicts.
3.  Assign your selected slash commands to SLASH_MYFANCYADDON1, SLASH_MYFANCYADDON2, etc global variables.
4.  Write a slash command handler function (taking (msg, editBox) as arguments), and place assign it to SlashCmdList\["MYFANCYADDON"\].

Here is a simple example that can be placed anywhere in a Lua file:

    -- 1. Pick HELLOWORLD as the unique identifier.
    -- 2. Pick /hiw and /hellow as slash commands (/hi and /hello are actual emotes)
    SLASH_HELLOWORLD1, SLASH_HELLOWORLD2 = '/hiw', '/hellow'; -- 3.
    function SlashCmdList.HELLOWORLD(msg, editBox) -- 4.
        print("Hello, World!");
    end

## Parsing Arguments

If the user types **/yourcmd someargs** into chat, the function handling **/yourcmd** is passed "someargs" as the first argument (the second being the edit box widget into which the slash command was typed). Your handler function can then choose to act on that argument string. For simple slash commands, comparisons to pre-determined strings may be sufficient: suppose we wanted to modify the "Hello, World!" example above to display a different string if the command was passed an argument (say **/hiw bye**):

    SLASH_HELLOWORLD1, SLASH_HELLOWORLD2 = '/hiw', '/hellow';
    local function handler(msg, editBox)
        if msg == 'bye' then
            print('Goodbye, World!')
        else
            print("Hello, World!")
        end
    end
    SlashCmdList["HELLOWORLD"] = handler; -- Also a valid assignment strategy

More complex slash commands may wish to use [Pattern matching](https://warcraft.wiki.gg/wiki/Pattern_matching "Pattern matching") to parse the arguments string:

    local function handler(msg, editBox)
        local command, rest = msg:match("^(%S*)%s*(.-)$")
        -- Any leading non-whitespace is captured into command
        -- the rest (minus leading whitespace) is captured into rest.
        if command == "add" and rest ~= "" then
            -- Handle adding of the contents of rest... to something.
        elseif command == "remove" and rest ~= "" then
            -- Handle removing of the contents of rest... to something.   
        else
            -- If not handled above, display some sort of help message
            print("Syntax: /yourcmd (add|remove) someIdentifier")
        end
    end

## Notes

- Default UI commands often have precedence over addon-created slash commands. There is no defined precedence order for addon-created commands, so conflicts caused by multiple addons attempting to use the same slash command will resolve non-deterministically.
  - If the unique command identifier (the key in SlashCmdList) conflicts between multiple addons, the addon that executes the assignment last will own the slash command.
- Command identifiers are generally all caps, with underscores if necessary. These can also contain lowercase characters.
  - The actual **SLASH\_*\<CommandId\>'****\<Number\>* **values should be localizable if you plan on your addon being translated, but the command ID will remain the same.**
- Be prudent about how many aliases you make for your command, and try and pick something that's unlikely to collide with someone else's (including Blizzard's!)
- There's a second parameter passed to the slash command handler functions that is rarely used. It is the chat frame edit box frame that the slash command originated from.

&nbsp;

    SLASH_BLAH1 = "/blah"
    SlashCmdList["BLAH"] = function(msg, editBox)
        -- change the text on the editBox.
        editBox:Show()
        editBox:SetText("Blah blah blah!")
    end

- If you want to set your slash command handler function to a method of an object, you will need to encapsulate the call to it inside a dummy function.

&nbsp;

    function SomeObject:SlashHandler(msg, editBox)
        -- do stuff
    end
    SLASH_BLAH1 = "/blah"
    SlashCmdList["BLAH"] = function(msg, editBox)
        SomeObject:SlashHandler(msg, editBox)
    end

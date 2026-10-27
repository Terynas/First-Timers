# Saving variables between game sessions

> Source: <https://warcraft.wiki.gg/wiki/Saving_variables_between_game_sessions> (Warcraft Wiki, CC BY-SA). Re-run sync.sh to refresh.

[TABLE]

An addon may need to save settings and data between game sessions - that is, some information may need to persist through a user log out. To enable this, the addons may specify a number of variables to be saved to disk when the player's character logs out of the game, and restored when the character logs back in. Variables that are saved and restored by the client are called SavedVariables.

**Summary:** to save a global variable `FOOBAR`, add `##SavedVariables: FOOBAR` or `##SavedVariablesPerCharacter: FOOBAR` to an addon's .toc file.

## Contents

- [1 Specifying which variables to save](#Specifying_which_variables_to_save)
- [2 The loading process](#The_loading_process)
- [3 Saving to disk](#Saving_to_disk)
- [4 Code example](#Code_example)
  - [4.1 HaveWeMet\HaveWeMet.toc](#HaveWeMet\HaveWeMet.toc)
  - [4.2 HaveWeMet\HaveWeMet.lua](#HaveWeMet\HaveWeMet.lua)
- [5 Common pitfalls](#Common_pitfalls)
- [6 Storage](#Storage)

## Specifying which variables to save

To tell the WoW client that you want a variable to persist through log out, you need to add it to your addon's .toc file. There are two directives you may add to your .toc file, both should be followed by a colon and a comma-delimited list of variable names in the global environment (for most addons, this means variables that haven't been defined using the **local** keyword) that the addon wants to persist.

`##SavedVariables`  
Variables listed after this directive are saved on a per-account basis: if any of the characters on that account logs in, those variables will be restored. This may be more useful for global addon settings, or addons that implement profiles one can freely switch between.

`##SavedVariablesPerCharacter`  
Variables listed after this directive are saved on a per-character basis: a separate copy of the variable is stored and restored for each character. This may be more useful for simple per-character options or history data.

## The loading process

The variables saved by those directives are not immediately available when your addon loads; instead, they're loaded at a later point. The client fires events to let addons know that their saved variables were loaded.

1.  WoW FrameXML code is loaded and executed.
2.  Addon code is loaded and executed.
3.  Saved variables for one addon a time are loaded and executed, then [`ADDON_LOADED`](https://warcraft.wiki.gg/wiki/Event:ADDON_LOADED "Event:ADDON LOADED") event is fired for that addon.
4.  [`PLAYER_LOGIN`](https://warcraft.wiki.gg/wiki/Event:PLAYER_LOGIN "Event:PLAYER LOGIN") fires once all non-load-on-demand addons have been loaded and the player is completely logged into the game.

Addons should generally use `ADDON_LOADED` to initialize their saved variables; the first argument of the event is the name of the addon for which it is being fired.

## Saving to disk

The client automatically writes the values of the the variables you list in your .toc file to disk when you log out, disconnect, quit the game, or reload your user interface (`/reload`).

If an addon needs to make last-minute changes before the variables are saved, use the [`PLAYER_LOGOUT`](https://warcraft.wiki.gg/wiki/Event:PLAYER_LOGOUT "Event:PLAYER LOGOUT") event: it fires just before the character logs out, and is the last event before your saved variables are written to disk.

## Code example

To illustrate the concepts, let's consider a simple addon, HaveWeMet, shown below. The greets your characters when you log on: if it's seen you log into that character before, it outputs "Hello again, \<Character Name\>", and it if has not, it outputs "Hi; what is your name?" to the chat frame. When its slash command, **/hwm**, is used, it tells the player how many characters it has met before.

There are two pieces of information that need to persist between sessions: the number of characters the addon has met, and whether it has met any particular character. To save the count, a global variable, `HaveWeMetCount` is used (and saved on a per-account basis through \#SavedVariables); while `HaveWeMetLastSeen` is saved per-character and used to determine whether the addon has seen *this* character before. When the addon is loaded for the first time, the `HaveWeMetCount` variable will be `nil` after [ADDON_LOADED](https://warcraft.wiki.gg/wiki/Event:ADDON_LOADED "Event:ADDON LOADED") (assuming no other addon overwrites the global); similarly, when a character previously unknown to the addon is encountered, `HaveWeMetLastSeen` will be `nil`.

### HaveWeMet\HaveWeMet.toc

    ## Interface: 120105
    ## Title: Have We Met?
    ## SavedVariables: HaveWeMetCount
    ## SavedVariablesPerCharacter: HaveWeMetLastSeen
    HaveWeMet.lua

### HaveWeMet\HaveWeMet.lua

    local frame = CreateFrame("Frame")
    frame:RegisterEvent("ADDON_LOADED")
    frame:RegisterEvent("PLAYER_LOGOUT")

    frame:SetScript("OnEvent", function(self, event, arg1)
        if event == "ADDON_LOADED" and arg1 == "HaveWeMet" then
            -- Our saved variables, if they exist, have been loaded at this point.
            if HaveWeMetCount == nil then
                -- This is the first time this addon is loaded; set SVs to default values
                HaveWeMetCount = 0
            end

            if HaveWeMetLastSeen == nil then
                -- Haven't yet seen this character, so increment the number of characters met
                HaveWeMetCount = HaveWeMetCount + 1
                print("Hi; what is your name?")
            else
                local name, elapsed = UnitName("player"), time() - HaveWeMetLastSeen
                print("Hello again, " .. name .. "; you've been gone for " .. SecondsToTime(elapsed))
            end

        elseif event == "PLAYER_LOGOUT" then
                -- Save the time at which the character logs out
                HaveWeMetLastSeen = time()
        end
    end)

    SLASH_HAVEWEMET1 = "/hwm"
    function SlashCmdList.HAVEWEMET(msg)
        print("HaveWeMet has met " .. HaveWeMetCount .. " of your characters.")
    end

## Common pitfalls

There are a few common issues beginners may experience:

Saved variables are loaded after the addon code is executed  
They cannot be accessed immediately, and will overwrite any "defaults" the addon may place in the global environment during its loading process.

Only some variable types may be saved  
Strings, booleans, numbers and tables are the only variable types that will be saved (functions, userdata and coroutines will not). Circular references in tables may not be preserved.

Saving tables  
Tables are a *great* way to avoid having to use a large number of names in the global namespace. However, they may be more difficult to initialize to default values when your addon is updated and you add or remove a key. Multiple saved variables that reference the same table will each create a separate (but identical) instance of the table, and as such will no longer point to the same table when they are loaded again.

Variables are saved and loaded in the *global* environment  
If you want to save a local value, you have to first read it from the global environment (\_G table) on ADDON_LOADED, then return it into the global environment before the player logs out.

## Storage

Saved variables are stored on a per-account basis in three file classes:

- `WTF\Account\ACCOUNTNAME\SavedVariables.lua` - Blizzard's saved variables.
- `WTF\Account\ACCOUNTNAME\SavedVariables\AddOnName.lua` - Per-account settings for each individual AddOn.
- `WTF\Account\ACCOUNTNAME\RealmName\CharacterName\SavedVariables\AddOnName.lua` - Per-character settings for each individual AddOn.

Deleting or renaming the WTF folder will reset the settings of all of your addons.

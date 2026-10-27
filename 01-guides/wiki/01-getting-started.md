# Create a WoW AddOn in 15 Minutes

> Source: <https://warcraft.wiki.gg/wiki/Getting_started_with_writing_AddOns> (Warcraft Wiki, CC BY-SA). Re-run sync.sh to refresh.

[TABLE]

This guide describes how to make a simple HelloWorld addon, use slash commands and store user settings.

## Contents

- [1 Getting started](#Getting_started)
- [2 Hello World](#Hello_World)
  - [2.1 Running scripts](#Running_scripts)
  - [2.2 Creating an AddOn](#Creating_an_AddOn)
- [3 Development tips](#Development_tips)
- [4 Responding to events](#Responding_to_events)
  - [4.1 Handling multiple events](#Handling_multiple_events)
- [5 Slash commands](#Slash_commands)
- [6 SavedVariables](#SavedVariables)
- [7 Options Panel](#Options_Panel)
- [8 AddOn namespace](#AddOn_namespace)
- [9 Conclusion](#Conclusion)

## Getting started

- You need a basic understanding of Lua, otherwise see [Introduction to Lua](https://warcraft.wiki.gg/wiki/Introduction_to_Lua "Introduction to Lua") or other tutorials.
- A simple text editor like [VS Code](https://code.visualstudio.com/) or [Notepad++](https://notepad-plus-plus.org/).

## Hello World

### Running scripts

You can execute Lua scripts from the chat window or in a macro with the `/run` or [/script](https://warcraft.wiki.gg/wiki/MACRO_script "MACRO script") command. There is no difference between them.

    /run print("Hello World!")

*To quickly turn scripts like this into an addon, just remove the "/run" part and paste it into [https://addon.bool.no/](https://addon.bool.no/)*

### Creating an AddOn

An addon consists of Lua/XML files and a [TOC](https://warcraft.wiki.gg/wiki/TOC_format "TOC format") file. We won't be using [XML](https://warcraft.wiki.gg/wiki/XML "XML") since most things that are possible in XML can also be done in Lua.

Go to your AddOns folder and create a new folder with the following files:  
`World of Warcraft\_retail_\Interface\AddOns\HelloWorld`

**HelloWorld.lua**

    print("Hello World!")

**HelloWorld.toc**

    ## Interface: 120105
    ## Version: 1.0.0
    ## Title: Hello World
    ## Notes: My first addon
    ## Author: YourName

    HelloWorld.lua

- ❗The name of the TOC file *must* match the folder name or the addon won't be detected by the game.
- The TOC Interface metadata `120105` as returned by [GetBuildInfo](https://warcraft.wiki.gg/wiki/API:GetBuildInfo "API:GetBuildInfo")() tells which [version](https://warcraft.wiki.gg/wiki/TOC_format#Interface_version "TOC format") of the game the addon was made for. If they don't match then the addon will be marked out-of-date in the addon list.

Load up World of Warcraft, the addon should show up in the addon list and greet you upon login.

- [![VS Code](/images/thumb/Tutorial_CreateAddOn_2.png/120px-Tutorial_CreateAddOn_2.png?5ed71d)](https://warcraft.wiki.gg/wiki/File:Tutorial_CreateAddOn_2.png "VS Code")

  VS Code

- [![AddOn List](/images/thumb/Tutorial_CreateAddOn_3.png/120px-Tutorial_CreateAddOn_3.png?118509)](https://warcraft.wiki.gg/wiki/File:Tutorial_CreateAddOn_3.png "AddOn List")

  AddOn List

- [![In-game](/images/thumb/Tutorial_CreateAddOn_4.png/120px-Tutorial_CreateAddOn_4.png?49a151)](https://warcraft.wiki.gg/wiki/File:Tutorial_CreateAddOn_4.png "In-game")

  In-game

## Development tips

- When updating addon code use [/reload](https://warcraft.wiki.gg/wiki/MACRO_reload "MACRO reload") to test the new changes, you may want to put it on a macro hotkey; as well as temporarily disabling any unnecessary addons that would increase loading time.
- Get an error reporting addon like [BugSack](https://www.curseforge.com/wow/addons/bugsack) or turn on `/console scriptErrors 1`
- There is the [/dump](https://warcraft.wiki.gg/wiki/MACRO_dump "MACRO dump") slash command for general debugging, [/etrace](https://warcraft.wiki.gg/wiki/MACRO_eventtrace "MACRO eventtrace") for showing events and [/fstack](https://warcraft.wiki.gg/wiki/MACRO_framestack "MACRO framestack") for debugging visible UI elements.
- [Export](https://warcraft.wiki.gg/wiki/Viewing_Blizzard%27s_interface_code "Viewing Blizzard's interface code"), [clone](https://github.com/git-guides/git-clone), download or [bookmark](https://github.com/Gethe/wow-ui-source) Blizzard's user interface code a.k.a. the FrameXML. If you don't know what a specific API does it's best to just reference it in FrameXML. Not everything is documented so we generally [look](https://code.visualstudio.com/docs/editor/codebasics#_search-across-files) through the code from Blizzard or other addons.
- For VS Code the [Lua extension](https://marketplace.visualstudio.com/items?itemName=sumneko.lua) by Sumneko adds [IntelliSense](https://code.visualstudio.com/docs/editor/intellisense) features like code completion.

## Responding to events

*Main article: [Handling events](https://warcraft.wiki.gg/wiki/Handling_events "Handling events")*

Almost every action in the game is an [Event](https://warcraft.wiki.gg/wiki/Events "Events") which tells the UI that something happened. For example [CHAT_MSG_CHANNEL](https://warcraft.wiki.gg/wiki/Event:CHAT_MSG_CHANNEL "Event:CHAT MSG CHANNEL") fires when someone sends a message in a chat channel like *General* and *Trade*.

To respond to events you create a frame with [CreateFrame](https://warcraft.wiki.gg/wiki/API:CreateFrame "API:CreateFrame")() and register the events to it with [ScriptObject:SetScript](https://warcraft.wiki.gg/wiki/API:ScriptObject_SetScript?action=edit&redlink=1 "API:ScriptObject SetScript (page does not exist)").

[![](/images/thumb/Tutorial_CreateAddOn_5.png/320px-Tutorial_CreateAddOn_5.png?269dcd)](https://warcraft.wiki.gg/wiki/File:Tutorial_CreateAddOn_5.png)

[](https://warcraft.wiki.gg/wiki/File:Tutorial_CreateAddOn_5.png "Enlarge")

Event payload in the chat window and [/etrace](https://warcraft.wiki.gg/wiki/MACRO_eventtrace "MACRO eventtrace")

    local function OnEvent(self, event, ...)
        print(event, ...)
    end

    local f = CreateFrame("Frame")
    f:RegisterEvent("CHAT_MSG_CHANNEL")
    f:SetScript("OnEvent", OnEvent)

Another example is to play a sound on levelup with [PlaySoundFile](https://warcraft.wiki.gg/wiki/API:PlaySoundFile "API:PlaySoundFile")() or [PlayMusic](https://warcraft.wiki.gg/wiki/API:PlayMusic "API:PlayMusic")() by registering for the [PLAYER_LEVEL_UP](https://warcraft.wiki.gg/wiki/Event:PLAYER_LEVEL_UP "Event:PLAYER LEVEL UP") event.

    local f = CreateFrame("Frame")
    f:RegisterEvent("PLAYER_LEVEL_UP")
    f:SetScript("OnEvent", function()
        PlayMusic(642322) -- sound/music/pandaria/mus_50_toast_b_hero_01.mp3
    end)

### Handling multiple events

When registering multiple events it can be messy if there are a lot of them.

    local function OnEvent(self, event, ...)
        if event == "ADDON_LOADED" then
            local addOnName = ...
            print(event, addOnName)
        elseif event == "PLAYER_ENTERING_WORLD" then
            local isLogin, isReload = ...
            print(event, isLogin, isReload)
        elseif event == "CHAT_MSG_CHANNEL" then
            local text, playerName, _, channelName = ...
            print(event, text, playerName, channelName)
        end
    end

    local f = CreateFrame("Frame")
    f:RegisterEvent("ADDON_LOADED")
    f:RegisterEvent("PLAYER_ENTERING_WORLD")
    f:RegisterEvent("CHAT_MSG_CHANNEL")
    f:SetScript("OnEvent", OnEvent)

Which can be refactored to this:

    local f = CreateFrame("Frame")

    function f:OnEvent(event, ...)
        self[event](self, event, ...)
    end

    function f:ADDON_LOADED(event, addOnName)
        print(event, addOnName)
    end

    function f:PLAYER_ENTERING_WORLD(event, isLogin, isReload)
        print(event, isLogin, isReload)
    end

    function f:CHAT_MSG_CHANNEL(event, text, playerName, _, channelName)
        print(event, text, playerName, channelName)
    end

    f:RegisterEvent("ADDON_LOADED")
    f:RegisterEvent("PLAYER_ENTERING_WORLD")
    f:RegisterEvent("CHAT_MSG_CHANNEL")
    f:SetScript("OnEvent", f.OnEvent)

📝 *Note: We won't use this in our further examples, but knowing this is useful when your addon gets bigger.*

## Slash commands

*Main article: [Creating a slash command](https://warcraft.wiki.gg/wiki/Creating_a_slash_command "Creating a slash command")*

*FrameXML: [RegisterNewSlashCommand()](https://github.com/Gethe/wow-ui-source/blob/9.1.5/Interface/FrameXML/ChatFrame.lua#L2657)*

Slash commands are an easy way to let users interact with your addon. Any `SLASH_*` globals will automatically be registered as a slash command.

[![](/images/Tutorial_CreateAddOn_6.png?c47abe)](https://warcraft.wiki.gg/wiki/File:Tutorial_CreateAddOn_6.png)

[](https://warcraft.wiki.gg/wiki/File:Tutorial_CreateAddOn_6.png "Enlarge")

Using a slash command

    -- increment the index for each slash command
    SLASH_HELLOWORLD1 = "/helloworld"
    SLASH_HELLOWORLD2 = "/hw"

    -- define the corresponding slash command handler
    SlashCmdList.HELLOWORLD = function(msg, editBox)
        local name1, name2 = strsplit(" ", msg)
        if #name1 > 0 then -- check for empty string
            print(format("hello %s and also %s", name1, name2 or "Carol"))
        else
            print("Please give at least one name")
        end
    end

We can also add a shorter /reload command.

    SLASH_NEWRELOAD1 = "/rl"
    SlashCmdList.NEWRELOAD = ReloadUI

## SavedVariables

*Main article: [Saving variables between game sessions](https://warcraft.wiki.gg/wiki/Saving_variables_between_game_sessions "Saving variables between game sessions")*

To store data or save user settings, set the `SavedVariables` in the [TOC](https://warcraft.wiki.gg/wiki/TOC_format#Loading_conditions "TOC format") which will persist between sessions. You can /reload instead of restarting the game client when updating the TOC file.

    ## Interface: 120105
    ## Version: 1.0.0
    ## Title: Hello World
    ## Notes: My first addon
    ## Author: YourName
    ## SavedVariables: HelloWorldDB

    HelloWorld.lua

SavedVariables are only accessible once the respective [ADDON_LOADED](https://warcraft.wiki.gg/wiki/Event:ADDON_LOADED "Event:ADDON LOADED") event fires. This example prints how many times you logged in (or reloaded) with the addon enabled.

    local function OnEvent(self, event, addOnName)
        if addOnName == "HelloWorld" then -- name as used in the folder name and TOC file name
            HelloWorldDB = HelloWorldDB or {} -- initialize it to a table if this is the first time
            HelloWorldDB.sessions = (HelloWorldDB.sessions or 0) + 1
            print("You loaded this addon "..HelloWorldDB.sessions.." times")  
        end
    end

    local f = CreateFrame("Frame")
    f:RegisterEvent("ADDON_LOADED")
    f:SetScript("OnEvent", OnEvent)

This example initializes the SavedVariables with default values. It also updates the DB when new keys are added to the defaults table.  
The [CopyTable()](https://www.townlong-yak.com/framexml/live/go/CopyTable) function is defined in FrameXML. [GetBuildInfo](https://warcraft.wiki.gg/wiki/API:GetBuildInfo "API:GetBuildInfo")() is an API function.

    local defaults = {
        sessions = 0,
        someOption = true,
        --someNewOption = "banana",
    }

    local function OnEvent(self, event, addOnName)
        if addOnName == "HelloWorld" then
            HelloWorldDB = HelloWorldDB or {}
            self.db = HelloWorldDB -- makes it more readable and generally a good practice
            for k, v in pairs(defaults) do -- copy the defaults table and possibly any new options
                if self.db[k] == nil then
                    self.db[k] = v
                end
            end
            self.db.sessions = self.db.sessions + 1
            print("You loaded this addon "..self.db.sessions.." times")
            print("someOption is", self.db.someOption)

            local version, build, _, tocversion = GetBuildInfo()
            print(format("The current WoW build is %s (%d) and TOC is %d", version, build, tocversion))
        end
    end

    local f = CreateFrame("Frame")
    f:RegisterEvent("ADDON_LOADED")
    f:SetScript("OnEvent", OnEvent)

    SLASH_HELLOWORLD1 = "/hw"
    SLASH_HELLOWORLD2 = "/helloworld"

    SlashCmdList.HELLOWORLD = function(msg, editBox)
        if msg == "reset" then
            HelloWorldDB = CopyTable(defaults) -- reset to defaults
            f.db = HelloWorldDB 
            print("DB has been reset to default")
        elseif msg == "toggle" then
            f.db.someOption = not f.db.someOption
            print("Toggled someOption to", f.db.someOption)
        end
    end

Tips for troubleshooting tables:

- These examples show the contents of a (global) table.

    /dump HelloWorldDB
    /tinspect HelloWorldDB
    /run for k, v in pairs(HelloWorldDB) do print(k, v) end

- These examples empty the table, as in removing its contents.

    /run wipe(HelloWorldDB)
    /run for k in pairs(HelloWorldDB) do HelloWorldDB[k] = nil; end

- This essentially resets your savedvariables.

    /run HelloWorldDB = nil; ReloadUI()

## Options Panel

*Main article: [Using the Interface Options Addons panel](https://warcraft.wiki.gg/wiki/Using_the_Interface_Options_Addons_panel "Using the Interface Options Addons panel")*

This final example provides a graphical user interface which is opened with the `/hw` slash command. It includes an option to print a message when you jump.

FrameXML:

- [InterfaceOptionsCheckButtonTemplate](https://github.com/Gethe/wow-ui-source/blob/9.1.5/Interface/FrameXML/InterfaceOptionsPanels.xml#L19)
- [UIPanelButtonTemplate](https://github.com/Gethe/wow-ui-source/blob/9.1.5/Interface/SharedXML/SharedUIPanelTemplates.xml#L414)

[![](/images/thumb/Tutorial_CreateAddOn_8.png/320px-Tutorial_CreateAddOn_8.png?a1b3be)](https://warcraft.wiki.gg/wiki/File:Tutorial_CreateAddOn_8.png)

[](https://warcraft.wiki.gg/wiki/File:Tutorial_CreateAddOn_8.png "Enlarge")

Minimal example

[![](/images/thumb/Tutorial_CreateAddOn_7.png/320px-Tutorial_CreateAddOn_7.png?cf8825)](https://warcraft.wiki.gg/wiki/File:Tutorial_CreateAddOn_7.png)

[](https://warcraft.wiki.gg/wiki/File:Tutorial_CreateAddOn_7.png "Enlarge")

Multiple options with reset button

[![Note](/images/Icon-information-22x22.png?81245f)](https://warcraft.wiki.gg/wiki/File:Icon-information-22x22.png "Note")

**Note:** This example is up to date for patch 11.0.7

    local f = CreateFrame("Frame")

    local defaults = {
        someOption = true,
    }

    function f:OnEvent(event, addOnName)
        if addOnName == "HelloWorld" then
            HelloWorldDB = HelloWorldDB or CopyTable(defaults)
            self.db = HelloWorldDB
            self:InitializeOptions()
            hooksecurefunc("JumpOrAscendStart", function()
                if self.db.someOption then
                    print("Your character jumped.")
                end
            end)
        end
    end

    f:RegisterEvent("ADDON_LOADED")
    f:SetScript("OnEvent", f.OnEvent)

    function f:InitializeOptions()
        self.panel = CreateFrame("Frame")
        self.panel.name = "HelloWorld"

        local cb = CreateFrame("CheckButton", nil, self.panel, "InterfaceOptionsCheckButtonTemplate")
        cb:SetPoint("TOPLEFT", 20, -20)
        cb.Text:SetText("Print when you jump")
        -- there already is an existing OnClick script that plays a sound, hook it
        cb:HookScript("OnClick", function(_, btn, down)
            self.db.someOption = cb:GetChecked()
        end)
        cb:SetChecked(self.db.someOption)

        local btn = CreateFrame("Button", nil, self.panel, "UIPanelButtonTemplate")
        btn:SetPoint("TOPLEFT", cb, 0, -40)
        btn:SetText("Click me")
        btn:SetWidth(100)
        btn:SetScript("OnClick", function()
            print("You clicked me!")
        end)

        local cat = Settings.RegisterCanvasLayoutCategory(self.panel, self.panel.name, self.panel.name);
        cat.ID = self.panel.name
        Settings.RegisterAddOnCategory(cat)
    end

    SLASH_HELLOWORLD1 = "/hw"
    SLASH_HELLOWORLD2 = "/helloworld"

    SlashCmdList.HELLOWORLD = function(msg, editBox)
        Settings.OpenToCategory(f.panel.name)
    end

This reference example has a couple of checkboxes (with related functionality) and a reset button.

[TABLE]

## AddOn namespace

*Main article: [Using the AddOn namespace](https://warcraft.wiki.gg/wiki/Using_the_AddOn_namespace "Using the AddOn namespace")*

For bigger addons it's a good practice to divide your logic into multiple files, e.g. a file for options and another file for handling events.

The addon namespace is a private table shared between Lua files in the same addon. This way you can keep things tidy and avoid leaking variables to the global environment.

**HelloWorld.toc**

    ## Interface: 120105
    ## Version: 1.0.0
    ## Title: Hello World
     
    FileA.lua
    FileB.lua

**FileA.lua**

- Note that the underscore "\_" here is a [throwaway variable](https://stackoverflow.com/a/34476033/1297035) when we don't really care about it.

    local _, ns = ...
    ns.foo = "Banana"

**FileB.lua**

    local addonName, ns = ...
    print(addonName, ns.foo) -- prints "HelloWorld" and "Banana"

## Conclusion

If you want to cheat and rather start with a complete example it's available here in [ketho-wow/HelloWorld](https://github.com/ketho-wow/HelloWorld/releases)

You should now be able to write a simple addon from scratch! Addons can be published on [CurseForge](https://www.curseforge.com/project/1/1/create) ([guide](https://support.curseforge.com/en/support/solutions/articles/9000197241-creating-and-submitting-a-project)), [WoWInterface](https://www.wowinterface.com/downloads/upload-update.php) ([guide](https://www.wowinterface.com/forums/faq.php?faq=managing#faq_upload)) and/or [wago.io](https://addons.wago.io/).

➡️ Follow-up: [Ace3 for Dummies](https://warcraft.wiki.gg/wiki/Ace3_for_Dummies "Ace3 for Dummies")

  
**See also**

- [MMO-Champion: Creating Your Own WoW Addon](https://www.mmo-champion.com/threads/817817-Creating-Your-Own-WoW-Addon)

![YouTube](/images/thumb/ElinkIcon-youtube.png/22px-ElinkIcon-youtube.png?cf8cd2 "YouTube") [Mayron: Creating WoW AddOns](https://www.youtube.com/playlist?list=PL3wt7cLYn4N-3D3PTTUZBM2t1exFmoA2G) 

![YouTube](/images/thumb/ElinkIcon-youtube.png/22px-ElinkIcon-youtube.png?cf8cd2 "YouTube") [Paul Halliday: World of Warcraft AddOn Development](https://www.youtube.com/playlist?list=PLtKjv92L0ihCEwnh3jNifgGaZ6KxKV9AW) 

  
**Patch changes**

- [![Dragonflight](/images/thumb/Dragonflight-Icon-Inline.png/48px-Dragonflight-Icon-Inline.png?be4c0e)](https://warcraft.wiki.gg/wiki/World_of_Warcraft:_Dragonflight "Dragonflight") **[Patch 10.0.0](https://warcraft.wiki.gg/wiki/Patch_10.0.0/API_changes "Patch 10.0.0/API changes") (2022-10-25):** `InterfaceOptionsFrame_OpenToCategory` was replaced by [Settings.OpenToCategory](https://github.com/Gethe/wow-ui-source/blob/10.0.0/Interface/SharedXML/Settings/Blizzard_Deprecated.lua#L24).   

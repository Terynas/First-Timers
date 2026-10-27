# TOC format

> Source: <https://warcraft.wiki.gg/wiki/TOC_format> (Warcraft Wiki, CC BY-SA). Re-run sync.sh to refresh.

[TABLE]

## Contents

- [1 Rules](#Rules)
- [2 Naming](#Naming)
- [3 Variables](#Variables)
- [4 Inline directives](#Inline_directives)
- [5 Addon directives](#Addon_directives)
  - [5.1 Interface](#Interface)
  - [5.2 Displayed text and organization](#Displayed_text_and_organization)
    - [5.2.1 Title](#Title)
    - [5.2.2 Notes](#Notes)
    - [5.2.3 Category](#Category)
    - [5.2.4 Group](#Group)
  - [5.3 Displayed icons](#Displayed_icons)
    - [5.3.1 IconTexture](#IconTexture)
    - [5.3.2 IconAtlas](#IconAtlas)
  - [5.4 Addon compartment integration](#Addon_compartment_integration)
    - [5.4.1 AddonCompartmentFunc](#AddonCompartmentFunc)
    - [5.4.2 AddonCompartmentFuncOnEnter](#AddonCompartmentFuncOnEnter)
    - [5.4.3 AddonCompartmentFuncOnLeave](#AddonCompartmentFuncOnLeave)
  - [5.5 Loading conditions](#Loading_conditions)
    - [5.5.1 LoadOnDemand](#LoadOnDemand)
    - [5.5.2 Dependencies](#Dependencies)
    - [5.5.3 OptionalDeps](#OptionalDeps)
    - [5.5.4 LoadWith](#LoadWith)
    - [5.5.5 LoadManagers](#LoadManagers)
    - [5.5.6 AllowLoadGameType](#AllowLoadGameType)
    - [5.5.7 ExcludeLoadGameType](#ExcludeLoadGameType)
    - [5.5.8 OnlyBetaAndPTR](#OnlyBetaAndPTR)
    - [5.5.9 DefaultState](#DefaultState)
  - [5.6 Saved variables](#Saved_variables)
    - [5.6.1 LoadSavedVariablesFirst](#LoadSavedVariablesFirst)
    - [5.6.2 SavedVariables](#SavedVariables)
    - [5.6.3 SavedVariablesPerCharacter](#SavedVariablesPerCharacter)
  - [5.7 Metadata](#Metadata)
    - [5.7.1 Author](#Author)
    - [5.7.2 Version](#Version)
    - [5.7.3 X-\_\_\_](#X-)
  - [5.8 Uncategorized](#Uncategorized)
    - [5.8.1 AllowAddOnTableAccess](#AllowAddOnTableAccess)
  - [5.9 Restricted](#Restricted)
    - [5.9.1 AllowLoad](#AllowLoad)
    - [5.9.2 EscalateErrorDuringLoad](#EscalateErrorDuringLoad)
    - [5.9.3 LoadFirst](#LoadFirst)
    - [5.9.4 SavedVariablesMachine](#SavedVariablesMachine)
    - [5.9.5 UseSecureEnvironment](#UseSecureEnvironment)
- [6 Inline directives](#Inline_directives_2)
- [7 Patch changes](#Patch_changes)
  - [7.1 Modern](#Modern)
  - [7.2 Forever](#Forever)
  - [7.3 Classic Progression](#Classic_Progression)
  - [7.4 Classic Era](#Classic_Era)
  - [7.5 Classic Titan Reforged](#Classic_Titan_Reforged)
  - [7.6 Classic Anniversary](#Classic_Anniversary)
- [8 See also](#See_also)
- [9 References](#References)

TOC files are addon manifest files, they define the information, contents, metadata, and loading conditions and behaviour of addons.

Example TOC file:

    ## Interface: 120105
    ## Title: My AddOn Name
    ## Notes: Brief description about what My AddOn does to help people find it
    ## Version: 1.0.0

    # This line is a comment

    MyFrame.xml
    MyCode.lua
    lib\MyCode.lua
    anotherfolder\MoreCode.xml

## Rules

- The file extension suffix for TOC files is `.toc`.
- The TOC file and folder name must match.
  - Example: `\Interface\AddOns\AddOnName\AddOnName.toc`
- The TOC file can contain the following:
  - Directives as `##`` ``Directive``:`` ``Value`
  - Comments as `# this is a comment`
  - A list of files as `myFile.xml` or `subfolder\myFile.lua`
    - Only Lua and XML files need to be listed (not media such as images, fonts, and sounds).
    - Files are loaded sequentially from top to bottom.
    - XML files can also load files with [`Script`](https://warcraft.wiki.gg/wiki/XML/Script "XML/Script") or [`Include`](https://warcraft.wiki.gg/wiki/XML/Include "XML/Include") tags.
    - Backslashes (`\`) are recommended instead of forward slashes (`/`) for paths to prevent issues with [`Include`](https://warcraft.wiki.gg/wiki/XML/Include "XML/Include") tags.
    - Whitespace before `#` will be interpreted as the start of a filename, however, the client trims whitespace around metadata values (after the colon).
- The game reads up to the first 1024 characters of each line only.
  - Any additional characters are silently ignored.
- Newly created/added files (and even complete addons) are detected when doing a `/reload` after the game has started.
  - If you delete or rename a TOC file already loaded by the game you will however need a full game restart.

## Naming

Addons can ship multiple TOC files with different file name suffixes in order to load a different TOC for specific game types or their families.^([\[1\]](#cite_note-WoWUIBug#68-1))

The game first searches for TOC files with these suffixes (examples below), and if none are found to match its game type (or its aliases) it will default to `AddOnName.toc` without a suffix. Family suffixes have a lower priority; for example, having both `AddOnName_``Standard``.toc` and `AddOnName_``Mainline``.toc` will result in the former being used for Midnight, and the latter for all other Mainline-family game types.

![Note](/images/Icon-information-22x22.png?81245f "Note") **Note:** Comma-delimited [interface versions](#Interface) or [inline directives](#Inline_directives) should be preferred over the use of game type specific TOC files where possible.

Game type

Expansion/Mode

Suffix

Game suffixes \[[edit](https://warcraft.wiki.gg/wiki/Template:GameTypes?action=edit)\]

`standard`

[![Midnight](/images/thumb/Midnight-Petopia-Logo.png/40px-Midnight-Petopia-Logo.png?28a8f3)](https://warcraft.wiki.gg/wiki/World_of_Warcraft:_Midnight "Midnight")

[Midnight](https://warcraft.wiki.gg/wiki/Midnight "Midnight")

`AddOnName_``Standard``.toc`

`forever`  
`camelot`

[![World of Warcraft: Forever](/images/thumb/WoWForever-Icon.png/22px-WoWForever-Icon.png?443bd2)](https://warcraft.wiki.gg/wiki/World_of_Warcraft:_Forever "World of Warcraft: Forever")

[Forever](https://warcraft.wiki.gg/wiki/Forever "Forever")

`AddOnName_``Forever``.toc`  
`AddOnName_``Camelot``.toc`

`mists`

[![Mists of Pandaria](/images/Mists-Logo-Small.png?f96b23)](https://warcraft.wiki.gg/wiki/World_of_Warcraft:_Mists_of_Pandaria_Classic "Mists of Pandaria")

[Mists of Pandaria Classic](https://warcraft.wiki.gg/wiki/Mists_of_Pandaria_Classic "Mists of Pandaria Classic")

`AddOnName_``Mists``.toc`

`cata`

[![Cataclysm](/images/Cata-Logo-Small.png?cd16d8)](https://warcraft.wiki.gg/wiki/World_of_Warcraft:_Cataclysm_Classic "Cataclysm")

[Cataclysm Classic](https://warcraft.wiki.gg/wiki/Cataclysm_Classic "Cataclysm Classic")

`AddOnName_``Cata``.toc`

`wrath`

[![Wrath of the Lich King](/images/Wrath-Logo-Small.png?6705fd)](https://warcraft.wiki.gg/wiki/World_of_Warcraft:_Wrath_of_the_Lich_King_Classic "Wrath of the Lich King")

[Wrath of the Lich King Classic](https://warcraft.wiki.gg/wiki/Wrath_of_the_Lich_King_Classic "Wrath of the Lich King Classic") and [Titan Reforged](https://warcraft.wiki.gg/wiki/Titan_Reforged "Titan Reforged")

`AddOnName_``Wrath``.toc`

`tbc`

[![Burning Crusade](/images/Bc_icon.gif?6fe702)](https://warcraft.wiki.gg/wiki/World_of_Warcraft:_Burning_Crusade_Classic "Burning Crusade")

Burning Crusade [Classic](https://warcraft.wiki.gg/wiki/Burning_Crusade_Classic "Burning Crusade Classic") & [Classic Anniversary Edition](https://warcraft.wiki.gg/wiki/Burning_Crusade_Classic_Anniversary_Edition "Burning Crusade Classic Anniversary Edition")

`AddOnName_``TBC``.toc`

`vanilla`

[![World of Warcraft: Classic](/images/WoW_Icon_Classic.png?251bc2)](https://warcraft.wiki.gg/wiki/World_of_Warcraft:_Classic "World of Warcraft: Classic")

[Classic Eras](https://warcraft.wiki.gg/wiki/Classic#Eras "Classic") before expansions

`AddOnName_``Vanilla``.toc`

`plunderstorm`

[![Midnight](/images/thumb/Midnight-Petopia-Logo.png/40px-Midnight-Petopia-Logo.png?28a8f3)](https://warcraft.wiki.gg/wiki/World_of_Warcraft:_Midnight "Midnight")

[Plunderstorm](https://warcraft.wiki.gg/wiki/Plunderstorm "Plunderstorm")

`AddOnName_``Plunderstorm``.toc`  
`AddOnName_``WoWLabs``.toc`

`wowhack`

[![Midnight](/images/thumb/Midnight-Petopia-Logo.png/40px-Midnight-Petopia-Logo.png?28a8f3)](https://warcraft.wiki.gg/wiki/World_of_Warcraft:_Midnight "Midnight")

[Talebound](https://warcraft.wiki.gg/wiki/Talebound "Talebound")

`AddOnName_``WoWHack``.toc`

 

Family

Games

Suffix

Family suffixes \[[edit](https://warcraft.wiki.gg/wiki/Template:GameTypes?action=edit)\]

`mainline`

`standard`, `forever`, `camelot`, `plunderstorm`, `wowhack`

`AddOnName_``Mainline``.toc`

`classic`

`vanilla`, `tbc`, `wrath`, `cata`, `mists`

`AddOnName_``Classic``.toc`

## Variables

TOC files support the use of variable expansions for files. They use the syntax `[``Variable``]`, and can appear anywhere in a line.

Family  
Expands to a game type family (e.g., Mainline, or Classic) based on the client's game type.

Game  
Expands to a game type (e.g., Standard, Vanilla, Camelot^([\[note 1\]](#cite_note-2)), TBC, Wrath, or Mists) based on the client's game type.

TextLocale  
Expands to a locale based on the client's configured text locale (e.g., enUS, deDE, or frFR).

RegionalTextLocale  
✔︎ **Only supported in:** [![Midnight](/images/thumb/Midnight-Petopia-Logo.png/40px-Midnight-Petopia-Logo.png?28a8f3)](https://warcraft.wiki.gg/wiki/World_of_Warcraft:_Midnight "Midnight") *[Midnight](https://warcraft.wiki.gg/wiki/World_of_Warcraft:_Midnight "World of Warcraft: Midnight")* [12.1.7](https://warcraft.wiki.gg/wiki/12.1.7 "12.1.7") and [![World of Warcraft: Forever](/images/thumb/WoWForever-Icon.png/22px-WoWForever-Icon.png?443bd2)](https://warcraft.wiki.gg/wiki/World_of_Warcraft:_Forever "World of Warcraft: Forever") *[Forever](https://warcraft.wiki.gg/wiki/World_of_Warcraft:_Forever "World of Warcraft: Forever")*.

Expands to a region specific locale based on the client's configured text locale and region (e.g., enGB and ptPT in the EU region vs enUS and ptBR in the NA region).

 

1.  [^](#cite_ref-2) The Camelot value may be changed to Forever in the future.

    ## Interface: 120105
    ## Title: My Cool AddOn
    ## Notes: My addon is working.

    # This will load "Mainline\File.lua" or "Classic\File.lua"
    # as appropriate for the client.
    [Family]\File.lua

    # This will load "Standard\File.lua", "Mists\File.lua", "Cata\File.lua", ...
    # as appropriate for the client.
    [Game]\File.lua

    # This will load "Localization\enUS.lua", "Localization\frFR.lua", ...
    # as appropriate for the client text locale.
    Localization\[TextLocale].lua

## Inline directives

TOC files support the inline use of directives which define the conditions under or behaviour with which their corresponding addon directive or file will apply. They use the syntax `[``Directive``]` or `[``Directive`` ``value``]` with case insensitive values. Multiple inline directives can be used per line, and can appear anywhere in a line.

![Note](/images/Icon-information-22x22.png?81245f "Note") **Note:** For reasons of compatibility, inline directives should generally only ever be used at the end of a line.

The following directives are supported inline:

AllowLoad  
Restricts the addon directive or file to in-game (Game), glue screen (Glue), or both (Both) environments.

![Note](/images/Icon-information-22x22.png?81245f "Note") **Note:** Functionally inoperable for addons, as only Blizzard addons are loaded within the glue screen environment.

AllowLoadGameType  
Restricts the addon directive or file to one or multiple specific game types, delimited by commas.

The possible values are the same as used by the [AllowLoadGameType directive](#AllowLoadGameType).

![Warning](/images/Icon-warning-22x22.png?61f799 "Warning") **Warning:** If at least 1 game type is specified and none of the game types are recognized by the client, the condition will still be satisfied. For this reason, you should additionally use ExcludeLoadGameType inline to exclude game types that are not universally recognized yet.

ExcludeLoadGameType  
Similar to `[``AllowLoadGameType`` ``...``]`, but restricts the addon directive or file to the game type(s) not listed.

AllowLoadTextLocale  
Restricts the addon directive or file to one or more specific client text locales, delimited by commas.

The possible values are the same as returned by [GetLocale](https://warcraft.wiki.gg/wiki/API:GetLocale "API:GetLocale"), eg. "enUS" and "frFR".

AllowLoadEnvironment  
Restricts the addon directive or file to the global (Global) or secure (Secure) environment.

![Note](/images/Icon-information-22x22.png?81245f "Note") **Note:** Functionally inoperable for addons, as only Blizzard addons are loaded within the secure environment.

Bootstrap  
✔︎ **Only supported in:** [![Midnight](/images/thumb/Midnight-Petopia-Logo.png/40px-Midnight-Petopia-Logo.png?28a8f3)](https://warcraft.wiki.gg/wiki/World_of_Warcraft:_Midnight "Midnight") *[Midnight](https://warcraft.wiki.gg/wiki/World_of_Warcraft:_Midnight "World of Warcraft: Midnight")* and [![World of Warcraft: Forever](/images/thumb/WoWForever-Icon.png/22px-WoWForever-Icon.png?443bd2)](https://warcraft.wiki.gg/wiki/World_of_Warcraft:_Forever "World of Warcraft: Forever") *[Forever](https://warcraft.wiki.gg/wiki/World_of_Warcraft:_Forever "World of Warcraft: Forever")*.

Restricts the addon directive or file to the bootstrap process for LoadOnDemand addons.

LoadIntoEnvironment  
Loads the file into the global (Global) or secure (Secure) environment.

![Note](/images/Icon-information-22x22.png?81245f "Note") **Note:** Functionally inoperable for addons, as only Blizzard code can be loaded into the secure environment.

Example:

    ## Interface: 120105
    ## Title: My Cool AddOn
    ## Title: My Cool AddOn in Classic [AllowLoadGameType classic]

    # This will only be loaded on Standard (retail).
    StandardOnly.lua [AllowLoadGameType standard]

    # This will only be loaded on Camelot (forever).
    ForeverOnly.lua [AllowLoadGameType camelot][ExcludeLoadGameType standard, classic]

    # This will only be loaded in Vanilla or TBC.
    VanillaOrTBC.lua [AllowLoadGameType vanilla, tbc]

    # This will only be loaded under English or French client locales.
    EnglishOrFrenchOnly.lua [AllowLoadTextLocale enUS, frFR]

## Addon directives

Addon directives are lines that define the information, metadata, and loading conditions and behaviour of addons. They use the syntax `##`` ``Directive``:`` ``Value`. Generally, if an addon directive is specified multiple times, the last one (with consideration for [inline directives](#Inline_directives)) will be used. Those that have exceptions to this rule are noted. Where multiple values are supported, they may be delimited by commas.

### Interface

Defines which interface versions the addon supports. An interface version is a single number representation of a client version (e.g., for 12.1.5, the interface version is 120105).

If an addon doesn't set an interface version that matches the client's, then it's classified as out-of-date.

    # single value for the latest retail version
    ## Interface: 120105

    # multiple values, for retail + classic + classic era
    ## Interface: 120105, 50504, 11509

Current values per game type (and release channel):

![Note](/images/Icon-information-22x22.png?81245f "Note") **Note:** These values are maintained by contributors, so they may not always be up to date.

|                                                                                                                                                                   |                        |           |
|-------------------------------------------------------------------------------------------------------------------------------------------------------------------|------------------------|-----------|
| Game type                                                                                                                                                         |                        | Interface |
| [![Midnight](/images/thumb/Midnight-Petopia-Logo.png/40px-Midnight-Petopia-Logo.png?28a8f3)](https://warcraft.wiki.gg/wiki/World_of_Warcraft:_Midnight "Midnight")                        | Standard Beta          | `120001`  |
| [![Midnight](/images/thumb/Midnight-Petopia-Logo.png/40px-Midnight-Petopia-Logo.png?28a8f3)](https://warcraft.wiki.gg/wiki/World_of_Warcraft:_Midnight "Midnight")                        | Standard Test          | `120107`  |
| [![Midnight](/images/thumb/Midnight-Petopia-Logo.png/40px-Midnight-Petopia-Logo.png?28a8f3)](https://warcraft.wiki.gg/wiki/World_of_Warcraft:_Midnight "Midnight")                        | Standard               | `120105`  |
| [![Mists of Pandaria](/images/Mists-Logo-Small.png?f96b23)](https://warcraft.wiki.gg/wiki/World_of_Warcraft:_Mists_of_Pandaria_Classic "Mists of Pandaria")                               | Mists Test             | `50504`   |
| [![Mists of Pandaria](/images/Mists-Logo-Small.png?f96b23)](https://warcraft.wiki.gg/wiki/World_of_Warcraft:_Mists_of_Pandaria_Classic "Mists of Pandaria")                               | Mists                  | `50504`   |
| [![Cataclysm](/images/Cata-Logo-Small.png?cd16d8)](https://warcraft.wiki.gg/wiki/World_of_Warcraft:_Cataclysm_Classic "Cataclysm")                                                        | Cata                   | `40402`   |
| [![Wrath of the Lich King](/images/Wrath-Logo-Small.png?6705fd)](https://warcraft.wiki.gg/wiki/World_of_Warcraft:_Wrath_of_the_Lich_King_Classic "Wrath of the Lich King")                | Wrath (Titan Reforged) | `38002`   |
| [![Wrath of the Lich King](/images/Wrath-Logo-Small.png?6705fd)](https://warcraft.wiki.gg/wiki/World_of_Warcraft:_Wrath_of_the_Lich_King_Classic "Wrath of the Lich King")                | Wrath                  | `30405`   |
| [![Burning Crusade](/images/Bc_icon.gif?6fe702)](https://warcraft.wiki.gg/wiki/World_of_Warcraft:_Burning_Crusade_Classic "Burning Crusade")                                              | TBC Test               | `20506`   |
| [![Burning Crusade](/images/Bc_icon.gif?6fe702)](https://warcraft.wiki.gg/wiki/World_of_Warcraft:_Burning_Crusade_Classic "Burning Crusade")                                              | TBC                    | `20506`   |
| [![World of Warcraft: Forever](/images/thumb/WoWForever-Icon.png/22px-WoWForever-Icon.png?443bd2)](https://warcraft.wiki.gg/wiki/World_of_Warcraft:_Forever "World of Warcraft: Forever") | Forever Beta           | `16001`   |
| [![World of Warcraft: Forever](/images/thumb/WoWForever-Icon.png/22px-WoWForever-Icon.png?443bd2)](https://warcraft.wiki.gg/wiki/World_of_Warcraft:_Forever "World of Warcraft: Forever") | Forever Test           | `16001`   |
| [![World of Warcraft: Forever](/images/thumb/WoWForever-Icon.png/22px-WoWForever-Icon.png?443bd2)](https://warcraft.wiki.gg/wiki/World_of_Warcraft:_Forever "World of Warcraft: Forever") | Forever                |           |
| [![World of Warcraft: Classic](/images/WoW_Icon_Classic.png?251bc2)](https://warcraft.wiki.gg/wiki/World_of_Warcraft:_Classic "World of Warcraft: Classic")                               | Vanilla Test           | `11508`   |
| [![World of Warcraft: Classic](/images/WoW_Icon_Classic.png?251bc2)](https://warcraft.wiki.gg/wiki/World_of_Warcraft:_Classic "World of Warcraft: Classic")                               | Vanilla                | `11509`   |

The current version for the client can always be [dumped](https://warcraft.wiki.gg/wiki/MACRO_dump "MACRO dump") within the game using [GetBuildInfo](https://warcraft.wiki.gg/wiki/GetBuildInfo "GetBuildInfo"):

[![Enter the text "/dump select(4, GetBuildInfo())" into the chat window to display the Interface version](/images/GetBuildInfo-Tutorial.gif?6f5d2c)](https://warcraft.wiki.gg/wiki/File:GetBuildInfo-Tutorial.gif "Demonstration of obtaining the interface version from the chat window.")

### Displayed text and organization

The following addon directives change how an addon is organised and displayed as text in various locations within the game (e.g., the [AddOn List](https://warcraft.wiki.gg/wiki/AddOn_List "AddOn List"), compartment, and tooltips). Their values may be coloured using [UI escape sequences](https://warcraft.wiki.gg/wiki/UI_escape_sequences "UI escape sequences") (e.g., \|c########\|r).

Similar to the AllowLoadLocale [inline directive](#Inline_directives), these addon directives may also be [localized](https://warcraft.wiki.gg/wiki/Localization "Localization") by appending a hyphen and the locale code (e.g., Title-enUS).

![Note](/images/Icon-information-22x22.png?81245f "Note") **Note:** A non-localized fallback should always be specified *before* localized ones, otherwise they will be unused.

##### Title

Name displayed in the AddOn List.

    ## Title: Waiting for Godot
    ## Title-frFR: En attendant Godot

##### Notes

Tooltip displayed in the AddOn List.

    ## Notes: This word is |cFFFF0000red|r
    ## Notes-itIT: La parola è |cFFFF0000rossa|r

##### Category

Category name displayed in the AddOn List, displayed as a collapsible header entry. It is **strongly recommended** that you stick to the translated category names found on the [Addon Categories](https://warcraft.wiki.gg/wiki/Addon_Categories "Addon Categories") page. This will ensure that your addon is consistently located with other addons in the same category across all locales.

    ## Category: This is a test
    ## Category-deDE: Dies ist ein Test

##### Group

Addon used for grouping multiple addons together in the AddOn List.

- The value must be the name of the main addon.
- Grouped addons are displayed in the AddOn List as indented sub-lists. These lists cannot be collapsed, unlike Categories.
  - Nested groups are not supported by the AddOn List.
- If no Group has been manually specified, the client will attempt to automatically deduce membership of a group.
  - Installed addons will be scanned to locate pairs of addons where the base name of one addon is a complete prefix of another, and where any form of dependency relation exists between the two in either direction.

    ## Group: FooAuras

### Displayed icons

The following addon directives change how an AddOn is displayed as an icon in various locations within the game (e.g., the AddOn List and compartment).

##### IconTexture

Path to a texture file to be shown as the icon for this addon in the AddOn List.

    ## IconTexture: Interface\Icons\TEMP

##### IconAtlas

Name of a texture atlas to be shown as the icon for this addon in the AddOn List. Has a lower priority than IconTexture if both are set.

    ## IconAtlas: TaskPOI-Icon

### Addon compartment integration

[![Midnight](/images/thumb/Midnight-Petopia-Logo.png/40px-Midnight-Petopia-Logo.png?28a8f3)](https://warcraft.wiki.gg/wiki/World_of_Warcraft:_Midnight "Midnight")[![World of Warcraft: Forever](/images/thumb/WoWForever-Icon.png/22px-WoWForever-Icon.png?443bd2)](https://warcraft.wiki.gg/wiki/World_of_Warcraft:_Forever "World of Warcraft: Forever") **This section concerns content related to *[Midnight](https://warcraft.wiki.gg/wiki/World_of_Warcraft:_Midnight "World of Warcraft: Midnight")* and *[Forever](https://warcraft.wiki.gg/wiki/World_of_Warcraft:_Forever "World of Warcraft: Forever")*.**

The following addon directives will control the registration of the addon into the [addon compartment](https://warcraft.wiki.gg/wiki/Addon_compartment "Addon compartment") dropdown accessible from the minimap.

#### AddonCompartmentFunc

Name of a global function to be executed when the entry for this addon has been clicked in the addon compartment.

![Note](/images/Icon-information-22x22.png?81245f "Note") **Note:** This directive is **required** to show the addon in the addon compartment dropdown when using automatic registration.

    ## AddonCompartmentFunc: MyAddon_OnAddonCompartmentClick

#### AddonCompartmentFuncOnEnter

Name of a global function to be executed when the entry for this addon has been highlighted in the addon compartment dropdown.

    ## AddonCompartmentFuncOnEnter: MyAddon_OnAddonCompartmentEnter

#### AddonCompartmentFuncOnLeave

Name of a global function to be executed when the entry for this addon is no longer highlighted in the addon compartment dropdown.

    ## AddonCompartmentFuncOnLeave: MyAddon_OnAddonCompartmentLeave

### Loading conditions

The following addon directives control when an addon loads, and any dependencies that must or may load first.

#### LoadOnDemand

Set to 1 to delay loading until [`C_AddOns.LoadAddOn`](https://warcraft.wiki.gg/wiki/API:C_AddOns.LoadAddOn "API:C AddOns.LoadAddOn") is called.

    ## LoadOnDemand: 1

#### Dependencies

Addons that must load first. Aliases include RequiredDeps and any word beginning with `Dep`.

![Note](/images/Icon-information-22x22.png?81245f "Note") **Note:** This directive may be specified multiple times, with later instances appending to the list.

    ## Dependencies: someAddOn, someOtherAddOn
    ## Dep: yetAnotherAddOn

#### OptionalDeps

Addons that must load first if available.

    ## OptionalDeps: someAddOn, someOtherAddOn

#### LoadWith

Addons that, once loaded, will trigger this one to load. Also causes this addon to behave as LoadOnDemand.

![Note](/images/Icon-information-22x22.png?81245f "Note") **Note:** This directive may be specified multiple times, with later instances appending to the list.

    ## LoadWith: someAddOn, someOtherAddOn

#### LoadManagers

Addons that, if present, will cause this one to behave as LoadOnDemand. See [AddonLoader](https://warcraft.wiki.gg/wiki/AddonLoader "AddonLoader") for an example.

![Note](/images/Icon-information-22x22.png?81245f "Note") **Note:** This directive may be specified multiple times, with later instances appending to the list.

    ## LoadManagers: someAddOn, someOtherAddOn

#### AllowLoadGameType

Restricts loading this addon to *case-insensitive* game types or thier families.

![Note](/images/Icon-information-22x22.png?81245f "Note") **Note:** This addon directive may be specified multiple times, with later instances appending to the list.

    ## AllowLoadGameType: standard, classic

![Note](/images/Icon-information-22x22.png?81245f "Note") **Note:** Some game modes may be restricted to disallow loading of third-party addons.

![Warning](/images/Icon-warning-22x22.png?61f799 "Warning") **Warning:** If at least 1 game type is specified and none of the game types are recognized by the client, the condition will be satisfied. For this reason, you should additionally use ExcludeLoadGameType to exclude game types that are not universally recognized yet.

Game type

Expansion/Mode

Game types \[[edit](https://warcraft.wiki.gg/wiki/Template:GameTypes?action=edit)\]

`standard`

[![Midnight](/images/thumb/Midnight-Petopia-Logo.png/40px-Midnight-Petopia-Logo.png?28a8f3)](https://warcraft.wiki.gg/wiki/World_of_Warcraft:_Midnight "Midnight")

[Midnight](https://warcraft.wiki.gg/wiki/Midnight "Midnight")

`forever`  
`camelot`

[![World of Warcraft: Forever](/images/thumb/WoWForever-Icon.png/22px-WoWForever-Icon.png?443bd2)](https://warcraft.wiki.gg/wiki/World_of_Warcraft:_Forever "World of Warcraft: Forever")

[Forever](https://warcraft.wiki.gg/wiki/Forever "Forever")

`mists`

[![Mists of Pandaria](/images/Mists-Logo-Small.png?f96b23)](https://warcraft.wiki.gg/wiki/World_of_Warcraft:_Mists_of_Pandaria_Classic "Mists of Pandaria")

[Mists of Pandaria Classic](https://warcraft.wiki.gg/wiki/Mists_of_Pandaria_Classic "Mists of Pandaria Classic")

`cata`

[![Cataclysm](/images/Cata-Logo-Small.png?cd16d8)](https://warcraft.wiki.gg/wiki/World_of_Warcraft:_Cataclysm_Classic "Cataclysm")

[Cataclysm Classic](https://warcraft.wiki.gg/wiki/Cataclysm_Classic "Cataclysm Classic")

`wrath`

[![Wrath of the Lich King](/images/Wrath-Logo-Small.png?6705fd)](https://warcraft.wiki.gg/wiki/World_of_Warcraft:_Wrath_of_the_Lich_King_Classic "Wrath of the Lich King")

[Wrath of the Lich King Classic](https://warcraft.wiki.gg/wiki/Wrath_of_the_Lich_King_Classic "Wrath of the Lich King Classic") and [Titan Reforged](https://warcraft.wiki.gg/wiki/Titan_Reforged "Titan Reforged")

`tbc`

[![Burning Crusade](/images/Bc_icon.gif?6fe702)](https://warcraft.wiki.gg/wiki/World_of_Warcraft:_Burning_Crusade_Classic "Burning Crusade")

Burning Crusade [Classic](https://warcraft.wiki.gg/wiki/Burning_Crusade_Classic "Burning Crusade Classic") & [Classic Anniversary Edition](https://warcraft.wiki.gg/wiki/Burning_Crusade_Classic_Anniversary_Edition "Burning Crusade Classic Anniversary Edition")

`vanilla`

[![World of Warcraft: Classic](/images/WoW_Icon_Classic.png?251bc2)](https://warcraft.wiki.gg/wiki/World_of_Warcraft:_Classic "World of Warcraft: Classic")

[Classic Eras](https://warcraft.wiki.gg/wiki/Classic#Eras "Classic") before expansions

`plunderstorm`

[![Midnight](/images/thumb/Midnight-Petopia-Logo.png/40px-Midnight-Petopia-Logo.png?28a8f3)](https://warcraft.wiki.gg/wiki/World_of_Warcraft:_Midnight "Midnight")

[Plunderstorm](https://warcraft.wiki.gg/wiki/Plunderstorm "Plunderstorm")

`wowhack`

[![Midnight](/images/thumb/Midnight-Petopia-Logo.png/40px-Midnight-Petopia-Logo.png?28a8f3)](https://warcraft.wiki.gg/wiki/World_of_Warcraft:_Midnight "Midnight")

[Talebound](https://warcraft.wiki.gg/wiki/Talebound "Talebound")

 

Family

Games

Game type famlies \[[edit](https://warcraft.wiki.gg/wiki/Template:GameTypes?action=edit)\]

`mainline`

`standard`, `forever`, `camelot`, `plunderstorm`, `wowhack`

`classic`

`vanilla`, `tbc`, `wrath`, `cata`, `mists`

#### ExcludeLoadGameType

Similar to AllowLoadGameType, but prevents loading this addon on specific game types or their families.

![Note](/images/Icon-information-22x22.png?81245f "Note") **Note:** This addon directive may be specified multiple times, with later instances appending to the list.

    ## ExcludeLoadGameType: vanilla, wrath

#### OnlyBetaAndPTR

Set to 1 if an addon should only be loadable in Beta or PTR clients.

    ## OnlyBetaAndPTR: 1

#### DefaultState

Set to disabled to require the user to explicitly enable the addon in the [AddOn List](https://warcraft.wiki.gg/wiki/AddOn_List "AddOn List").

    ## DefaultState: disabled

### Saved variables

*Main article: [Saving variables between game sessions](https://warcraft.wiki.gg/wiki/Saving_variables_between_game_sessions "Saving variables between game sessions")*

#### LoadSavedVariablesFirst

Set to 1 if SavedVariables file(s) should be loaded before all script files for this addon.

![Note](/images/Icon-information-22x22.png?81245f "Note") **Note:** If this is set to 1 it cannot be turned off later in the file.

    ## LoadSavedVariablesFirst: 1

#### SavedVariables

Global variables to be stored in and read from `WTF\[account]\SavedVariables\MyAddOn.lua`.

![Note](/images/Icon-information-22x22.png?81245f "Note") **Note:** This addon directive may be specified multiple times, with later instances appending to the list.

    ## SavedVariables: MyAddOnNameVariableFoo, MyAddOnNameVariableBar

#### SavedVariablesPerCharacter

Global variables to be stored in and read from `WTF\[account]\[server]\[character]\SavedVariables\MyAddOn.lua`.

![Note](/images/Icon-information-22x22.png?81245f "Note") **Note:** This directive may be specified multiple times, with later instances appending to the list.

    ## SavedVariablesPerCharacter: MyAddOnNameCharacterVariableFoo, MyAddOnNameCharacterVariableBar

### Metadata

The following addon directives may be accessed using [C_AddOns.GetAddOnMetadata](https://warcraft.wiki.gg/wiki/API:C_AddOns.GetAddOnMetadata "API:C AddOns.GetAddOnMetadata").

#### Author

The addon author's name.

    ## Author: My Name

#### Version

The addon version, which will be shown in the tooltip in the [AddOn List](https://warcraft.wiki.gg/wiki/AddOn_List "AddOn List").

![Note](/images/Icon-information-22x22.png?81245f "Note") **Note:** Some automatic updating tools may prefer that this begins with a numeric version number.

    ## Version: 1.0.0

#### X-\_\_\_

Any custom metadata prefixed by "X-", such as "X-Date", "X-Website" or "X-Feedback"

    ## X-Website: https://github.com/MyUser/MyAddOn

### Uncategorized

#### AllowAddOnTableAccess

Set to 1 to allow the retrieval of the [namespace table](https://warcraft.wiki.gg/wiki/Using_the_AddOn_namespace "Using the AddOn namespace") of this addon via [C_AddOns.GetAddOnLocalTable](https://warcraft.wiki.gg/wiki/API:C_AddOns.GetAddOnLocalTable "API:C AddOns.GetAddOnLocalTable").

![Note](/images/Icon-information-22x22.png?81245f "Note") **Note:** If this is set to 1, and further instances of it will be ignored.

    ## AllowAddOnTableAccess: 1

### Restricted

The following addon directives are inaccessible to third-party addons.

#### AllowLoad

Restricts loading this addon to the [GlueXML](https://warcraft.wiki.gg/wiki/API_IsOnGlueScreen "API IsOnGlueScreen") environment, [FrameXML](https://warcraft.wiki.gg/wiki/FrameXML "FrameXML") environment, or both.

Both  
Allow this addon to load without restriction in all environments.

Game  
Only load this addon in the FrameXML environment.

Glue  
Only load this addon in the GlueXML environment.

#### EscalateErrorDuringLoad

Boolean addon directive that appears to have no effect in public clients.

#### LoadFirst

Set to 1 if a secure addon is not permitted to be disabled and should be loaded before any other addons without this flag.

#### SavedVariablesMachine

List of global variable names to be persisted across all accounts on the same machine.

#### UseSecureEnvironment

Set to 1 if all files present in an addon should be loaded into a private function environment.

## Inline directives

TOC files support the inline use of a set of directives, which define the conditions under or behaviour with which their corresponding addon directive or file will apply. They use the syntax `[Directive]` or `[Directive Value]` with case insensitive values. Multiple inline directices can be used per line, and can appear anywhere in a line.

![Note](/images/Icon-information-22x22.png?81245f "Note") **Note:** For reasons of compatibility, inline directives should generally only ever be used at the end of a line.

The following directives are supported inline:

AllowLoad  
Restricts the addon directive or file to in-game (Game), glue screen (Glue), or both (Both) environments.

![Note](/images/Icon-information-22x22.png?81245f "Note") **Note:** Functionally inoperable for addons, as only Blizzard addons are loaded within the glue screen environment.

AllowLoadGameType  
Restricts the addon directive or file to one or multiple specific game types, delimited by commas.

The possible values are the same as used by the [AllowLoadGameType directive](#AllowLoadGameType).

![Warning](/images/Icon-warning-22x22.png?61f799 "Warning") **Warning:** If at least 1 game type is specified and none of the game types are recognized by the client, the condition will still be satisfied. For this reason, you should additionally use ExcludeLoadGameType inline to exclude game types that are not universally recognized yet.

ExcludeLoadGameType  
Similar to `[``AllowLoadGameType`` ``...``]`, but restricts the addon directive or file to the game type(s) not listed.

AllowLoadTextLocale  
Restricts the addon directive or file to one or more specific client text locales, delimited by commas.

The possible values are the same as returned by [GetLocale](https://warcraft.wiki.gg/wiki/API:GetLocale "API:GetLocale"), eg. "enUS" and "frFR".

AllowLoadEnvironment  
Restricts the addon directive or file to the global (Global) or secure (Secure) environment.

![Note](/images/Icon-information-22x22.png?81245f "Note") **Note:** Functionally inoperable for addons, as only Blizzard addons are loaded within the secure environment.

Bootstrap  
Restricts the addon directive or file to the bootstrap process for LoadOnDemand addons.

LoadIntoEnvironment  
Loads the file into the global (Global) or secure (Secure) environment.

![Note](/images/Icon-information-22x22.png?81245f "Note") **Note:** Functionally inoperable for addons, as only Blizzard code can be loaded into the secure environment.

Example:

    ## Interface: 120105
    ## Title: My Cool AddOn
    ## Title: My Cool AddOn in Classic [AllowLoadGameType classic]

    # This will only be loaded on Standard (retail).
    StandardOnly.lua [AllowLoadGameType standard]

    # This will only be loaded on Camelot (forever).
    ForeverOnly.lua [AllowLoadGameType camelot][ExcludeLoadGameType standard, classic]

    # This will only be loaded in Vanilla or TBC.
    VanillaOrTBC.lua [AllowLoadGameType vanilla, tbc]

    # This will only be loaded under English or French client locales.
    EnglishOrFrenchOnly.lua [AllowLoadTextLocale enUS, frFR]

## Patch changes

### Modern

- [![Midnight](/images/thumb/Midnight-Petopia-Logo.png/40px-Midnight-Petopia-Logo.png?28a8f3)](https://warcraft.wiki.gg/wiki/World_of_Warcraft:_Midnight "Midnight") **[Patch 12.1.7](https://warcraft.wiki.gg/wiki/Patch_12.1.7/API_changes "Patch 12.1.7/API changes") ([PTR](https://warcraft.wiki.gg/wiki/PTR "PTR")):**
  - Added RegionalTextLocale variable.
  - Prevented use of variables in addon directives.   
- [![Midnight](/images/thumb/Midnight-Petopia-Logo.png/40px-Midnight-Petopia-Logo.png?28a8f3)](https://warcraft.wiki.gg/wiki/World_of_Warcraft:_Midnight "Midnight") **[Patch 12.1.5](https://warcraft.wiki.gg/wiki/Patch_12.1.5/API_changes "Patch 12.1.5/API changes") (2026-10-13):** Added Standard TOC suffix.   
- [![Midnight](/images/thumb/Midnight-Petopia-Logo.png/40px-Midnight-Petopia-Logo.png?28a8f3)](https://warcraft.wiki.gg/wiki/World_of_Warcraft:_Midnight "Midnight") **[Patch 12.1.0](https://warcraft.wiki.gg/wiki/Patch_12.1.0/API_changes "Patch 12.1.0/API changes") (2026-08-11):** Added Bootstrap inline directive.   
- [![Midnight](/images/thumb/Midnight-Petopia-Logo.png/40px-Midnight-Petopia-Logo.png?28a8f3)](https://warcraft.wiki.gg/wiki/World_of_Warcraft:_Midnight "Midnight") **[Patch 12.0.7](https://warcraft.wiki.gg/wiki/Patch_12.0.7/API_changes "Patch 12.0.7/API changes") (2026-06-16):** Added inline directives and variables for addon directives.   
- [![Midnight](/images/thumb/Midnight-Petopia-Logo.png/40px-Midnight-Petopia-Logo.png?28a8f3)](https://warcraft.wiki.gg/wiki/World_of_Warcraft:_Midnight "Midnight") **[Patch 12.0.0](https://warcraft.wiki.gg/wiki/Patch_12.0.0/API_changes "Patch 12.0.0/API changes") (2026-01-20):** Added ExcludeLoadGameType directive.   
- [![The War Within](/images/thumb/TheWarWithin-Petopia-Logo.png/40px-TheWarWithin-Petopia-Logo.png?c7c8d5)](https://warcraft.wiki.gg/wiki/World_of_Warcraft:_The_War_Within "The War Within") **[Patch 11.2.0](https://warcraft.wiki.gg/wiki/Patch_11.2.0/API_changes "Patch 11.2.0/API changes") (2025-08-05):** Added the TextLocale variable and AllowLoadTextLocale directive.   
- [![The War Within](/images/thumb/TheWarWithin-Petopia-Logo.png/40px-TheWarWithin-Petopia-Logo.png?c7c8d5)](https://warcraft.wiki.gg/wiki/World_of_Warcraft:_The_War_Within "The War Within") **[Patch 11.1.7](https://warcraft.wiki.gg/wiki/Patch_11.1.7/API_changes "Patch 11.1.7/API changes") (2025-06-17):** Added the AllowAddOnTableAccess addon directive.   
- [![The War Within](/images/thumb/TheWarWithin-Petopia-Logo.png/40px-TheWarWithin-Petopia-Logo.png?c7c8d5)](https://warcraft.wiki.gg/wiki/World_of_Warcraft:_The_War_Within "The War Within") **[Patch 11.1.5](https://warcraft.wiki.gg/wiki/Patch_11.1.5/API_changes "Patch 11.1.5/API changes") (2025-04-22):**
  - Added variables for files.
  - Added a subset of directives as inline directives for files.
  - Added the LoadSavedVariablesFirst addon directive.
  - AllowLoadGameType is now usable by insecure addons.   
- [![The War Within](/images/thumb/TheWarWithin-Petopia-Logo.png/40px-TheWarWithin-Petopia-Logo.png?c7c8d5)](https://warcraft.wiki.gg/wiki/World_of_Warcraft:_The_War_Within "The War Within") **[Patch 11.1.0](https://warcraft.wiki.gg/wiki/Patch_11.1.0/API_changes "Patch 11.1.0/API changes") (2025-02-25):** Added the Category and Group addon directives.   
- [![The War Within](/images/thumb/TheWarWithin-Petopia-Logo.png/40px-TheWarWithin-Petopia-Logo.png?c7c8d5)](https://warcraft.wiki.gg/wiki/World_of_Warcraft:_The_War_Within "The War Within") **[Patch 11.0.0](https://warcraft.wiki.gg/wiki/Patch_11.0.0/API_changes "Patch 11.0.0/API changes") (2024-07-23):**
  - Added the restricted UseSecureEnvironment addon directive.
  - Removed the SuppressLocalTableRef addon directive.   
- [![Dragonflight](/images/thumb/Dragonflight-Icon-Inline.png/48px-Dragonflight-Icon-Inline.png?be4c0e)](https://warcraft.wiki.gg/wiki/World_of_Warcraft:_Dragonflight "Dragonflight") **[Patch 10.2.7](https://warcraft.wiki.gg/wiki/Patch_10.2.7/API_changes "Patch 10.2.7/API changes") (2024-05-07):**
  - Added support for comma-delimited Interface versions.
  - Added the restricted SuppressLocalTableRef addon directive.
  - Renamed AllowLoadByGameMode and GuardedAddOn directives to AllowLoadGameType and LoadFirst, respectively.   
- [![Dragonflight](/images/thumb/Dragonflight-Icon-Inline.png/48px-Dragonflight-Icon-Inline.png?be4c0e)](https://warcraft.wiki.gg/wiki/World_of_Warcraft:_Dragonflight "Dragonflight") **[Patch 10.2.6](https://warcraft.wiki.gg/wiki/Patch_10.2.6/API_changes "Patch 10.2.6/API changes") (2024-03-19):** Added the restricted AllowLoadByGameMode addon directive.   
- [![Dragonflight](/images/thumb/Dragonflight-Icon-Inline.png/48px-Dragonflight-Icon-Inline.png?be4c0e)](https://warcraft.wiki.gg/wiki/World_of_Warcraft:_Dragonflight "Dragonflight") **[Patch 10.1.0](https://warcraft.wiki.gg/wiki/Patch_10.1.0/API_changes "Patch 10.1.0/API changes") (2023-05-02):**
  - Added IconAtlas, IconTexture, and [Addon compartment](https://warcraft.wiki.gg/wiki/Addon_compartment "Addon compartment") related addon directives.
  - Added the restricted GuardedAddOn addon directive.   
- [![Shadowlands](/images/thumb/Shadowlands-Icon-Inline.png/48px-Shadowlands-Icon-Inline.png?d84a63)](https://warcraft.wiki.gg/wiki/World_of_Warcraft:_Shadowlands "Shadowlands") **[Patch 9.1.0](https://warcraft.wiki.gg/wiki/Patch_9.1.0/API_changes "Patch 9.1.0/API changes") (2021-06-29):** Multiple TOC files are now supported using a suffix to disambiguate Classic, BCC and Retail.^([\[1\]](#cite_note-WoWUIBug#68-1))   
- [![Shadowlands](/images/thumb/Shadowlands-Icon-Inline.png/48px-Shadowlands-Icon-Inline.png?d84a63)](https://warcraft.wiki.gg/wiki/World_of_Warcraft:_Shadowlands "Shadowlands") **[Patch 9.0.1](https://warcraft.wiki.gg/wiki/Patch_9.0.1/API_changes "Patch 9.0.1/API changes") (2020-10-13):** [`/reload`](https://warcraft.wiki.gg/wiki/MACRO_reload "MACRO reload") recognizes changes to TOC directives and entirely new files in the `Interface/AddOns/` directory tree.   
- [![Cataclysm](/images/Cata-Logo-Small.png?cd16d8)](https://warcraft.wiki.gg/wiki/World_of_Warcraft:_Cataclysm "Cataclysm") **[Patch 4.0.1](https://warcraft.wiki.gg/wiki/Patch_4.0.1/API_changes "Patch 4.0.1/API changes") (2010-10-12):** [`/reload`](https://warcraft.wiki.gg/wiki/MACRO_reload "MACRO reload") recognizes changes to the file order.   
- [![Burning Crusade](/images/Bc_icon.gif?6fe702)](https://warcraft.wiki.gg/wiki/World_of_Warcraft:_The_Burning_Crusade "Burning Crusade") **[Patch 2.1.0](https://warcraft.wiki.gg/wiki/Patch_2.1.0/API_changes "Patch 2.1.0/API changes") (2007-05-22):** Added the LoadManagers addon directive.   
- [![World of Warcraft](/images/WoW_Icon_update.png?d4be1e)](https://warcraft.wiki.gg/wiki/World_of_Warcraft "World of Warcraft") **[Patch 1.11.0](https://warcraft.wiki.gg/wiki/Patch_1.11.0/API_changes "Patch 1.11.0/API changes") (2006-06-19):** Added the Secure addon directive.   
- [![World of Warcraft](/images/WoW_Icon_update.png?d4be1e)](https://warcraft.wiki.gg/wiki/World_of_Warcraft "World of Warcraft") **[Patch 1.9.0](https://warcraft.wiki.gg/wiki/Patch_1.9.0/API_changes "Patch 1.9.0/API changes") (2006-01-03):** Added the LoadWith addon directive.   

### Forever

- [![World of Warcraft: Forever](/images/thumb/WoWForever-Icon.png/22px-WoWForever-Icon.png?443bd2)](https://warcraft.wiki.gg/wiki/World_of_Warcraft:_Forever "World of Warcraft: Forever") **[Patch 1.60.1](https://warcraft.wiki.gg/wiki/Patch_1.60.1/API_changes "Patch 1.60.1/API changes") ([Beta](https://warcraft.wiki.gg/wiki/Beta "Beta")):**
  - Includes all Modern changes up to 12.1.5
  - Added Camelot game type, Game variable value and TOC suffix, with Forever game type and TOC suffix alias.   

### Classic Progression

- [![Mists of Pandaria](/images/Mists-Logo-Small.png?f96b23)](https://warcraft.wiki.gg/wiki/World_of_Warcraft:_Mists_of_Pandaria_Classic "Mists of Pandaria") **[Patch 5.5.4](https://warcraft.wiki.gg/wiki/Patch_5.5.4/API_changes "Patch 5.5.4/API changes") (2026-06-02):** Includes all Modern changes up to 12.0.7.   
- [![Mists of Pandaria](/images/Mists-Logo-Small.png?f96b23)](https://warcraft.wiki.gg/wiki/World_of_Warcraft:_Mists_of_Pandaria_Classic "Mists of Pandaria") **[Patch 5.5.1](https://warcraft.wiki.gg/wiki/Patch_5.5.1/API_changes "Patch 5.5.1/API changes") (2025-09-23):** Includes all Modern changes up to 11.2.0.   
- [![Mists of Pandaria](/images/Mists-Logo-Small.png?f96b23)](https://warcraft.wiki.gg/wiki/World_of_Warcraft:_Mists_of_Pandaria_Classic "Mists of Pandaria") **[Patch 5.5.0](https://warcraft.wiki.gg/wiki/Patch_5.5.0/API_changes "Patch 5.5.0/API changes") (2025-07-01):** Includes all Modern changes up to 11.1.7.   
- [![Cataclysm](/images/Cata-Logo-Small.png?cd16d8)](https://warcraft.wiki.gg/wiki/World_of_Warcraft:_Cataclysm_Classic "Cataclysm") **[Patch 4.4.1](https://warcraft.wiki.gg/wiki/Patch_4.4.1/API_changes "Patch 4.4.1/API changes") (2024-10-29):** Includes all Modern changes up to 11.0.0.   
- [![Cataclysm](/images/Cata-Logo-Small.png?cd16d8)](https://warcraft.wiki.gg/wiki/World_of_Warcraft:_Cataclysm_Classic "Cataclysm") **[Patch 4.4.0](https://warcraft.wiki.gg/wiki/Patch_4.4.0/API_changes "Patch 4.4.0/API changes") (2024-04-30):**
  - Includes all Modern changes up to 10.2.7.
  - The behavior of the `_Classic` TOC suffix has changed such that it now loads on all Classic clients, and not just Classic Era.   
- [![Burning Crusade](/images/Bc_icon.gif?6fe702)](https://warcraft.wiki.gg/wiki/World_of_Warcraft:_Burning_Crusade_Classic "Burning Crusade") **[Patch 2.5.3](https://warcraft.wiki.gg/wiki/Patch_2.5.3/API_changes "Patch 2.5.3/API changes") (2022-01-18):** [`/reload`](https://warcraft.wiki.gg/wiki/MACRO_reload "MACRO reload") recognizes changes to TOC directives and entirely new files in the `Interface/AddOns/` directory tree.   
- [![Burning Crusade](/images/Bc_icon.gif?6fe702)](https://warcraft.wiki.gg/wiki/World_of_Warcraft:_Burning_Crusade_Classic "Burning Crusade") **[Patch 2.5.1](https://warcraft.wiki.gg/wiki/Patch_2.5.1/API_changes "Patch 2.5.1/API changes") (2021-05-18):** Multiple TOC files are now supported using a suffix to disambiguate Classic, BCC and Retail.^([\[1\]](#cite_note-WoWUIBug#68-1))   
- [![World of Warcraft: Classic](/images/WoW_Icon_Classic.png?251bc2)](https://warcraft.wiki.gg/wiki/World_of_Warcraft:_Classic "World of Warcraft: Classic") **[Patch 1.13.2](https://warcraft.wiki.gg/wiki/Patch_1.13.2/API_changes "Patch 1.13.2/API changes") (2019-08-26):** Includes all Modern changes up to 8.1.0.   

### Classic Era

- [![World of Warcraft: Classic](/images/WoW_Icon_Classic.png?251bc2)](https://warcraft.wiki.gg/wiki/World_of_Warcraft:_Classic "World of Warcraft: Classic") **[Patch 1.15.9](https://warcraft.wiki.gg/wiki/Patch_1.15.9/API_changes "Patch 1.15.9/API changes") (2026-07-21):** Includes all Modern changes up to 12.0.7.   
- [![World of Warcraft: Classic](/images/WoW_Icon_Classic.png?251bc2)](https://warcraft.wiki.gg/wiki/World_of_Warcraft:_Classic "World of Warcraft: Classic") **[Patch 1.15.8](https://warcraft.wiki.gg/wiki/Patch_1.15.8/API_changes "Patch 1.15.8/API changes") (2025-10-21):** Includes all Modern changes up to 11.2.0.   
- [![World of Warcraft: Classic](/images/WoW_Icon_Classic.png?251bc2)](https://warcraft.wiki.gg/wiki/World_of_Warcraft:_Classic "World of Warcraft: Classic") **[Patch 1.15.4](https://warcraft.wiki.gg/wiki/Patch_1.15.4/API_changes "Patch 1.15.4/API changes") (2024-09-24):** Includes all Modern changes up to 11.0.0.   
- [![World of Warcraft: Classic](/images/WoW_Icon_Classic.png?251bc2)](https://warcraft.wiki.gg/wiki/World_of_Warcraft:_Classic "World of Warcraft: Classic") **[Patch 1.14.0](https://warcraft.wiki.gg/wiki/Patch_1.14.0/API_changes "Patch 1.14.0/API changes") (2021-09-28):**
  - Includes all Classic Progression changes up to 2.5.2.
  - [`/reload`](https://warcraft.wiki.gg/wiki/MACRO_reload "MACRO reload") recognizes changes to TOC directives and entirely new files in the `Interface/AddOns/` directory tree.   
- [![World of Warcraft: Classic](/images/WoW_Icon_Classic.png?251bc2)](https://warcraft.wiki.gg/wiki/World_of_Warcraft:_Classic "World of Warcraft: Classic") **[Patch 1.13.7](https://warcraft.wiki.gg/wiki/Patch_1.13.7/API_changes "Patch 1.13.7/API changes") (2021-04-20):** Multiple TOC files are now supported using a suffix to disambiguate Classic, BCC and Retail.^([\[1\]](#cite_note-WoWUIBug#68-1))   

### Classic Titan Reforged

- [![Wrath of the Lich King](/images/Wrath-Logo-Small.png?6705fd)](https://warcraft.wiki.gg/wiki/World_of_Warcraft:_Wrath_of_the_Lich_King_Classic "Wrath of the Lich King") **[Patch 3.80.2](https://warcraft.wiki.gg/wiki/Patch_3.80.2/API_changes?action=edit&redlink=1 "Patch 3.80.2/API changes (page does not exist)") (2026-07-29):** Includes all Modern changes up to 12.0.7.   
- [![Wrath of the Lich King](/images/Wrath-Logo-Small.png?6705fd)](https://warcraft.wiki.gg/wiki/World_of_Warcraft:_Wrath_of_the_Lich_King_Classic "Wrath of the Lich King") **[Patch 3.80.0](https://warcraft.wiki.gg/wiki/Patch_3.80.0/API_changes?action=edit&redlink=1 "Patch 3.80.0/API changes (page does not exist)") (2025-11-18):**
  - Includes all Classic Era changes up to 1.15.8.
  - The behavior of the Classic TOC suffix has changed such that it now loads on all Classic clients, and not just Classic Era.
  - The legacy WOTLK TOC suffix is no longer supported.   

### Classic Anniversary

- [![Burning Crusade](/images/Bc_icon.gif?6fe702)](https://warcraft.wiki.gg/wiki/World_of_Warcraft:_Burning_Crusade_Classic "Burning Crusade") **[Patch 2.5.6](https://warcraft.wiki.gg/wiki/Patch_2.5.6/API_changes "Patch 2.5.6/API changes") (2026-07-07):** Includes all Modern changes up to 12.0.7.   
- [![Burning Crusade](/images/Bc_icon.gif?6fe702)](https://warcraft.wiki.gg/wiki/World_of_Warcraft:_Burning_Crusade_Classic "Burning Crusade") **[Patch 2.5.5](https://warcraft.wiki.gg/wiki/Patch_2.5.5/API_changes "Patch 2.5.5/API changes") (2026-01-13):**
  - Includes all all Classic Era changes up to 1.15.8.
  - The behavior of the Classic TOC suffix has changed such that it now loads on all Classic clients, and not just Classic Era.
  - The legacy BCC TOC suffix is no longer supported.   

## See also

- [C_AddOns.GetAddOnInfo](https://warcraft.wiki.gg/wiki/API:C_AddOns.GetAddOnInfo "API:C AddOns.GetAddOnInfo") returns basic information about an addon.
- [Using the AddOn namespace](https://warcraft.wiki.gg/wiki/Using_the_AddOn_namespace "Using the AddOn namespace") describes the parameters passed to each file.

## References

 

1.  ^ ^([a](#cite_ref-WoWUIBug#68_1-0)) ^([b](#cite_ref-WoWUIBug#68_1-1)) ^([c](#cite_ref-WoWUIBug#68_1-2)) ^([d](#cite_ref-WoWUIBug#68_1-3)) Meo[![Inv g fishingbobber 05.png](/images/thumb/Inv_g_fishingbobber_05.png/12px-Inv_g_fishingbobber_05.png?97dd2c)](https://warcraft.wiki.gg/wiki/File:Inv_g_fishingbobber_05.png)rawr. [Multiple Interface Version Support](https://github.com/Stanzilla/WoWUIBugs/issues/68#issuecomment-889431675). WoWUIBugs.

  

[TABLE]

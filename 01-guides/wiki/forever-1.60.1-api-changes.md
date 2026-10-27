# Patch 1.60.1/API changes

> Source: <https://warcraft.wiki.gg/wiki/Patch_1.60.1/API_changes> (Warcraft Wiki, CC BY-SA). Re-run sync.sh to refresh.

[TABLE]

[TABLE]

## Contents

- [1 Resources](#Resources)
  - [1.1 Notable changes](#Notable_changes)
- [2 Examples](#Examples)
  - [2.1 TOC format](#TOC_format)
  - [2.2 Game types](#Game_types)
  - [2.3 Rulesets](#Rulesets)
- [3 Blue posts](#Blue_posts)
  - [3.1 2026-10-16](#2026-10-16)
  - [3.2 2026-10-08](#2026-10-08)
  - [3.3 2026-09-15](#2026-09-15)
- [4 Consolidated changes](#Consolidated_changes)
  - [4.1 Global API](#Global_API)
  - [4.2 FrameXML](#FrameXML)
  - [4.3 Widgets](#Widgets)
  - [4.4 Events](#Events)
  - [4.5 CVars](#CVars)
- [5 References](#References)

  

## Resources

- TOC: `16001`
- Official API patch notes: [Forever 1.60.1 Beta Changes](https://warcraft.wiki.gg/wiki/Patch_1.60.1/API_changes/notes "Patch 1.60.1/API changes/notes")
- Official development notes: [WoW Forever Beta Development Notes](https://us.forums.blizzard.com/en/wow/t/wow-forever-beta-development-notes-%E2%80%93-updated-september-24/2360696)
- Diffs: [wow-ui-source](https://github.com/Gethe/wow-ui-source/compare/12.1.5..forever), [BlizzardInterfaceResources](https://github.com/Ketho/BlizzardInterfaceResources/compare/12.1.5..1.60.1)

### Notable changes

- 1.60.1 (70291) Oct 7 2026
  - Added the `"forever"` TOC game type which is equivalent to `"camelot"`.

&nbsp;

- 1.60.1 (70170) Oct 1 2026
  - Added `WOW_PROJECT_CAMELOT` (18) constant.^([\[1\]](#cite_note-1))
  - Fixed `UnitName("player")` returning `"Unknown"``,`` ``nil` before `PLAYER_LOGIN` fires.^([\[2\]](#cite_note-2))

&nbsp;

- 1.60.1 (70009) Sep 23 2026
  - Fixed SavedVariables not loading.^([\[3\]](#cite_note-3))
  - Fixed RestrictedEnvironment not loading.^([\[4\]](#cite_note-4))
  - Fixed `UnitName` not being consistent between UnitTokens.^([\[5\]](#cite_note-5))

## Examples

### TOC format

The [AllowLoadGameType](https://warcraft.wiki.gg/wiki/TOC_format#AllowLoadGameType "TOC format") directive restricts addons to only load on a specific game type. This way you only need a single TOC file instead of multiple [client-specific](https://warcraft.wiki.gg/wiki/TOC_format#Client-specific_TOC_files "TOC format") TOC files.

📝 Since the `forever` game type is not yet recognized on standard 12.1.5, 12.1.0 and classic clients, this will require excluding the other game types.

- To load an addon only on Forever.

    ## AllowLoadGameType: forever
    ## ExcludeLoadGameType: standard, classic

- To load a specific file only on Forever.

    MyFile.lua [AllowLoadGameType forever][ExcludeLoadGameType standard, classic]

- To set metadata such as the addon's title only for a specific game type.

[TABLE]

    ## Title: My title for Forever [AllowLoadGameType forever]
    ## Title: My title for Midnight [AllowLoadGameType standard]
    ## Title: My title for Mists/TBC/Vanilla [AllowLoadGameType classic]

### Game types

Checks the current game type in Lua with [WOW_PROJECT_ID](https://warcraft.wiki.gg/wiki/WOW_PROJECT_ID "WOW PROJECT ID").

    -- with constants
    if WOW_PROJECT_ID == WOW_PROJECT_CAMELOT then
        -- forever
    end

    -- by interface version
    local version = select(4, GetBuildInfo())
    if version > 16000 and version < 20000 then
        -- forever
    end

Uses TOC variables with [C_AddOns.GetAddOnMetadata](https://warcraft.wiki.gg/wiki/API:C_AddOns.GetAddOnMetadata "API:C AddOns.GetAddOnMetadata").

    ## X-Game: [Game]

    if C_AddOns.GetAddOnMetadata("MyAddOn", "X-Game") == "Camelot" then
        -- forever
    end

### Rulesets

Checks the current ruleset with [C_GameRules.IsGameRuleActive](https://warcraft.wiki.gg/wiki/API:C_GameRules.IsGameRuleActive "API:C GameRules.IsGameRuleActive").

    if C_GameRules.IsGameRuleActive(Enum.GameRule.HardcoreRuleset) then
        -- Hardcore
    elseif C_GameRules.IsGameRuleActive(Enum.GameRule.RPRuleset) then
        -- RP
    elseif C_GameRules.IsGameRuleActive(Enum.GameRule.PvPRuleset) then
        -- PvP
    else
        -- PvE
    end

## Blue posts

[TABLE]

Official patch notes

> DISCLAIMER: These notes are for addon authors and as such are focused specifically on addon-facing API and security changes only. Changes planned for other parts of the game (UI or otherwise) are not included here.

### 2026-10-16

[*Forever 1.60.1 Beta Changes 5*](https://discord.com/channels/327414731654692866/1560468817363210260/1560468817363210260) (build 70425)

Coming in WoW Forever 1.60.1 Beta 5

**Addon Security**  

- The server ID and spawn ID portions of creature, vehicle, pet and game object [GUIDs](https://warcraft.wiki.gg/wiki/GUID "GUID") have been replaced with obfuscated values to prevent comparison to determine [layer](https://warcraft.wiki.gg/wiki/Layering "Layering"). They remain stable and unique within your own session, and the GUID string format is otherwise unchanged.

**Miscellaneous**  

- Nameplates are no longer shown for non-target units far above or below the player. This is controlled by the new `nameplateMaxVerticalDistance` and `nameplateMaxVerticalDistanceAtMaxRange` [CVars](https://warcraft.wiki.gg/wiki/CVar "CVar") (a value of `0` disables the check).
- Importing an [Edit Mode](https://warcraft.wiki.gg/wiki/Edit_Mode "Edit Mode") layout string from an older version no longer raises an error.
- The Forever player, target, pet, target-of-target, totem and focus frames, and the minimap header, have been reskinned and some of their child frames reorganized. Addons that skin or anchor to these frames may need to adjust things.

### 2026-10-08

[*Forever 1.60.1 Beta Changes 4*](https://discord.com/channels/327414731654692866/1557873223746719905/1557873223746719905) (Build 70291)

Coming in WoW Forever 1.60.1 Beta 4

**Addon Security**  

- Trial accounts can no longer send addon messages.
- [SendChatMessage](https://warcraft.wiki.gg/wiki/API:C_ChatInfo.SendChatMessage "API:C ChatInfo.SendChatMessage") with the "EMOTE" chat type now requires a hardware event when called from addon code outside of instances, matching the existing restriction on "SAY" and "YELL".
- Fixed a further issue that allowed addons to access minimap rotation values during encounters.
- Added a new `FrameStrata` [secret aspect](https://warcraft.wiki.gg/wiki/Secret_aspects "Secret aspects"). [GetFrameStrata](https://warcraft.wiki.gg/wiki/API:Frame_GetFrameStrata "API:Frame GetFrameStrata") now returns a [secret value](https://warcraft.wiki.gg/wiki/Secret_Values "Secret Values") for [frames](https://warcraft.wiki.gg/wiki/Frame "Frame") that have this aspect.

**Miscellaneous**  

- Forever is now accepted as an alias for Camelot in TOC file suffixes (e.g. `MyAddon_``Forever``.toc`), in the `[``Game``]` variable, and in game-type folder lookup.
- The [require](https://warcraft.wiki.gg/wiki/API:require "API:require") functionality recently added to Lua has been renamed to [import](https://warcraft.wiki.gg/wiki/API:import "API:import").
- [C_PvP.IsWarModeFeatureEnabled](https://warcraft.wiki.gg/wiki/API:C_PvP.IsWarModeFeatureEnabled "API:C PvP.IsWarModeFeatureEnabled") now returns false in Forever.
- [GetInspectHonorData](https://warcraft.wiki.gg/wiki/API:GetInspectHonorData "API:GetInspectHonorData") now returns two additional values: the inspected player's current honor and the honor needed for their next level.
- [Edit Mode](https://warcraft.wiki.gg/wiki/Edit_Mode "Edit Mode") layouts are now saved separately for each UI type (mouse and keyboard vs. gamepad).

### 2026-09-15

[*An Update On Secrets In WoW: Forever*](https://discord.com/channels/327414731654692866/1549523107520188476)

> WoW Forever shares Mainline WoW's UI architecture, including the vast majority of APIs available in 12.1.5. From a UI loading perspective, the easiest way to think about it is that Forever and modern WoW (Midnight) are two game types within the Mainline code family: Camelot (to be renamed before launch) and Standard, respectively.
>
> The addon disarmament changes introduced in Midnight, including secrets, will also be active in Forever.
>
> The AuraContainer/AuraButton changes introduced in 12.1.0 will be available as well, and you can expect similar UI changes in the future to be introduced to both Standard and Forever.

## Consolidated changes

[12.1.5 (69952)](https://warcraft.wiki.gg/wiki/Patch_12.1.5/API_changes "Patch 12.1.5/API changes") → 1.60.1 (70205) Oct 2 2026

### Global API

[TABLE]

### FrameXML

[TABLE]

### Widgets

[TABLE]

### Events

[TABLE]

### CVars

[TABLE]

## References

 

1.  [^](#cite_ref-1) WoWUIDev \#bugs: [WOW_PROJECT_ID for Forever seems to be the same as Retail](https://discord.com/channels/327414731654692866/1550603608003842121)
2.  [^](#cite_ref-2) WoWUIDev \#bugs: [UnitName("player") returns "Unknown", nil before PLAYER_LOGIN fires](https://discord.com/channels/327414731654692866/1552849167309606954)
3.  [^](#cite_ref-3) WoWUIDev \#bugs: [SavedVariables not loading](https://discord.com/channels/327414731654692866/1550422504831586415)
4.  [^](#cite_ref-4) WoWUIDev \#bugs: [RestrictedEnvironment not loading](https://discord.com/channels/327414731654692866/1550273499916927037)
5.  [^](#cite_ref-5) WoWUIDev \#bugs: [UnitName is not consistent on Forever Beta between UnitToken](https://discord.com/channels/327414731654692866/1550272311247110274)

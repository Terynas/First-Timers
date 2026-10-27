# Forever hard rules

## Blizzard position (official)

From Blizzard’s Forever secrets update (2026-09-15) and Patch 1.60.1 notes:

- Forever shares **Mainline UI architecture** and the vast majority of APIs available in **12.1.5**.
- Forever and Midnight are two game types in the Mainline family: **Camelot/forever** vs **standard**.
- **Secret values** and Midnight-style addon disarmament are **active on Forever**.
- AuraContainer / AuraButton changes from 12.1.0 apply as well.

Source: [Patch 1.60.1/API changes](https://warcraft.wiki.gg/wiki/Patch_1.60.1/API_changes) (blue posts section).

## TOC

```toc
## Interface: 16001
## Title: My Addon
## SavedVariables: MyAddonDB
## AllowLoadGameType: forever
## ExcludeLoadGameType: standard, classic
```

Notes:

- `forever` is accepted as an alias for `camelot` (TOC suffixes like `MyAddon_Forever.toc`, `[Game]` variable).
- On non-Forever clients, unrecognized game types may still load; **ExcludeLoadGameType** is required for Forever-only addons.
- When dual-shipping titles, list Forever/`forever` lines **first** so they are not overwritten on other clients.
- After TOC edits: **full client restart**, not `/reload`.

## Detection

```lua
local isForever = (WOW_PROJECT_CAMELOT ~= nil)
    and (WOW_PROJECT_ID == WOW_PROJECT_CAMELOT)

-- Fallback by interface band
local iface = select(4, GetBuildInfo())
local ifaceForever = type(iface) == "number" and iface > 16000 and iface < 20000
```

Do **not** detect Forever with `WOW_PROJECT_CLASSIC` or “Mainline project ID + Classic expansion” alone — older wiki examples are stale. Prefer `WOW_PROJECT_CAMELOT` when present.

Optional TOC metadata:

```toc
## X-Game: [Game]
## X-Family: [Family]
```

Read with `C_AddOns.GetAddOnMetadata("MyAddOn", "X-Game")` (expect `Camelot` / Forever). Prefer `C_AddOns.GetAddOnMetadata` over legacy `GetAddOnMetadata`.

## Modern API defaults

Prefer Mainline-style namespaces. Common replacements AI still writes wrong:

| Avoid (Classic-era) | Prefer on Forever |
|---------------------|-------------------|
| `GetSpellInfo` | `C_Spell.GetSpellInfo` (+ `RequestLoadSpellData` / `SPELL_DATA_LOAD_RESULT`) |
| `GetItemInfo` | `C_Item.GetItemInfo` (+ `RequestLoadItemDataByID` / `ITEM_DATA_LOAD_RESULT`) |
| `GetAddOnMetadata` | `C_AddOns.GetAddOnMetadata` |
| `GetContainerNumSlots` / bag APIs | `C_Container.*` when present |
| `InterfaceOptions_AddCategory` | Settings API (`Settings.*`) with legacy fallback |
| CLEU / `CombatLogGetCurrentEventInfo` | Unit events / encounter events — CLEU is unavailable or blocked for addons |

Always confirm the exact signature in `api/WowForeverAPI.lua`.

## Secret values

Treat Forever like Midnight for secrets:

- Guard with `issecretvalue(x)` before compare/arithmetic/length/indexing.
- Truthiness on secret numbers/strings may be allowed; secret **booleans** are not safe to branch on.
- Pass secret values into Blizzard APIs that accept them (e.g. status bars); do not print or format them without scrubbing.

```lua
local function Sealed(v)
    return type(issecretvalue) == "function" and issecretvalue(v)
end
```

## Game rules / experience preset

```lua
if C_GameRules and C_GameRules.GetForeverExperiencePreset then
    local preset = C_GameRules.GetForeverExperiencePreset()
    -- Enum.ForeverExperiencePreset.Classic / .Modern
end
```

Ruleset ≠ project ID. Use `C_GameRules.IsGameRuleActive`, `IsHardcoreActive`, etc. for mode-specific features.

## Names and Regional Unique Names

Forever uses **first + surname**. Prefer `NameUtil` / `UnitNameUnmodified` patterns; see forever-quirks.md. `RegionalUniqueNamesEnabled()` exists in the Forever API dump.

## Chat security (1.60.1 beta notes)

- `SendChatMessage` with `"EMOTE"` requires a **hardware event** outside instances (same as SAY/YELL).
- Trial accounts cannot send addon messages.
- Prefer looking up `C_ChatInfo.SendChatMessage` in the API dump; languageID is numeric when passed.

## Local paths (this machine)

| | Path |
|---|---|
| Client root | `<your WoW folder>/_classic_beta_/` |
| AddOns | `.../Interface/AddOns/` |
| Executable | `WowB.exe` |
| Deploy ForeverDungeons | `scripts/deploy_foreverdungeons.sh` |
| Deploy SnapPostForever | `scripts/deploy_snappost_forever.sh` |

Do not symlink AddOns into the Windows client tree — use rsync deploy scripts.

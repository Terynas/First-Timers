# Forever quirks verified in this repo

These are **machine-observed** on Forever (`_classic_beta_`, Interface 16001) while building ForeverDungeons and SnapPostForever. Prefer these over Classic tutorials when they conflict.

## UnitName / surnames

`UnitName` / `UnitNameUnmodified` return `(firstName, surname)`, not `(name, realm)`.

- Display as `"First Last"` when surname is present and is not the realm name.
- Chat often shows the full name; `UnitName("player")` may be first name only.
- Deduplicate by GUID or full name — do not create a second row for the short name.
- Mail **To** on Forever uses the full name (see SnapPostForever `ComposeFullName` / `PlayerFullName`).

Helpers in the Forever API dump: `C_NameUtil.*`, `RegionalUniqueNamesEnabled()`, `C_PlayerInfo.ShouldDisplaySurname`.

## Channel chat send

Observed failures and the working pattern:

1. Prefer `C_ChatInfo.SendMessage({ message = text, chatType = "CHANNEL", target = tostring(channelIndex) })` when that API exists at runtime.
2. Else `SendChatMessage(text, "CHANNEL", nil, tostring(channelIndex))` — **omit** language name strings.
3. `GetDefaultLanguage("player")` returns `"Common"` (a name). Passing that as languageID into `C_ChatInfo.SendMessage` / SendChatMessage-style arg 3 throws: *outside of expected range 0 to 4294967295*.
4. Channel **target must be a string** channel index. A raw number is dropped and the line never appears.
5. Match joined channels with `GetChannelList` / `GetChannelName`. Names look like `Trade - City` — compare the base before ` - `.
6. Forever often **does not echo** your own `CHAT_MSG_CHANNEL`. After a successful send, echo locally into chat frames and ingest into your own board if needed.
7. Class-color the local echo with `UnitClass("player")`; `GetPlayerInfoByGUID` often misses the local player.

## Protected / silent failures

- Never call `TargetUnit`, `TargetByName`, `TargetLastTarget`, `ClearTarget` from addons — client popup; `pcall` does not hide it.
- Some protected UI calls fail **silently** (AddOns “Interface action failed” counter). Prefer not calling `ChatFrame_OpenChat` / `ChatEdit_ActivateChat` from addons.
- Prefer `PlaySound(SOUNDKIT.*)` over `PlaySoundFile` on Interface oggs.

## UI templates that break Forever frames

Do not use (taken down ForeverDungeons UI):

- `UICheckButtonTemplate` — build the check button yourself
- named `InputBoxTemplate` inside a large dialog — keep edit boxes in a separate window
- `Interface\SpellActivationOverlay\IconAlert` glow textures

Use `BackdropTemplate` for custom frames. Higher strata for overlays over `DIALOG` (`FULLSCREEN_DIALOG`).

## Bags / mail / professions

- Prefer `C_Container` when present; keep classic bag globals as fallback.
- Profession scan: `GetProfessions` / `GetProfessionInfo` when present; else `C_TradeSkillUI` — only store lines with **skillLevel > 0** (catalog lines with 0 are not learned).
- Settings: prefer modern `Settings` API; keep `InterfaceOptions_AddCategory` fallback.

## Event handler order

Wire `SetScript("OnEvent", ...)` **before** `RegisterEvent` (same as Mainline guidance).

## CLEU / combat meters

Do not build features on `COMBAT_LOG_EVENT_UNFILTERED` / `CombatLogGetCurrentEventInfo` for Forever. Use unit events, encounter events, or Blizzard’s built-in tools.

## Spell / item data

```lua
local info = C_Spell.GetSpellInfo(spellID)
if not info then
    C_Spell.RequestLoadSpellData(spellID)
    return
end
```

Same pattern for `C_Item.GetItemInfo` + `RequestLoadItemDataByID`. Guard secret fields before printing.

## Deploy

| Addon | Script |
|-------|--------|
| ForeverDungeons | `bash scripts/deploy_foreverdungeons.sh` (needs full perms outside workspace) |
| SnapPostForever | `bash scripts/deploy_snappost_forever.sh` |

Real directory copy only — no symlinks for `WowB.exe`.

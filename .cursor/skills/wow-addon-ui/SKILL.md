---
name: wow-addon-ui
description: >-
  First Timers standard addon UI: the stone-and-gold window style shared by
  SnapPost Forever and ProfessionMaster. Use when building or restyling any
  addon window, panel, list, sidebar, dropdown, minimap button, options page
  or first-open intro, or when the user mentions UI, frame, window, layout,
  theme, chrome, "make it look like SnapPost/ProfessionMaster", or a standard
  first-timer UI. Start from 07-starter/more-examples/StandardUI/UIKit.lua.
---

# WoW addon UI standard (First Timers)

Every addon in this family uses one look: a **charcoal stone fill**, **Blizzard gold dialog border**, gold-rimmed inset wells, parchment text and thin gold rules. A first-timer addon should look like a sibling of SnapPost Forever and ProfessionMaster, not like a new design.

Do not invent new chrome, colours or fonts. Reuse the kit, then build the content.

## Start here

1. Copy `07-starter/more-examples/StandardUI/UIKit.lua` into the addon and list it **first** in the TOC.
2. Optional stone fill: copy `panel-stone.tga` (512×512 RGBA) from SnapPost Forever's or ProfessionMaster's `Media/` into the addon's `Media/`, then set `ns.UIKit.STONE = "Interface\\AddOns\\<Addon>\\Media\\panel-stone"` before building frames. Without it the kit falls back to Blizzard's dark dialog background.
3. Build with `UIKit.CreateWindow`, `UIKit.Inset`, `UIKit.ScrollList` + `UIKit.AcquireRow`, `UIKit.MinimapButton` and `UIKit.RegisterOptions`. `StandardUI.lua` shows all of them together.
4. Run the luacheck gate (`wow-luacheck` skill), then test in game with `/sui` (or the addon's own slash command).

## The standard

### Chrome

| Surface | Backdrop |
|---------|----------|
| Window | fill `panel-stone`, edge `Interface\DialogFrame\UI-DialogBox-Border`, edgeSize 32, tileSize 128, insets 11/12/12/11 |
| Inset well, row, tab | fill `panel-stone`, edge `Interface\Tooltips\UI-Tooltip-Border`, edgeSize 12, insets 3 |
| Chip / small well | fill `WHITE8X8`, tooltip border, tileSize 64, edgeSize 10, insets 2 |

All frames with a backdrop need the `"BackdropTemplate"` template (Forever, Classic Era and Midnight all require it).

### Palette (`UIKit.THEME`)

| Key | RGBA | Used for |
|-----|------|----------|
| `border` | 1, 0.82, 0, 1 | Window border (Blizzard gold) |
| `insetBorder` | 0.85, 0.70, 0.20, 1 | Inset wells, selected tab |
| `rowBorder` | 0.70, 0.58, 0.18, 0.75 | List rows |
| `title` | 1, 0.82, 0 | Window title, section labels |
| `subtitle` | 0.85, 0.82, 0.75 | Secondary info text |
| `parchment` | 0.93, 0.87, 0.72 | Row text, window subtitle |
| `gold` | 0.95, 0.75, 0.25 | Gold rules, icon rims, chevrons |

Fill colours stay white (`1,1,1`) because the stone texture carries the colour.

### Typography

- Window title: `GameFontNormalHuge`, `title` colour, 1/−1 black shadow.
- Window subtitle: `GameFontHighlightSmall`, `parchment`.
- Section label: `GameFontNormal`, `title`, followed by a gold rule to the right edge.
- Row text: `GameFontHighlight` in `parchment`; right-hand detail `GameFontHighlightSmall`.
- Hints and placeholders: `GameFontDisableSmall`.

### Layout (`UIKit.LAYOUT`)

`HEADER_H 64`, `PAD 16`, `SIDEBAR_W 168`, `FOOTER_H 40`, `ROW_H 34`, `ROW_GAP 4`, `ICON 22`.

- Header: title and subtitle top-left, gold rule at `HEADER_H`, `UIPanelCloseButton` at TOPRIGHT −2,−2.
- Body: optional inset sidebar (`SIDEBAR_W`) on the left, inset main well filling the rest, footer strip (`FOOTER_H`) with a gold rule and action buttons on the right.
- Default main window 820×650 (SnapPost); smaller tools may shrink, but keep the proportions.

### Window behaviour

- `SetFrameStrata("DIALOG")`, `SetToplevel(true)`, `SetClampedToScreen(true)`.
- Movable by left-drag on the window; close any open dropdown menu on drag start.
- Add the global frame name to `UISpecialFrames` so Esc closes it.
- Build lazily on first open. If the layout changes between versions, bump a `LAYOUT_VERSION` constant and rebuild when the stored version differs.
- Don't open or rebuild protected UI in combat: check `InCombatLockdown()` and say so in chat.

### Lists

- Use pooled rows: `UIKit.AcquireRow(list, i)` per visible item, then `UIKit.FinishRows(list, count)`. Never create frames on every refresh.
- Row = inset backdrop + gold-rim icon (`UIKit.IconFrame`) + parchment text + right detail + `ButtonHilight-Square` ADD highlight at alpha 0.35.
- A dropdown-style row gets a 20×20 chip on the right with a gold `v` chevron (`UIKit.ApplyChip`).

### Controls

- Buttons: `UIPanelButtonTemplate`, height 24.
- Search box: `InputBoxTemplate` with a `GameFontDisableSmall` placeholder hidden while focused or non-empty.
- Dropdowns: a small custom dropdown (BackdropTemplate button + `FULLSCREEN_DIALOG` menu, dark dialog background, tooltip border tinted 0.72/0.58/0.22). Keep one open at a time and expose `CloseAll()`. SnapPost Forever's `Dropdown.lua` is the reference. Avoid `UIDropDownMenuTemplate`; it differs across clients.
- Scrolling: `UIPanelScrollFrameTemplate` inside an inset, scroll child width follows the scroll frame.

### Minimap button

`UIKit.MinimapButton(db, opts)`: 32×32 button on the Minimap with `MiniMap-TrackingBorder`, a 20×20 cropped icon and a drag-to-orbit angle saved in `db.angle` (default 200). Left-click opens the window; right-click opens options; the tooltip lists both and "Drag: move icon". A "Show minimap icon" option toggles `db.hide`.

### Options page

`UIKit.RegisterOptions(title, settingsTable, checkboxes)` registers under **Options → AddOns** with `Settings.RegisterVerticalLayoutCategory` + `Settings.RegisterProxySetting` + `Settings.CreateCheckbox`, and falls back to `InterfaceOptions_AddCategory` where Settings is missing. Bigger addons add canvas subcategories (`Settings.RegisterCanvasLayoutSubcategory`) for tool panels, styled with the same chrome.

### First-open intro

Show a short guide once (store `introSeen` in SavedVariables): what the window does, where options live, the slash command. Keep it in the window's style: an inset panel or a short chat line, never a modal popup on login.

## Client compatibility

The kit uses only APIs available on Forever (16001), Classic Era (11509) and Midnight (12.x): `BackdropTemplate`, `UIPanelCloseButton`, `UIPanelButtonTemplate`, `UIPanelScrollFrameTemplate`, `UICheckButtonTemplate`, `Settings`. Before adding anything new, check it with the `wow-forever-api` skill (Forever) and Blizzard's `classic_era` UI source (Era).

## Checklist

- [ ] `UIKit.lua` first in the TOC; no copy-pasted variant chrome.
- [ ] Window: stone fill, gold dialog border, title/subtitle/gold rule, close button, DIALOG strata, Esc closes, movable, clamped.
- [ ] Insets, rows and tabs use the inset backdrop and `THEME` colours only.
- [ ] Rows pooled; no frame creation per refresh.
- [ ] Minimap button with drag + hide option; right-click opens options.
- [ ] Options under Options → AddOns with a legacy fallback.
- [ ] Intro shown once; combat-lockdown check before opening.
- [ ] New globals added to `.luacheckrc` (`globals` for SavedVariables and `SLASH_*`, `read_globals` for Blizzard API); luacheck clean.
- [ ] Tested in game on each client the TOC lists.

## Agent report shape

When you finish UI work, say which kit pieces you used, any deviation from the standard and why, the luacheck result, and which clients you tested on.

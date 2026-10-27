# First Timers: WoW addon development for Forever and Midnight

Everything you need to start writing addons for **WoW Forever** (Interface `16001`) and **Midnight** (retail, Interface `120105` / `120107`), downloaded into one place so you can read and search it offline.

Run `bash "First Timers/sync.sh"` any time to update it all (`sync.sh docs` refreshes only the guide pages, which is quick).

**Cloned this repo from GitHub?** Run `bash sync.sh` once. The Blizzard source, API docs, libraries and the wowforeverguides.com pages aren't stored in the repo (they belong to their authors), so `sync.sh` downloads them from the original sources.

## Start here

1. **Read** `01-guides/wiki/01-getting-started.md`. It builds a Hello World addon in 15 minutes.
2. **Run** the starter addon: copy `07-starter/HelloAzeroth/` into your client's `Interface/AddOns/`, restart the game, and type `/hello`. It loads on both Forever and Midnight.
3. **Read the Forever notes** before writing Forever code: `06-notes/forever-rules.md`, `06-notes/forever-quirks.md`, then `01-guides/forever/` in order (1 to 5).
4. **Read** `01-guides/wiki/midnight-12.0.0-api-changes.md` and `06-notes/addon-dev/midnight-12.md`. Midnight changed a lot (secret values, no combat log for addons), and Forever inherits most of it.
5. **Look things up** in the API docs (below) whenever you're about to call a function you haven't used.

## What's in each folder

| Folder | What it is | Source |
|--------|------------|--------|
| `01-guides/wiki/` | Warcraft Wiki pages as Markdown. Numbered pages are tutorials in reading order; `ref-*` are references (all API functions, all events, widget methods, script handlers, CVars). Includes the Midnight 12.0.0 and Forever 1.60.1 API change lists | [warcraft.wiki.gg](https://warcraft.wiki.gg) |
| `01-guides/forever/` | The Forever addon developer series: developer guide, patterns, API cheat sheet, pitfalls, code templates | [wowforeverguides.com](https://wowforeverguides.com/addons/developers) |
| `02-api-docs/forever-api-dump/` | Every Forever API function, generated from the Forever client itself (`types/WowForeverAPI.lua`) | [Atraeau/WoW-Addons](https://github.com/Atraeau/WoW-Addons) |
| `02-api-docs/vscode-wow-api/` | Type annotations for the whole API (`Annotations/`). Install the [WoW API extension](https://marketplace.visualstudio.com/items?itemName=ketho.wow-api) in VS Code or Cursor to get autocomplete and inline docs from these | [Ketho/vscode-wow-api](https://github.com/Ketho/vscode-wow-api) |
| `03-blizzard-source/midnight-live/` | Blizzard's own UI code for Midnight (FrameXML + `Interface/AddOns/Blizzard_*`) | [Gethe/wow-ui-source](https://github.com/Gethe/wow-ui-source) `live` branch |
| `03-blizzard-source/forever/` | The same for the Forever client | `forever` branch |
| `04-interface-resources/<client>/Resources/` | Plain lists per client: `GlobalAPI.lua`, `Events.lua`, `Frames.lua`, `Templates.lua`, `AtlasInfo.lua` (texture atlas names), `GlobalStrings/`, `CVars.lua`, `Mixins.lua` | [Ketho/BlizzardInterfaceResources](https://github.com/Ketho/BlizzardInterfaceResources) |
| `05-libraries/Ace3/` | Ace3, the most used addon framework (addon objects, events, saved profiles, config UI). Includes LibStub | [WoWUIDev/Ace3](https://github.com/WoWUIDev/Ace3) |
| `05-libraries/packager/` | The release packager CurseForge / Wago / WoWInterface projects use to build zips | [BigWigsMods/packager](https://github.com/BigWigsMods/packager) |
| `06-notes/` | Notes written while building SnapPost and ProfessionMaster: Forever rules, machine-verified Forever quirks, and topic guides (TOC format, events, SavedVariables, taint and debugging, secure templates, slash commands, localization, Ace3, packaging) | this workspace |
| `07-starter/HelloAzeroth/` | A working starter addon for both clients: event handling, a slash command, saved settings, Forever detection | this workspace |
| `07-starter/more-examples/` | Bigger examples: Ace3 addon, options panel, addon-to-addon messages, boss encounter handling, multi-version TOCs. Their TOCs say `120005`, so update `## Interface:` before loading them | this workspace |

## Which source wins when they disagree

- **Forever:** the client's generated docs are the truth. Use `03-blizzard-source/forever/Interface/AddOns/Blizzard_APIDocumentationGenerated/` (newest, build 70532) or the `/api` command in game. `02-api-docs/forever-api-dump` is easier to search but was generated from an older build (70170). Then check the quirks in `06-notes/forever-quirks.md`.
- **Midnight:** `03-blizzard-source/midnight-live/.../Blizzard_APIDocumentationGenerated/`, then the wiki.
- **Forever is not Classic.** It's a modern client (`C_Spell`, `C_Item`, the Settings API, secret values) with Classic-style content. Code copied from Classic Era addons usually needs rewriting.

## Handy searches

```bash
cd "First Timers"
rg -n "GetItemInfo" 03-blizzard-source/forever/Interface/AddOns/Blizzard_APIDocumentationGenerated/
rg -n "MAIL_SHOW" 04-interface-resources/*/Resources/Events.lua
rg -n "^## " 01-guides/wiki/ref-events.md | rg -i trade
```

## Versions downloaded

| Source | Build |
|--------|-------|
| Midnight UI source / resources | 12.1.5 (70575 / 70448) |
| Forever UI source / resources | 1.60.1 (70532) |
| Forever API dump | build 70170 |

Wiki and guide pages carry their source URL at the top. Warcraft Wiki text is CC BY-SA; the repositories keep their own licenses inside their folders.

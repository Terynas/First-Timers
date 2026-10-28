# Luacheck & code quality (publish gate)

Before you call an addon “done”, **package** it, **upload** it, or **post** it (CurseForge, Wago, WoWInterface, GitHub, Discord, **r/wowaddons**), run a **Lua static check**. In this library that means **[luacheck](https://luacheck.readthedocs.io/)**.

AI agents must treat this as a **hard gate** — see root [`AGENTS.md`](../../AGENTS.md) and the Cursor skill [`.cursor/skills/wow-luacheck/SKILL.md`](../../.cursor/skills/wow-luacheck/SKILL.md).

## Why

- Catches syntax errors and many undefined globals **before** `/reload`
- Flags **unnecessary globals** (a common r/wowaddons / AI-code rejection reason)
- Complements (does not replace) in-game testing, BugSack, and security/performance checklists

r/wowaddons expects releases to be tested and free of sloppy globals / severe perf issues; mods often audit with tooling such as [Ketho’s WoW API](https://marketplace.visualstudio.com/items?itemName=ketho.wow-api) (LuaLS). **luacheck** is the CLI equivalent you can run in CI and agent workflows every time.

## Install luacheck separately (required)

**luacheck is not bundled with this library or with WoW.** You install it once on your machine, then use this repo’s [`.luacheckrc`](../../.luacheckrc) when you run it.

| Environment | How to get the binary |
|-------------|------------------------|
| **Parent WoWAddons monorepo** (recommended if you clone the full workspace) | `bash scripts/bootstrap_luacheck.sh` → uses `.tools/luacheck/bin/luacheck` |
| **This First Timers repo alone** | Install [Lua 5.1](https://www.lua.org/) + [LuaRocks](https://luarocks.org/), then `luarocks install luacheck` so `luacheck` is on your `PATH` |
| **Linux package** (optional) | e.g. Debian/Ubuntu `sudo apt install lua-check` (provides `luacheck` / `lua-check` — confirm the command name) |
| **Cursor + wow-addons MCP** | MCP `wow_luacheck` still needs a binary: monorepo bootstrap above, or `WOW_LUACHECK` / `PATH` |

Docs: [luacheck.readthedocs.io](https://luacheck.readthedocs.io/). Verify with `luacheck --version` (or the full path under `.tools/`).

## Quick start

This repo includes a root [`.luacheckrc`](../../.luacheckrc) tuned for WoW Lua 5.1 + common Forever/Midnight globals. After install:

```bash
# First Timers (standalone) — luacheck must already be on PATH
luacheck 07-starter/HelloAzeroth

# Parent WoWAddons monorepo
bash scripts/bootstrap_luacheck.sh   # once per machine
.tools/luacheck/bin/luacheck "First Timers/07-starter/HelloAzeroth"
# or MCP: wow_luacheck with addon_path = First Timers/07-starter/HelloAzeroth
```

Ship a `.luacheckrc` in your own addon repo (copy this one and trim `read_globals` / `globals` as needed). Prefer **prefixed** addon globals (`HelloAzerothDB`) listed under `globals` only when they must be global (SavedVariables, slash handlers).

## What to fix vs ignore

| Prefer fixing | Acceptable ignore (narrow + commented) |
|---------------|----------------------------------------|
| Syntax errors | Vendor `Libs/` trees |
| Accidental globals (`foo = 1` at file scope) | Generated data tables (line length only) |
| Typos (`hepler` vs `helper`) | Unused `self` / callback args (often ignored in config) |
| Shadowed locals that confuse readers | |

Never disable all global warnings to “make CI green” for AI-generated code.

## GUI / complementary scanners (optional)

**luacheck remains the mandatory gate** in this library. The tools below are useful extras (local dashboard, ZIP upload, IDE, or CI). None of them replace a clean luacheck run before finish / publish.

| Tool | Kind | What it does |
|------|------|----------------|
| [**Mechanic Desktop**](https://github.com/Falkicon/Mechanic/blob/main/desktop/README.md) | Local companion + browser **dashboard** (`mech dashboard`) | Lint (luacheck), TOC validate, deprecation scan, dead-code / Lua analysis, SavedVariables watcher. Windows full; macOS partial. Closest thing to a “GUI scanner” for a local addon folder. |
| [**Globe**](https://www.townlong-yak.com/globe/about) | **Web** upload UI | Upload an addon ZIP → globals, events, widgets, warnings. No desktop install. |
| [**wowlua**](https://wowlua.dev/) | IDE + emulated client UI | Debug / click / test addons in a GUI. Strong for *running* UI, not a one-click folder scan. |
| [**WoW Lua Language Server**](https://marketplace.visualstudio.com/items?itemName=TradeSkillMaster.wowlua-ls) ([wowlua-ls](https://github.com/TradeSkillMaster/wowlua-ls)) | VS Code / Cursor diagnostics + `wowlua_ls check` CLI | Live IDE squiggles; complements Ketho’s WoW API extension. |
| [**AddonSentry**](https://addonsentry.io/) | Hosted CI / PR scans | Patch-break and API-risk checks via GitHub/API — not a local desktop GUI. |

**Suggested habit:** keep **luacheck** (CLI or MCP `wow_luacheck`) for every change; use **Mechanic** or **Globe** when you want a visual overview; use **wowlua-ls** in the editor day-to-day.

## Definition of done (with other gates)

1. **luacheck clean** (this note)
2. Security checklist — [`security-and-trust.md`](security-and-trust.md)
3. Performance checklist — [`performance-and-resources.md`](performance-and-resources.md)
4. AI workflow honesty — [`ai-assisted-best-practices.md`](ai-assisted-best-practices.md)
5. Packaging — [`distribution-and-packaging.md`](distribution-and-packaging.md)

## r/wowaddons posting (extra)

- Correct flair (Release only if playable and tested; otherwise Development / WIP)
- **AI Disclaimer:** if any AI was used for code, text, or assets
- Screenshots for UI addons; trusted hosts (CurseForge / Wago / WoWInterface / GitHub)
- Run luacheck **before** you hit submit

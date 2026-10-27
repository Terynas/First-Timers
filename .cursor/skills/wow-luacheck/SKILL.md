---
name: wow-luacheck
description: >-
  Mandatory Lua static check for WoW addons before finishing any Lua/TOC task,
  packaging, CurseForge/Wago/WoWInterface upload, GitHub release, or sharing
  (including r/wowaddons). Use when editing .lua, publishing, packaging,
  reviewing AI-written addon code, or when the user mentions luacheck, lint,
  globals, code quality, or Reddit wowaddons posting. Prefer MCP wow_luacheck;
  fall back to repo .tools/luacheck or local luacheck + .luacheckrc.
---

# WoW addon luacheck (mandatory gate)

Static analysis catches **syntax errors**, **undefined / unnecessary globals**, and common Lua footguns **before** in-game testing or community posts. r/wowaddons audits releases for unnecessary globals and low-quality AI code (often with Ketho’s WoW API tooling); **luacheck** is the automated gate you run every time in this workflow.

## When you must run it

Run a clean luacheck (or fix + re-run until clean / documented exceptions) **before calling the work done** when any of these apply:

1. You created, edited, or generated **`.lua`** (or TOC that lists new Lua files)
2. You are about to **package, tag, upload, or post** an addon (CurseForge, Wago, WoWInterface, GitHub Release, Discord, **r/wowaddons**, etc.)
3. You finished a **review** or “make it shippable” pass on addon code

Docs-only edits with **no** Lua/TOC change: skip.

Do **not** say the task is complete if luacheck was skipped when it was required.

## Install first (not shipped with First Timers / WoW)

**luacheck must be installed separately.** This library only ships `.luacheckrc` + the workflow. If the binary is missing, install before claiming the gate passed:

- WoWAddons monorepo: `bash scripts/bootstrap_luacheck.sh` → `.tools/luacheck/bin/luacheck`
- Standalone: Lua 5.1 + LuaRocks → `luarocks install luacheck`
- Optional Linux package: `lua-check` / `luacheck` from distro repos
- Details: `06-notes/addon-dev/luacheck-and-code-quality.md` (§ Install)

## How to run (prefer this order)

### A. Cursor / WoWAddons workspace with MCP

Call **`wow_luacheck`** from the **wow-addons** MCP with `addon_path` relative to the WoWAddons root, e.g.:

- `SnapPostForever`
- `ProfessionMaster`
- `ForeverDungeons`
- `First Timers/07-starter/HelloAzeroth`

Fix every reported issue (or add a narrow, commented `.luacheckrc` / inline exception with a one-line reason). Re-run until clean.

### B. CLI in the WoWAddons monorepo

```bash
# once per machine if missing
bash scripts/bootstrap_luacheck.sh

.tools/luacheck/bin/luacheck <AddonFolderOrPath>
# uses repo-root .luacheckrc (WoW Forever / Mainline-family globals)
```

### C. First Timers repo (standalone or this folder)

```bash
# from the First Timers root (this library ships .luacheckrc)
luacheck 07-starter/HelloAzeroth
# or any addon folder you are editing under 07-starter/
```

If `luacheck` is not on `PATH`, use the monorepo binary above or install via LuaRocks (`luarocks install luacheck`) with Lua 5.1.

## What “clean” means

- Exit code **0**, or only **documented** ignores (`.luacheckrc` / `--ignore` / inline `luacheck: ignore` with a short reason)
- No undeclared **globals** that should be `local` or prefixed (`MyAddon_`)
- No syntax errors
- Do not blanket-ignore `111`/`112`/`113` (undefined / setting globals) to silence AI slop

## Community / publish checklist (with luacheck)

After luacheck is clean, still do the human gates:

- [ ] Security checklist (`06-notes/addon-dev/security-and-trust.md`)
- [ ] Performance checklist (`06-notes/addon-dev/performance-and-resources.md`)
- [ ] TOC Interface / game-type match the target client
- [ ] If posting to **r/wowaddons**: correct flair, honest description, screenshots for UI, **AI Disclaimer:** if AI was used, trusted host links only

Longer note: [`06-notes/addon-dev/luacheck-and-code-quality.md`](../../../06-notes/addon-dev/luacheck-and-code-quality.md)

## Agent report shape

When finishing a Lua task, include one line:

```text
luacheck: clean (path=…, via=wow_luacheck|cli)
```

or list remaining warnings and why they are accepted.

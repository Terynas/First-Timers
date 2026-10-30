# Agent instructions (all AI tools)

Tool-agnostic contract for coding agents working in this repository (Claude Code, GitHub Copilot, Cursor, Codex, Gemini CLI, Windsurf, Continue, Aider, and similar).

**Canonical docs** (read before substantial Lua/TOC work):

| Doc | Role |
|-----|------|
| [`06-notes/addon-dev/ai-assisted-best-practices.md`](06-notes/addon-dev/ai-assisted-best-practices.md) | Workflow, common AI mistakes, definition of done |
| [`06-notes/addon-dev/agent-memory-setup.md`](06-notes/addon-dev/agent-memory-setup.md) | **Hindsight + optional Obsidian** — stop re-burning tokens |
| [`06-notes/addon-dev/luacheck-and-code-quality.md`](06-notes/addon-dev/luacheck-and-code-quality.md) | **Mandatory** luacheck before finish / publish |
| [`06-notes/addon-dev/lua-learning-resources.md`](06-notes/addon-dev/lua-learning-resources.md) | Lua 5.1 books / manuals (PiL, reference manual, …) |
| [`06-notes/addon-dev/security-and-trust.md`](06-notes/addon-dev/security-and-trust.md) | Security merge gate |
| [`06-notes/addon-dev/performance-and-resources.md`](06-notes/addon-dev/performance-and-resources.md) | Performance / FPS merge gate |
| [`06-notes/forever-rules.md`](06-notes/forever-rules.md) | Forever client hard rules |
| [`06-notes/forever-quirks.md`](06-notes/forever-quirks.md) | Runtime Forever quirks |
| [`.cursor/skills/wow-luacheck/SKILL.md`](.cursor/skills/wow-luacheck/SKILL.md) | Agent skill: how to run luacheck (MCP / CLI) |
| [`.cursor/skills/wow-addon-ui/SKILL.md`](.cursor/skills/wow-addon-ui/SKILL.md) | Agent skill: standard addon UI (stone-and-gold window, rows, minimap button, options) built on [`StandardUI/UIKit.lua`](07-starter/more-examples/StandardUI/UIKit.lua) |

How each tool loads these: see [README — Using with AI coding tools](README.md#using-with-ai-coding-tools).

## Client truth

- **Forever** = Interface `16001`, Mainline-family (Camelot): secrets + modern `C_*` APIs. **Not** Classic Era.
- **Midnight** = Interface `120105` / `120107`: secrets; no addon CLEU.
- When sources disagree: client generated docs (after `bash sync.sh`) and in-game `/dump` win.
- TOC edits → **full client restart**. Lua-only edits → `/reload`.

## Must

- Verify every API against Forever/Midnight docs — **do not invent** symbols.
- **Use durable memory** so sessions do not re-teach Forever/Midnight: prefer **Hindsight** search/ingest/initiatives; optional **Obsidian** for short human canon. See [`agent-memory-setup.md`](06-notes/addon-dev/agent-memory-setup.md) and [`.cursor/rules/wow-addon-ai-memory.mdc`](.cursor/rules/wow-addon-ai-memory.mdc). Never paste full API dumps into chat or memory.
- **Run luacheck** on every touched addon path before finishing any Lua/TOC task and **before packaging, publishing, or posting** (CurseForge / Wago / WoWInterface / GitHub / r/wowaddons). Prefer MCP `wow_luacheck`; else CLI + [`.luacheckrc`](.luacheckrc). **luacheck is a separate install** (not in this repo) — see [`luacheck-and-code-quality.md`](06-notes/addon-dev/luacheck-and-code-quality.md) § Install and [`.cursor/skills/wow-luacheck/SKILL.md`](.cursor/skills/wow-luacheck/SKILL.md). Do not claim done if the check was skipped.
- No `loadstring` / `RunScript` on chat, addon messages, or untrusted SavedVariables.
- Hook Blizzard with `hooksecurefunc` / `HookScript` only — do not replace `_G` Blizzard functions.
- Check `InCombatLockdown()` before mutating secure/protected frames; queue for `PLAYER_REGEN_ENABLED`.
- Never store secret values or functions in SavedVariables.
- Prefer `RegisterEvent` / `RegisterUnitEvent` and `C_Timer` over bare `OnUpdate` (throttle + clear if unavoidable).
- Create frames once or via a pool — never `CreateFrame` inside frequent rebuilds.
- Init SavedVariables on `ADDON_LOADED` with an addon-name check; set `OnEvent` before `RegisterEvent`.
- Prefix globals and frame names (`MyAddon_`).
- Build windows and panels with the standard UI kit ([`wow-addon-ui`](.cursor/skills/wow-addon-ui/SKILL.md)); do not invent new chrome or colours.
- Smallest correct change; avoid Ace3 unless config/profile complexity needs it.
- State what was **not** tested in-game.

## Must not

- Assume Classic Era APIs or “no secrets” on Forever/Midnight.
- Auto-spam chat from combat or untrusted triggers without opt-in + rate limits.
- Claim secure/combat lockdown bypasses or fake hardware events.
- Paste large Blizzard FrameXML into an addon when a thin hook suffices.

## Suggested prompt when starting a task

```text
Follow AGENTS.md in this repo.
Client: WoW Forever Interface 16001 (or Midnight 120105/120107 — say which).
Search Hindsight (or read agent-memory-setup.md) before re-deriving Forever quirks.
Verify APIs against synced docs; run luacheck before done; security + performance checklists are merge gates.
```

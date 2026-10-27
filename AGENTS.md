# Agent instructions (all AI tools)

Tool-agnostic contract for coding agents working in this repository (Claude Code, GitHub Copilot, Cursor, Codex, Gemini CLI, Windsurf, Continue, Aider, and similar).

**Canonical docs** (read before substantial Lua/TOC work):

| Doc | Role |
|-----|------|
| [`06-notes/addon-dev/ai-assisted-best-practices.md`](06-notes/addon-dev/ai-assisted-best-practices.md) | Workflow, common AI mistakes, definition of done |
| [`06-notes/addon-dev/security-and-trust.md`](06-notes/addon-dev/security-and-trust.md) | Security merge gate |
| [`06-notes/addon-dev/performance-and-resources.md`](06-notes/addon-dev/performance-and-resources.md) | Performance / FPS merge gate |
| [`06-notes/forever-rules.md`](06-notes/forever-rules.md) | Forever client hard rules |
| [`06-notes/forever-quirks.md`](06-notes/forever-quirks.md) | Runtime Forever quirks |

How each tool loads these: see [README — Using with AI coding tools](README.md#using-with-ai-coding-tools).

## Client truth

- **Forever** = Interface `16001`, Mainline-family (Camelot): secrets + modern `C_*` APIs. **Not** Classic Era.
- **Midnight** = Interface `120105` / `120107`: secrets; no addon CLEU.
- When sources disagree: client generated docs (after `bash sync.sh`) and in-game `/dump` win.
- TOC edits → **full client restart**. Lua-only edits → `/reload`.

## Must

- Verify every API against Forever/Midnight docs — **do not invent** symbols.
- No `loadstring` / `RunScript` on chat, addon messages, or untrusted SavedVariables.
- Hook Blizzard with `hooksecurefunc` / `HookScript` only — do not replace `_G` Blizzard functions.
- Check `InCombatLockdown()` before mutating secure/protected frames; queue for `PLAYER_REGEN_ENABLED`.
- Never store secret values or functions in SavedVariables.
- Prefer `RegisterEvent` / `RegisterUnitEvent` and `C_Timer` over bare `OnUpdate` (throttle + clear if unavoidable).
- Create frames once or via a pool — never `CreateFrame` inside frequent rebuilds.
- Init SavedVariables on `ADDON_LOADED` with an addon-name check; set `OnEvent` before `RegisterEvent`.
- Prefix globals and frame names (`MyAddon_`).
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
Verify APIs against synced docs; security + performance checklists are merge gates.
```

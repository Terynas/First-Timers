# GitHub Copilot — First Timers

Follow the repository root **`AGENTS.md`** for every WoW addon suggestion in this project.

Priority reading:

1. `AGENTS.md` (must / must-not)
2. `06-notes/addon-dev/ai-assisted-best-practices.md`
3. `06-notes/addon-dev/luacheck-and-code-quality.md` (run luacheck before done / publish)
4. `06-notes/addon-dev/security-and-trust.md`
5. `06-notes/addon-dev/performance-and-resources.md`
6. `06-notes/forever-rules.md` when the target is WoW Forever

Hard constraints for completions:

- Forever Interface `16001` is Mainline-family with secrets — not Classic Era
- After Lua edits: luacheck clean before claiming done or packaging
- No `loadstring` on chat or addon-message payloads
- Use `hooksecurefunc` / `HookScript`, not Blizzard global replacement
- Prefer events and `C_Timer` over unthrottled `OnUpdate`
- Init SavedVariables in `ADDON_LOADED`; set `OnEvent` before `RegisterEvent`
- Do not invent API names; prefer patterns from `07-starter/HelloAzeroth/` and `06-notes/`

# AI-assisted WoW addon development

Most new addons are drafted with AI. That is fine — **if** the human (and the agent rules) enforce client truth, security, and performance. Models invent APIs, copy Classic Era patterns onto Forever/Midnight, and leave `OnUpdate` running forever unless you constrain them.

This note is the playbook. Pair it with:

- [`agent-memory-setup.md`](agent-memory-setup.md) — **Hindsight + optional Obsidian** so agents stop re-burning tokens on Forever/API context
- [`luacheck-and-code-quality.md`](luacheck-and-code-quality.md) — **mandatory** static check before finish / publish / r/wowaddons
- [`security-and-trust.md`](security-and-trust.md) — taint, secrets, chat, SavedVariables, no `loadstring` on network data
- [`performance-and-resources.md`](performance-and-resources.md) — events vs polling, pools, timers
- [`../forever-rules.md`](../forever-rules.md) + [`../forever-quirks.md`](../forever-quirks.md) — Forever client
- [`midnight-12.md`](midnight-12.md) — secret values, CLEU removal
- Root [`AGENTS.md`](../../AGENTS.md) — works with Claude, Copilot, Cursor, Codex, Gemini, Windsurf, etc. (see README *Using with AI coding tools*)
- Cursor skill: [`.cursor/skills/wow-luacheck/SKILL.md`](../../.cursor/skills/wow-luacheck/SKILL.md)
- Cursor skill: [`.cursor/skills/wow-addon-ui/SKILL.md`](../../.cursor/skills/wow-addon-ui/SKILL.md) (standard UI look for every window and panel)
- Tool pointers: `CLAUDE.md`, `.github/copilot-instructions.md`, `GEMINI.md`, `.windsurfrules`, `.cursor/rules/`

## What AI gets wrong most often

1. **Invented or wrong-client APIs** — Classic `GetSpellInfo` style code on Forever; fake `C_*` names; wrong argument order.
2. **Secret-value footguns** — comparing aura fields, storing secrets in SV, assuming CLEU still feeds meters.
3. **Taint** — `SetScript` on Blizzard frames, replacing globals instead of `hooksecurefunc`.
4. **Combat lockdown ignored** — moving secure frames in combat.
5. **Performance** — full list rebuild + `CreateFrame` per event; unthrottled `OnUpdate`.
6. **SavedVariables init** — defaults at file scope overwritten; functions stuffed into SV.
7. **TOC mistakes** — wrong `## Interface:`, Forever without `AllowLoadGameType` / `ExcludeLoadGameType`, expecting `/reload` after TOC edits.
8. **Scope creep** — Ace3 + five libraries for a slash command and one event.

## Ground rules for agents (and humans reviewing them)

### Remember before you re-teach

- Search **Hindsight** (or read [`agent-memory-setup.md`](agent-memory-setup.md)) before re-explaining Forever ≠ Classic, Interface numbers, or last week’s design choices.
- Optional **Obsidian**: short human notes only; `@`-mention one note — never “scan the whole vault.”
- Capture an **initiative** when a feature plan is approved; ingest API-refresh **summaries**, not full dumps.

### Verify before you write

- Forever: look up symbols in the Forever API dump / MCP (`wow_api_lookup`) or `03-blizzard-source/forever/.../Blizzard_APIDocumentationGenerated/` after `sync.sh`.
- Midnight: wiki + retail generated docs.
- If two sources disagree, the **client's generated docs** and **runtime `/dump`** win. See the README "Which source to trust" section.

### Match the client

| Client | Interface | Do not assume |
|--------|-----------|----------------|
| WoW Forever | `16001` | Classic Era APIs; "no secrets" |
| Midnight | `120105` / `120107` | Pre-12.0 CLEU meters; free aura field reads |

Forever is Mainline-family (Camelot), not Classic Era. See [`forever-rules.md`](../forever-rules.md).

### Smallest correct change

- One feature → fewest new files and globals.
- Prefer events + `C_Timer` over frameworks until complexity demands Ace3.
- Do not paste large Blizzard FrameXML into the addon; hook or reimplement the thin slice you need.

### Luacheck, security, and performance are merge gates

1. Run **luacheck** on the addon path (skill [`wow-luacheck`](../../.cursor/skills/wow-luacheck/SKILL.md); note [`luacheck-and-code-quality.md`](luacheck-and-code-quality.md)). Required after any Lua change and before publish/share.
2. Run the checklists at the bottoms of [`security-and-trust.md`](security-and-trust.md) and [`performance-and-resources.md`](performance-and-resources.md) before calling the work done.

### Prove the API exists

Never say "this API should exist" without a citation (dump path, wiki page, or `/dump` result). Prefer:

```text
Lookup: C_Item.GetItemInfo
Client: Forever 16001
Source: WowForeverAPI / Blizzard_APIDocumentationGenerated
```

### Test loop

1. **`luacheck`** on the addon (mandatory — MCP `wow_luacheck` or CLI; see [`luacheck-and-code-quality.md`](luacheck-and-code-quality.md))  
2. `/console scriptErrors 1` or BugSack  
3. Lua-only edits → `/reload`  
4. TOC edits → **full client restart**  
5. Say clearly what was **not** tested in-game  

## Prompt patterns that produce better addon code

When asking an AI to write or review an addon, include:

```text
Client: WoW Forever, Interface 16001 (secrets + C_* APIs).
Constraints:
- No loadstring on chat/addon messages
- hooksecurefunc / HookScript only for Blizzard hooks
- InCombatLockdown for secure frames
- Events or C_Timer; no bare OnUpdate
- SavedVariables: plain data, init on ADDON_LOADED
- Prefix all globals with MyAddon_
- Verify every API against Forever docs; do not invent
Deliver: minimal Lua + TOC, plus a short test plan (/slash, /reload steps).
```

For reviews:

```text
Review this diff for: invented APIs, taint, secret values, combat lockdown,
OnUpdate cost, SavedVariables safety, and Forever vs Classic mistakes.
```

## Suggested project layout for AI-friendly repos

```text
MyAddon/
├── MyAddon.toc
├── Core.lua          -- load, events, DB init
├── UI.lua            -- frames (create once, update often)
└── CHANGELOG.md      -- Unreleased bullets for user-facing changes
```

Optional for agents (this repo already has the first three):

- **`AGENTS.md`** — tool-agnostic contract (preferred entry for every AI product)
- `CLAUDE.md`, `.github/copilot-instructions.md`, `GEMINI.md`, `.windsurfrules` — thin per-tool loaders
- `.cursor/rules/*.mdc` — Cursor-only mirrors of the same gates
- `.luacheckrc` — catch unused globals and common footguns

## External references worth keeping open

- [Warcraft Wiki: Secure Execution and Tainting](https://warcraft.wiki.gg/wiki/Secure_Execution_and_Tainting)
- [Warcraft Wiki: AddOn loading process](https://warcraft.wiki.gg/wiki/AddOn_loading_process)
- [Warcraft Wiki: Saving variables](https://warcraft.wiki.gg/wiki/Saving_variables_between_game_sessions)
- [AddOn Studio: UI best practices](https://addonstudio.org/wiki/WoW:UI_best_practices) (locals, aliases)
- [wowforeverguides.com pitfalls](https://wowforeverguides.com/addons/pitfalls) (after `sync.sh`: `01-guides/forever/`)
- In-game: `/api`, `/dump`, `/eventtrace`, `/framestack`, `/console taintLog 1`

## Definition of done (AI PR)

- [ ] TOC Interface / game-type directives match the target client
- [ ] Every new API call verified against client docs
- [ ] **luacheck clean** (or documented exceptions) — not optional
- [ ] Security checklist passed
- [ ] Performance checklist passed
- [ ] SavedVariables init on `ADDON_LOADED` (name-checked)
- [ ] Changelog / version bumped if you ship versions
- [ ] Test plan written; in-game gaps stated honestly
- [ ] If publishing or posting (including r/wowaddons): luacheck re-run on the ship tree

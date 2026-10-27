# Security and trust (WoW addons)

Addons run with the player's trust and a powerful UI sandbox. They cannot cast spells for the player in combat, but they *can* break the UI with taint, spam chat, persist too much data, or trick users. Treat every third-party addon — including AI-generated ones — as untrusted code that must earn that trust.

## What "secure" means in WoW

| Term | Meaning |
|------|---------|
| **Secure code** | Blizzard FrameXML / signed UI. Can call protected functions (cast, target, move protected frames in combat). |
| **Tainted code** | Anything from addons or `/run`. Cannot call protected APIs in combat. Spreading taint into Blizzard state can brick UI until `/reload`. |
| **Secret values** | Midnight / Forever combat-sensitive numbers and aura data. Arithmetic, comparison, or field reads can error and pin taint on your addon for the session. |
| **Hardware event** | Genuine click/key. Required for some secure actions; you cannot fake it from a timer. |

Deep dive: [Secure Execution and Tainting](https://warcraft.wiki.gg/wiki/Secure_Execution_and_Tainting), [`debugging-and-taint.md`](debugging-and-taint.md), [`ui-and-secure-templates.md`](ui-and-secure-templates.md), [`midnight-12.md`](midnight-12.md).

## Hard rules

### 1. Never execute data from the network or chat as code

Do **not** `loadstring` / `RunScript` on:

- Addon message payloads (`CHAT_MSG_ADDON`)
- Whisper / channel / guild chat
- SavedVariables that another machine or player could have influenced
- Clipboard paste into an EditBox that then "runs" the text

Parse into plain tables of numbers/strings/bools. Reject unknown versions. Cap string length.

```lua
-- BAD
local fn = loadstring(payload)
fn()

-- GOOD
local ver, a, b = payload:match("^(%d+):([^|]+)|(.+)$")
if ver ~= "1" then return end
-- use a, b as strings only
```

### 2. Never overwrite Blizzard functions or SetScript on protected frames carelessly

- Prefer `hooksecurefunc("Name", fn)` and `frame:HookScript(...)` (post-hooks; do not replace returns).
- Do not assign `_G.SomeBlizzardFunction = myFn`.
- Do not `SetScript` over a secure handler unless you know the frame is yours and unprotected.
- Check `InCombatLockdown()` before changing attributes, parents, or anchors on secure/protected frames; queue for `PLAYER_REGEN_ENABLED`.

### 3. Respect secret values (Forever and Midnight)

- Do not store secret values in SavedVariables (they serialize to `nil` and can taint).
- Prefer presence checks (`C_UnitAuras.GetPlayerAuraBySpellID`) over reading aura fields.
- Use `issecretvalue` / `canaccessvalue` / `scrubsecretvalues` (and `tonumber` where appropriate) before comparing.
- Do not assume Classic Era CLEU still works for meters — it does not for addon code on modern clients.

### 4. Chat and social surfaces are abuse vectors

- Never auto-send chat from an untrusted trigger (random combat event → `SendChatMessage`) without an explicit user opt-in.
- Rate-limit any automated chat (trade shout, LFG). Respect channel rules and ToS.
- Addon messages: register a unique prefix (≤16 chars), version the payload, validate every field, ignore garbage.
- Do not impersonate system/Blizzard UI to phish (fake "enter Battle.net password" dialogs, fake loot, etc.).

### 5. SavedVariables are not a vault

Anything in your `.lua` and SavedVariables is readable on disk. There is **no** safe place in an addon for API keys, passwords, or tokens meant to stay secret.

- Persist only settings and gameplay data the player expects.
- Prefer account-wide profiles for settings; avoid dumping full bags/mail of every alt unless the feature needs it.
- Strip large caches on logout if they are rebuildable (`PLAYER_LOGOUT`).
- Do not write other players' private notes into account-wide SV without clear consent UX.

### 6. Least privilege for UI and combat

- Use `SecureActionButtonTemplate` only when the player must click to cast/use; set attributes **out of combat**.
- Do not try to "bypass" lockdown with obscure globals — if it worked, it would be a ToS/exploit problem, not a feature.
- Avoid global name collisions (`CreateFrame(..., "PlayerFrame", ...)`). Prefix your globals (`MyAddon_`).

### 7. Dependency and supply-chain hygiene

- Vendor only libraries you trust (Ace3, LibStub, etc.) at pinned versions.
- Prefer embedding libs over expecting a random shared copy.
- Review AI-generated diffs for surprise `SendAddonMessage`, `SendChatMessage`, `loadstring`, or HTTP-like stubs (there is no general outbound HTTP from Lua in stock WoW).

## AI-specific security checklist

Before accepting AI-written addon code, verify:

- [ ] No `loadstring` / `RunScript` on external or saved strings
- [ ] No replacement of Blizzard globals; hooks are post-hooks only
- [ ] Combat lockdown checked for secure frames
- [ ] No secret values written to SavedVariables
- [ ] Chat / addon-message sends are opt-in, validated, and rate-limited
- [ ] No fake Blizzard/login UI; no credential collection
- [ ] Frame and saved-variable names are uniquely prefixed
- [ ] Claimed APIs exist in the target client's docs (Forever dump / wiki) — not invented

## Reporting and ethics

If an addon (or generated snippet) tries to steal accounts, force unwanted chat spam, or clearly evade secure boundaries, do not ship it. Report abusive published addons through the platform's process (CurseForge/Wago/Blizzard) rather than "fixing" the exploit in public with a PoC.

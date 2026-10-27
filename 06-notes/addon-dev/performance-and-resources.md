# Performance and resource optimization

WoW's UI thread is shared by Blizzard and every addon. One bad `OnUpdate` hurts everyone's FPS. Optimize for **idle cost** and **burst cost**, not microbenchmarks of cold paths.

## Prefer events over polling

| Approach | When to use |
|----------|-------------|
| `RegisterEvent` / `RegisterUnitEvent` | Default. React when the game tells you something changed. |
| `C_Timer.After` / `C_Timer.NewTicker` | Deferred or periodic work with a clear interval. Cancel when done. |
| `OnUpdate` | Last resort: smooth animation, drag follow-ups, or work that must track every frame. Always throttle. |

```lua
-- Prefer unit-filtered registration (less Lua wakeups).
f:RegisterUnitEvent("UNIT_HEALTH", "player", "target")

-- BAD: every frame, forever
frame:SetScript("OnUpdate", function() UpdateEverything() end)

-- BETTER: throttle
local accum = 0
frame:SetScript("OnUpdate", function(self, elapsed)
    accum = accum + elapsed
    if accum < 0.2 then return end
    accum = 0
    UpdateVisibleOnly()
end)
```

Unregister events and clear `OnUpdate` when your window is hidden or the feature is disabled.

## Hot-path Lua habits

Globals are slower and risk name clashes. In tight loops and `OnUpdate`:

```lua
local pairs, ipairs, wipe = pairs, ipairs, wipe
local GetTime = GetTime
local UnitHealth = UnitHealth
```

- Keep functions `local` unless they must be global (slash commands, SavedVariables).
- Avoid building new tables every tick; reuse and `wipe(t)`.
- Avoid string concatenation in per-frame code; build strings when the UI actually refreshes.
- Cache `GetItemInfo` / icon paths after the first successful resolve; handle nil until the client caches the item.

## Frames, textures, and lists

- **Do not** `CreateFrame` inside a refresh that runs often. Create a pool once; show/hide and rebind data.
- Recycle row buttons in scroll lists (same pattern Blizzard uses).
- Hide unused rows instead of destroying them.
- Reuse textures/atlases; avoid unique path strings per frame when one atlas works.
- Parent to the correct frame; avoid orphan frames that never get garbage-friendly cleanup.

```lua
local pool = {}
local function Acquire()
    local f = table.remove(pool)
    if not f then
        f = CreateFrame("Button", nil, parent, "BackdropTemplate")
        -- one-time setup
    end
    f:Show()
    return f
end
local function Release(f)
    f:Hide()
    f:ClearAllPoints()
    f:SetParent(nil)
    pool[#pool + 1] = f
end
```

## Timers and generation counters

Stale `C_Timer.After` callbacks after zone changes or pull ends cause ghost updates:

```lua
local gen = 0
local function Schedule(delay, fn)
    gen = gen + 1
    local my = gen
    C_Timer.After(delay, function()
        if my ~= gen then return end
        fn()
    end)
end
```

Cancel tickers (`ticker:Cancel()`) on disable / hide / logout.

## Events: register narrowly

- Use `RegisterUnitEvent` when the payload is unit-scoped.
- Do not register `COMBAT_LOG_EVENT_UNFILTERED` on Forever/Midnight expecting Classic-era meters — prefer the modern replacements in [`midnight-12.md`](midnight-12.md).
- Batch UI refresh: set a dirty flag on events, rebuild once on the next timer or `OnUpdate` slice.

## SavedVariables and memory

- Persist settings, not rebuildable caches (item tooltips, full map dumps).
- Cap history lists (last N mail sends, last N errors).
- Avoid huge nested tables that grow every session without pruning.
- Remember: large SavedVariables slow logout and login.

## Addon messages and chat

`C_ChatInfo.SendAddonMessage` is rate-limited (prefix ≤16, message ≤255, burst/refill). Design compact binary-ish or short CSV payloads. Do not heartbeat every frame.

## Load cost

- Keep the always-loaded surface small. Use `LoadOnDemand` / `LoadWith` for heavy modules (raid encounter pack, huge data tables).
- Split data files; do not parse megabyte tables at file load if a lazy load on first use works.
- Defer non-critical work until `PLAYER_LOGIN` or first open of your UI.

## Measurement

- In-game: if something feels heavy, binary-search by disabling your `OnUpdate` / event registrations.
- `/framestack` for overdraw and mystery frames.
- Compare CPU with your feature off vs on in a quiet city, then in a raid — idle cost matters most for players with 50+ addons.

## AI-specific performance checklist

- [ ] No bare `OnUpdate` without throttle and an exit condition
- [ ] Events unregistered or UI paused when hidden
- [ ] No `CreateFrame` inside per-event full rebuilds
- [ ] Locals for APIs used in hot paths
- [ ] Timers cancellable / generation-guarded
- [ ] SavedVariables size bounded
- [ ] Addon messages not used as a polling channel

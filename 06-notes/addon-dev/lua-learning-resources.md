# Learning Lua (for WoW addons)

World of Warcraft addons are written in **Lua 5.1** (a sandboxed, slightly modified build). You do not need to finish a whole book before HelloAzeroth — but when tables, closures, or metatables feel muddy, use the references below.

**WoW-specific limits** (so you do not waste time on desktop Lua habits):

- Version is **5.1**, not 5.3/5.4 (no integer subtype, no `bit32` as on later stock Lua — WoW adds its own bit helpers; see [`01-guides/wiki/10-lua-functions.md`](../../01-guides/wiki/10-lua-functions.md))
- No general **file I/O** or **OS** libraries; no arbitrary network from addon Lua
- Globals and the API live in the game environment (`CreateFrame`, `C_*`, …) — learn language first, then the wiki/API docs in this library

## Books

| Resource | Notes |
|----------|--------|
| [**Programming in Lua**](https://www.lua.org/pil/) (Roberto Ierusalimschy) | The standard book (“PiL”). The [first edition is free online](https://www.lua.org/pil/contents.html) and matches early 5.x well. Later print editions track newer Lua — prefer **5.1-era chapters** (tables, functions, metatables, modules) for addon work. |
| [**Lua 5.1 Reference Manual**](https://www.lua.org/manual/5.1/) | Authoritative language + standard library reference. Keep it open while coding. |
| *Beginning Lua Programming* / other intro titles | Optional; any intro that targets **5.1** is fine. Skip chapters on embedding C, sockets, and filesystem APIs that WoW does not expose. |

Buy print/ebook editions from normal bookstores when you want offline reading; this repo does not redistribute book text.

## Official & short references

| Resource | Notes |
|----------|--------|
| [lua.org](https://www.lua.org/) | Home of the language; downloads and docs |
| [Lua 5.1 manual](https://www.lua.org/manual/5.1/) | Same as above — bookmark the PDF/HTML |
| [Learn X in Y minutes: Lua](https://learnxinyminutes.com/docs/lua/) | Fast syntax tour |
| [lua-users wiki](http://lua-users.org/wiki/) | Community tips, patterns, gotchas |

## WoW-focused Lua pages (in this library / wiki)

| Resource | Notes |
|----------|--------|
| [`01-guides/wiki/10-lua-functions.md`](../../01-guides/wiki/10-lua-functions.md) | Which standard Lua APIs exist **inside** WoW |
| [Warcraft Wiki: Lua](https://warcraft.wiki.gg/wiki/Lua) | How the client embeds Lua |
| [Warcraft Wiki: Lua functions](https://warcraft.wiki.gg/wiki/Lua_functions) | Upstream of the synced page above |
| Getting started + HelloAzeroth | [`01-guides/wiki/01-getting-started.md`](../../01-guides/wiki/01-getting-started.md) and [`07-starter/HelloAzeroth/`](../../07-starter/HelloAzeroth/) — learn by reading real addon Lua |

## Suggested order for beginners

1. Skim **Learn X in Y minutes** (or PiL chapters 1–5 online).
2. Build / read **HelloAzeroth** — locals, tables, functions, events.
3. Use the **5.1 reference manual** when you hit an unfamiliar builtin.
4. For addon APIs and Forever/Midnight rules, leave Lua books and use this repo’s wiki notes + [`AGENTS.md`](../../AGENTS.md).

## Related gates

- Lint: [`luacheck-and-code-quality.md`](luacheck-and-code-quality.md) (install luacheck separately)
- Security / performance: [`security-and-trust.md`](security-and-trust.md), [`performance-and-resources.md`](performance-and-resources.md)

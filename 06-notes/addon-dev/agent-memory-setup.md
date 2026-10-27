# Agent memory for WoW addon development

The biggest token waste in addon work is **re-teaching every session**: Forever ≠ Classic, Interface `16001`, secret values, no CLEU on Midnight, which `C_*` APIs exist, last week’s design decisions. Fix that with **durable memory** — not by pasting the whole API dump into chat.

## Recommended split

| Layer | Tool | Role | Who maintains it |
|-------|------|------|------------------|
| **Primary (agents)** | **[Hindsight](https://github.com/vectorize-io/hindsight)** (MCP in Cursor) | Per-repo bank of decisions, quirks, initiatives, API-change summaries. Agents **search before acting**. | Auto (sessions) + agent ingest |
| **Canon (humans)** | **Obsidian** vault (optional) | Short, hand-edited notes you trust — decisions, “never do X”, Forever gotchas. Agents read via `@note` or you ingest into Hindsight. | You |
| **Source of truth** | This library + Forever dump / MCP | APIs and FrameXML. Memory stores **summaries and decisions**, never a second full dump. | `sync.sh` / `wow_api_refresh_docs` |

**Default for Cursor addon work: Hindsight first.** Use Obsidian if you want a readable second brain outside the IDE; do not run two conflicting “full project dumps.”

Why not Obsidian-only for agents?

- Agents already get Hindsight hooks (search / ingest / initiatives) in this workspace.
- Each **git repo** maps to its **own** Hindsight bank — SnapPost memory must not leak into ProfessionMaster or First Timers as if it were fact for both.
- Obsidian is excellent for *you*; without discipline, agents will still re-scan the vault every turn and burn tokens.

## What belongs in memory (keep it small)

**Do ingest / note**

- Forever / Midnight **quirks** you verified in-game (`/dump`, BugSack)
- **Decisions**: “ComposeFullName for CharKey”, “no Ace3 for this addon”, “mail delay = N ms”
- **Initiative** summaries when starting a feature (goal + why)
- **API dump change summaries** after a daily Forever docs refresh (`ingest_required=yes`)
- Corrections: title `Correction: …` when a recalled fact was wrong

**Do not ingest / do not paste into chat**

- Full `WowForeverAPI.lua` / FrameXML trees
- Entire `03-blizzard-source/` or Ace3
- Secrets, tokens, account names, local absolute paths (`/home/…`)
- Unverified Classic Era patterns “for Forever”

## Hindsight installation (Linux / macOS / Windows)

Official docs (always check for updates):

- [Coding agents install](https://hindsight.vectorize.io/sdks/integrations/coding-agents) — wires Cursor / Claude Code / Codex / etc.
- [Platform installation](https://hindsight.vectorize.io/developer/installation) — Docker, pip, Windows notes
- [Cursor integration](https://hindsight.vectorize.io/sdks/integrations/cursor) — alternate Cursor plugin path

Hindsight supports **Linux**, **macOS** (Apple Silicon fully; Intel Macs prefer slim packages), and **Windows**. The coding-agent installer is the same command on all three once you have **Node.js** (`npx`).

### What you need on every OS

| Requirement | Notes |
|-------------|--------|
| **Node.js 18+** | For `npx @vectorize-io/hindsight-coding-agents …` |
| **An LLM key** (or Claude Code CLI) | Fact extraction needs a provider: OpenAI / Anthropic / Gemini / Groq / etc. Local daemon mode picks the first available env key, or Claude Code with no key. |
| **Where memory lives** | Choose once at install: **Hindsight Cloud**, **self-hosted API** (Docker/`hindsight-api` on `:8888`), or **local daemon** on this machine |

Do **not** put API keys into this git repo. Keep them in the environment or Hindsight’s local config under your home directory (e.g. `~/.hindsight/`).

### 1) Wire coding agents (all OSes)

In a terminal (**PowerShell**, **cmd**, **bash**, or **zsh** — same `npx` command):

```bash
# List targets without changing anything
npx @vectorize-io/hindsight-coding-agents install

# Cursor (hooks + MCP + skill) — typical for this library
npx @vectorize-io/hindsight-coding-agents install cursor-cli

# Or every agent the installer detects
npx @vectorize-io/hindsight-coding-agents install all
```

Useful follow-ups:

```bash
npx @vectorize-io/hindsight-coding-agents update      # refresh runtime only
npx @vectorize-io/hindsight-coding-agents uninstall all
npx @vectorize-io/hindsight-coding-agents stats
```

Scripted / non-interactive installs can pass `--server cloud|self-hosted|daemon` so the installer does not prompt for where memory lives.

**After install:** fully quit and reopen Cursor (plugins/MCP load at startup). Confirm MCP tools like `hindsight_diagnose` appear.

#### What `install cursor-cli` configures

| File (under your user profile) | Purpose |
|--------------------------------|---------|
| `~/.cursor/hooks.json` | Session hooks |
| `~/.cursor/mcp.json` | Hindsight MCP server entry |
| Companion skill under `~/.cursor/skills/` | Agent guidance |

On Windows, `~` is your user profile (e.g. `C:\Users\<you>\.cursor\…`).

### 2) Choose memory backend

| Mode | Best when | Sketch |
|------|-----------|--------|
| **Cloud** | Fastest path; no local server | Sign up at Hindsight Cloud; installer stores API URL + token in local config |
| **Self-hosted** | You want data on your LAN | Run API on `http://localhost:8888` (Docker or pip below); point the coding-agent config at that URL |
| **Local daemon** | Nothing to host; per-machine embed | Installer starts/`hindsight-embed` on demand (often `127.0.0.1:9077`). Shared across agents on the box |

**macOS + local daemon:** you also need a current **Rust** toolchain ([rustup.rs](https://rustup.rs/)). A dependency (`litellm`) may compile from source on Mac; Linux/Windows usually use wheels and skip this.

### 3) Self-hosted API (optional) — Docker (Linux / macOS / Windows)

Requires [Docker Desktop](https://www.docker.com/products/docker-desktop/) on macOS/Windows, or Docker Engine on Linux.

```bash
export OPENAI_API_KEY=sk-xxx   # or another provider — see Hindsight Models docs
# PowerShell: $env:OPENAI_API_KEY = "sk-xxx"

docker run -it --pull always --name hindsight --restart unless-stopped --shm-size=1g \
  -p 8888:8888 -p 9999:9999 \
  -e HINDSIGHT_API_LLM_API_KEY=$OPENAI_API_KEY \
  -v hindsight-data:/home/hindsight/.pg0 \
  ghcr.io/vectorize-io/hindsight:latest
```

- API: `http://localhost:8888`
- Control plane UI: `http://localhost:9999`

Prefer the named volume (`hindsight-data`) so permissions work. If you bind-mount a host directory, it must be owned by UID **1000** (Linux/macOS) or use the named volume instead.

Slim image (smaller; needs external embeddings/rerankers): `ghcr.io/vectorize-io/hindsight:latest-slim`.

### 4) Self-hosted API — bare metal (pip)

**Linux / Apple Silicon macOS / Windows:**

```bash
pip install hindsight-api
export HINDSIGHT_API_LLM_PROVIDER=openai          # or groq, anthropic, …
export HINDSIGHT_API_LLM_API_KEY=sk-xxx
export HINDSIGHT_API_LLM_MODEL=gpt-4o-mini        # example
hindsight-api                                     # http://localhost:8888
```

**Intel (x86_64) macOS:** use slim packages (`hindsight-api-slim` / `hindsight-all-slim`) plus external embedding/reranker providers — full local ML wheels are unreliable on Intel Mac. See [Supported Platforms](https://hindsight.vectorize.io/developer/installation).

**Windows (PowerShell) — embedded DB:**

```powershell
pip install hindsight-api
$env:HINDSIGHT_API_LLM_PROVIDER = "openai"
$env:HINDSIGHT_API_LLM_API_KEY = "sk-xxx"
$env:HINDSIGHT_API_LLM_MODEL = "gpt-4o-mini"
hindsight-api
```

Optional external PostgreSQL on Windows: install Postgres (`winget install PostgreSQL.PostgreSQL.17`), enable `pgvector`, then set `HINDSIGHT_API_DATABASE_URL` — full steps in the [Windows section](https://hindsight.vectorize.io/developer/installation#windows) of the official install guide.

### 5) Alternate Cursor plugin path

If you use the older/docs **`hindsight-cursor`** Python plugin instead of (or in addition to) coding-agents:

```bash
pip install hindsight-cursor
cd /path/to/your-addon-repo
hindsight-cursor init --api-url http://localhost:8888
# or Cloud:
# hindsight-cursor init --api-url https://api.hindsight.vectorize.io --api-token YOUR_TOKEN
```

Then **fully quit and reopen Cursor**. Prefer one clear setup (coding-agents **or** this plugin) so hooks/MCP are not duplicated and fighting each other.

### 6) Verify

1. MCP tool **`hindsight_diagnose`** — bank, API URL, config path (no secrets printed).
2. **`hindsight_sync_status`** — wait until seeded history is queryable.
3. **`hindsight_search_knowledge_pages`** with a Forever/addon query.

**Repo isolation:** each git repository has its own bank. Open / work inside the addon repo you mean (a monorepo bank ≠ a standalone First-Timers clone’s bank).

### Agent workflow (mandatory for non-trivial work)

1. **Start:** `hindsight_search_knowledge_pages` (or list + read) for the topic — bugs, “why is X”, new features, tests, commits.
2. **Plan approved:** `hindsight_capture_initiative` **before** coding; recapture with `relates_to_page_id` if scope changes.
3. **Forever API refresh:** if MCP / skill says `ingest_required=yes`, `hindsight_ingest_document` with a **short** change summary only.
4. **Wrong memory:** ingest `Correction: <topic>` with evidence (file path, `/dump`, wiki).
5. **Credit** when memory shaped the reply (project convention).

Cursor rule in this repo: [`.cursor/rules/wow-addon-ai-memory.mdc`](../../.cursor/rules/wow-addon-ai-memory.mdc).

### Minimal tools cheat sheet

| Tool | Use |
|------|-----|
| `hindsight_search_knowledge_pages` | First stop — ranked snippets |
| `hindsight_read_knowledge_page` | Full page by id |
| `hindsight_reflect` | Slow “why did we decide X?” |
| `hindsight_capture_initiative` | New feature / scope change |
| `hindsight_ingest_document` | External notes, API refresh summary, corrections |
| `hindsight_diagnose` / `hindsight_sync_status` | Setup / sync health |

## Obsidian setup (optional human canon)

Use Obsidian when you want notes that outlive a single IDE.

### Vault layout (suggested)

Create a vault (or a folder inside an existing vault). Example:

```text
WoW-Addon-Canon/
├── 00-index.md                 # links only — keep thin
├── Forever/
│   ├── rules-short.md          # bullets, not a novel
│   └── quirks-verified.md      # only machine-/play-verified
├── Decisions/
│   └── YYYY-MM-DD-topic.md     # one decision per note
├── Addons/
│   ├── SnapPostForever.md
│   └── ProfessionMaster.md
└── Templates/
    ├── decision.md
    └── quirk.md
```

Starter templates live in [`../agent-memory/obsidian-templates/`](../agent-memory/obsidian-templates/) — copy into your vault’s Templates folder.

### Habits that save tokens

- One decision = one short note (problem → choice → why → links to code).
- Link to **paths in the git repo**, don’t paste 200 lines of Lua into Obsidian.
- Weekly: pick 3–5 Obsidian notes that still matter → `hindsight_ingest_document` so agents see them without opening the whole vault.
- Never put API keys or WTF paths with account names in the vault if the vault syncs to the cloud.

### Pointing agents at Obsidian

- Cursor: `@`-mention a specific note when it matters for **this** task.
- Do **not** ask the agent to “read my entire vault” every turn.
- Prefer: “Follow AGENTS.md; search Hindsight; here’s `@Decisions/2026-10-mail-delay.md`.”

## Token-saving rules (both tools)

1. **Search memory / AGENTS / forever-quirks before** re-deriving Forever vs Classic.
2. **Lookup one API** (`wow_api_lookup` / `rg` in the dump) — never attach the full dump.
3. **Smallest correct change** — memory of “we use ComposeFullName” beats rewriting CharKey schemes.
4. **luacheck + security/perf checklists** instead of open-ended “review everything.”
5. **Initiatives** so the next session doesn’t re-brainstorm the same feature.
6. **Corrections** beat arguing with stale pages in chat.

## Related docs

- [`ai-assisted-best-practices.md`](ai-assisted-best-practices.md)
- [`../forever-rules.md`](../forever-rules.md) / [`../forever-quirks.md`](../forever-quirks.md)
- Root [`AGENTS.md`](../../AGENTS.md)
- Forever API skill daily refresh → Hindsight ingest (monorepo / Cursor plugin `wow-addons`)

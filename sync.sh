#!/usr/bin/env bash
# Download / update every source in this folder. Safe to re-run.
#   bash "First Timers/sync.sh"            # everything
#   bash "First Timers/sync.sh" docs       # only wiki/guide pages (fast)
set -uo pipefail

ROOT="$(cd "$(dirname "$0")" && pwd)"
REPO_ROOT="$(cd "${ROOT}/.." && pwd)"
ONLY="${1:-all}"
FAILED=()

clone() { # clone <dest> <github owner/repo> <branch>
  local dest="${ROOT}/$1" repo="$2" branch="$3"
  if [[ -d "${dest}/.git" ]]; then
    echo "update  $1 (${repo}@${branch})"
    git -C "${dest}" fetch --depth 1 origin "${branch}" -q && git -C "${dest}" reset --hard -q FETCH_HEAD \
      || FAILED+=("$1")
  else
    echo "clone   $1 (${repo}@${branch})"
    mkdir -p "$(dirname "${dest}")"
    git clone -q --depth 1 --single-branch --branch "${branch}" "https://github.com/${repo}.git" "${dest}" \
      || FAILED+=("$1")
  fi
}

wiki() { # wiki <dest.md> <Page_title>
  local dest="${ROOT}/$1" page="$2" tmp
  tmp="$(mktemp)"
  if curl -fsSL --max-time 60 -A "FirstTimers-docs-sync/1.0" \
      "https://warcraft.wiki.gg/api.php?action=parse&format=json&formatversion=2&redirects=1&prop=text&disableeditsection=1&page=${page}" \
      -o "${tmp}" && python3 - "${tmp}" "${dest}" "${page}" <<'PY'
import json, subprocess, sys
src, dest, page = sys.argv[1:4]
data = json.load(open(src, encoding="utf-8"))
if "parse" not in data:
    sys.exit(1)
html = data["parse"]["text"]
md = subprocess.run(["pandoc", "-f", "html", "-t", "gfm-raw_html", "--wrap=none"],
                    input=html, capture_output=True, text=True, check=True).stdout
md = md.replace("](/wiki/", "](https://warcraft.wiki.gg/wiki/")
url = "https://warcraft.wiki.gg/wiki/" + page
with open(dest, "w", encoding="utf-8") as f:
    f.write(f"# {data['parse']['title']}\n\n> Source: <{url}> (Warcraft Wiki, CC BY-SA). Re-run sync.sh to refresh.\n\n{md}")
PY
  then
    echo "page    $1"
  else
    echo "FAILED  $1 (${page})"
    FAILED+=("$1")
  fi
  rm -f "${tmp}"
}

page() { # page <dest.md> <url>
  local dest="${ROOT}/$1" url="$2" tmp
  tmp="$(mktemp)"
  if curl -fsSL --max-time 60 -A "FirstTimers-docs-sync/1.0" "${url}" -o "${tmp}" && python3 - "${tmp}" "${dest}" "${url}" <<'PY'
import subprocess, sys
from bs4 import BeautifulSoup
src, dest, url = sys.argv[1:4]
soup = BeautifulSoup(open(src, encoding="utf-8", errors="replace").read(), "html.parser")
for tag in soup(["script", "style", "nav", "header", "footer", "noscript", "svg", "form"]):
    tag.decompose()
body = soup.find("main") or soup.find("article") or soup.body or soup
md = subprocess.run(["pandoc", "-f", "html", "-t", "gfm-raw_html", "--wrap=none"],
                    input=str(body), capture_output=True, text=True, check=True).stdout
title = soup.title.get_text(strip=True) if soup.title else url
with open(dest, "w", encoding="utf-8") as f:
    f.write(f"# {title}\n\n> Source: <{url}>. Re-run sync.sh to refresh.\n\n{md}")
PY
  then
    echo "page    $1"
  else
    echo "FAILED  $1 (${url})"
    FAILED+=("$1")
  fi
  rm -f "${tmp}"
}

mkdir -p "${ROOT}/01-guides/wiki" "${ROOT}/01-guides/forever" "${ROOT}/06-notes"

# --- Guides: Warcraft Wiki (the community reference for the whole API) ---------
wiki 01-guides/wiki/01-getting-started.md          "Getting_started_with_writing_AddOns"
wiki 01-guides/wiki/02-toc-format.md               "TOC_format"
wiki 01-guides/wiki/03-addon-loading-process.md    "AddOn_loading_process"
wiki 01-guides/wiki/04-handling-events.md          "Handling_events"
wiki 01-guides/wiki/05-saved-variables.md          "Saving_variables_between_game_sessions"
wiki 01-guides/wiki/06-slash-commands.md           "Creating_a_slash_command"
wiki 01-guides/wiki/07-localizing.md               "Localizing_an_addon"
wiki 01-guides/wiki/08-secure-execution-taint.md   "Secure_Execution_and_Tainting"
wiki 01-guides/wiki/09-xml-ui.md                   "XML_user_interface"
wiki 01-guides/wiki/10-lua-functions.md            "Lua_functions"
wiki 01-guides/wiki/ref-world-of-warcraft-api.md   "World_of_Warcraft_API"
wiki 01-guides/wiki/ref-events.md                  "Events"
wiki 01-guides/wiki/ref-widget-api.md              "Widget_API"
wiki 01-guides/wiki/ref-widget-script-handlers.md  "Widget_script_handlers"
wiki 01-guides/wiki/ref-cvars.md                   "Console_variables"
wiki 01-guides/wiki/midnight-12.0.0-api-changes.md "Patch_12.0.0/API_changes"
wiki 01-guides/wiki/forever-1.60.1-api-changes.md  "Patch_1.60.1/API_changes"

# --- Guides: Forever community site ---------------------------------------------
page 01-guides/forever/1-developer-guide.md "https://wowforeverguides.com/addons/developers"
page 01-guides/forever/2-patterns.md        "https://wowforeverguides.com/addons/patterns"
page 01-guides/forever/3-api-cheatsheet.md  "https://wowforeverguides.com/addons/api-cheatsheet"
page 01-guides/forever/4-pitfalls.md        "https://wowforeverguides.com/addons/pitfalls"
page 01-guides/forever/5-code-templates.md  "https://wowforeverguides.com/addons/code-templates"

# --- Notes already written in this workspace ------------------------------------
cp -f "${REPO_ROOT}/.cursor/skills/wow-forever-api/references/forever-rules.md" "${ROOT}/06-notes/forever-rules.md"
cp -f "${REPO_ROOT}/.cursor/skills/wow-forever-api/references/forever-quirks.md" "${ROOT}/06-notes/forever-quirks.md"
if [[ -d "${HOME}/.cursor/skills/wow-addon-dev/references" ]]; then
  mkdir -p "${ROOT}/06-notes/addon-dev"
  cp -f "${HOME}/.cursor/skills/wow-addon-dev/references/"*.md "${ROOT}/06-notes/addon-dev/"
  rm -f "${ROOT}/06-notes/addon-dev/forever-dungeons.md" "${ROOT}/06-notes/addon-dev/lessons-from-ccc.md"
fi
# Notes are published: replace machine-specific paths with placeholders.
find "${ROOT}/06-notes" -name '*.md' -exec sed -i -E \
  -e 's#/home/[^/ ]+/[^`|]*World of Warcraft#<your WoW folder>#g' \
  -e 's#/home/[^/ ]+/#~/#g' {} +
if [[ -d "${HOME}/.cursor/skills/wow-addon-dev/examples" ]]; then
  rm -rf "${ROOT}/07-starter/more-examples"
  cp -r "${HOME}/.cursor/skills/wow-addon-dev/examples" "${ROOT}/07-starter/more-examples"
fi

if [[ "${ONLY}" != "docs" ]]; then
  # --- API docs + editor annotations ---------------------------------------------
  clone 02-api-docs/forever-api-dump        Atraeau/WoW-Addons             main
  clone 02-api-docs/vscode-wow-api          Ketho/vscode-wow-api           master

  # --- Blizzard's own UI source (FrameXML + generated API docs), per client ------
  clone 03-blizzard-source/midnight-live    Gethe/wow-ui-source            live
  clone 03-blizzard-source/forever          Gethe/wow-ui-source            forever

  # --- Lists: globals, events, frames, atlases, strings, per client --------------
  clone 04-interface-resources/midnight-live Ketho/BlizzardInterfaceResources live
  clone 04-interface-resources/forever       Ketho/BlizzardInterfaceResources forever

  # --- Libraries + release tooling ------------------------------------------------
  clone 05-libraries/Ace3                   WoWUIDev/Ace3                  master
  clone 05-libraries/packager               BigWigsMods/packager           master
fi

echo
if ((${#FAILED[@]})); then
  echo "Done with ${#FAILED[@]} failure(s): ${FAILED[*]}"
  exit 1
fi
echo "Done. Start with First Timers/README.md"

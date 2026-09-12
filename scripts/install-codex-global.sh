#!/usr/bin/env bash
set -euo pipefail

SOURCE_URL="https://raw.githubusercontent.com/alexgm1290/AI-brain-system/main/global/codex-global-AGENTS.md"
CODEX_HOME_DIR="${CODEX_HOME:-$HOME/.codex}"
TARGET="$CODEX_HOME_DIR/AGENTS.md"
BACKUP="$CODEX_HOME_DIR/AGENTS.md.backup-$(date +%Y%m%d-%H%M%S)"

mkdir -p "$CODEX_HOME_DIR"

if [ -s "$TARGET" ]; then
  cp "$TARGET" "$BACKUP"
  echo "Backed up existing global AGENTS.md to: $BACKUP"
fi

curl -fsSL "$SOURCE_URL" -o "$TARGET"

echo "Installed AI Brain global Codex instructions to: $TARGET"
echo "Restart Codex sessions so the instruction chain reloads."
echo "Verify with: codex --ask-for-approval never \"Summarize the current instructions.\""

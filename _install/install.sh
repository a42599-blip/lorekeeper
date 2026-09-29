#!/usr/bin/env bash
# lorekeeper installer — macOS / Linux
# Copies the lorekeeper skill folder into your assistant's skills directory.
# It copies only. It changes nothing else.

set -euo pipefail

REPO_URL="${REPO_URL:-https://github.com/<owner>/lorekeeper.git}"
TARGET_DIR="${SKILLS_DIR:-$HOME/.agents/skills}"

echo "lorekeeper installer"
echo "  target: $TARGET_DIR/lorekeeper"

if [ -d "$TARGET_DIR/lorekeeper" ]; then
  echo "  ! already exists — updating instead"
  rm -rf "$TARGET_DIR/lorekeeper.tmp"
  git clone --depth 1 "$REPO_URL" "$TARGET_DIR/lorekeeper.tmp"
  rm -rf "$TARGET_DIR/lorekeeper"
  mv "$TARGET_DIR/lorekeeper.tmp" "$TARGET_DIR/lorekeeper"
else
  mkdir -p "$TARGET_DIR"
  git clone --depth 1 "$REPO_URL" "$TARGET_DIR/lorekeeper"
fi

if [ ! -f "$TARGET_DIR/lorekeeper/SKILL.md" ]; then
  echo "  x SKILL.md not found — the copy did not work"
  exit 1
fi

echo "  done."
echo
echo "Next: restart your assistant (or reload skills), then ask it:"
echo "  \"What do you know about me?\""
echo
echo "Memory will be kept in: ${LOREKEEPER_HOME:-$HOME/.lorekeeper}"

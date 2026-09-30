#!/usr/bin/env bash
# lorekeeper one-line installer (macOS / Linux)
#
#   curl -fsSL https://raw.githubusercontent.com/a42599-blip/lorekeeper/main/_install/install.sh | bash
#
# No git required. It does one thing: copies the lorekeeper skill folder into your
# assistant's skills directory. Nothing else is touched.
# Change the location with:  SKILLS_DIR="/your/path" bash install.sh

set -euo pipefail

REPO="a42599-blip/lorekeeper"
BRANCH="main"
TARGET_DIR="${SKILLS_DIR:-$HOME/.agents/skills}"
DEST="$TARGET_DIR/lorekeeper"
KEEP_TMP="${KEEP_TMP:-0}"

TMP="$(mktemp -d)"
cleanup() { [ "$KEEP_TMP" = "1" ] || rm -rf "$TMP"; }
trap cleanup EXIT

echo ""
echo "  lorekeeper installer"
echo "  target: $DEST"
echo ""

ZIP="$TMP/main.zip"
URL="https://github.com/$REPO/archive/refs/heads/$BRANCH.zip"

if command -v curl >/dev/null 2>&1; then
  curl -fsSL "$URL" -o "$ZIP"
elif command -v wget >/dev/null 2>&1; then
  wget -qO "$ZIP" "$URL"
else
  echo "  x curl/wget not found - cannot download." >&2
  echo "    Alternative: ask your AI assistant to install the skill from the GitHub URL." >&2
  exit 1
fi

if command -v unzip >/dev/null 2>&1; then
  unzip -q "$ZIP" -d "$TMP"
elif command -v python3 >/dev/null 2>&1; then
  python3 -c 'import sys,zipfile; zipfile.ZipFile(sys.argv[1]).extractall(sys.argv[2])' "$ZIP" "$TMP"
elif command -v python >/dev/null 2>&1; then
  python -c 'import sys,zipfile; zipfile.ZipFile(sys.argv[1]).extractall(sys.argv[2])' "$ZIP" "$TMP"
else
  echo "  x unzip/python not found - cannot extract." >&2
  exit 1
fi

SRC="$TMP/lorekeeper-$BRANCH"
if [ ! -d "$SRC" ]; then
  echo "  x extracted folder not found - the download may be incomplete." >&2
  exit 1
fi

mkdir -p "$TARGET_DIR"
[ -d "$DEST" ] && rm -rf "$DEST"
mv "$SRC" "$DEST"

if [ ! -f "$DEST/SKILL.md" ]; then
  echo "  x install failed: SKILL.md not found" >&2
  exit 1
fi

echo "  OK installed: $DEST"
echo ""
echo "  Next two steps:"
echo "    1. restart your AI assistant (or reload skills)"
echo "    2. tell it: \"use the lorekeeper skill\""
echo ""
echo "  Memory folder: ${LOREKEEPER_HOME:-$HOME/.lorekeeper}"
echo "  To remove: delete the folder $DEST"
echo ""

#!/usr/bin/env bash
set -euo pipefail

REPO="https://github.com/xstelea/radix-context.git"
SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"

# Remote mode: clone to temp dir when context/ isn't alongside script (e.g. curl | bash)
if [ ! -d "$SCRIPT_DIR/context" ]; then
  _tmpdir=$(mktemp -d)
  trap 'rm -rf "$_tmpdir"' EXIT
  echo "Cloning radix-context..."
  git clone --depth 1 "$REPO" "$_tmpdir/repo" >/dev/null 2>&1
  SCRIPT_DIR="$_tmpdir/repo"
fi

TARGET="${1:-.}"

if [ ! -d "$TARGET" ]; then
  echo "error: directory '$TARGET' does not exist"
  exit 1
fi

TARGET="$(cd "$TARGET" && pwd)"

# Copy context directory
mkdir -p "$TARGET/context"
cp -r "$SCRIPT_DIR/context/"* "$TARGET/context/"
echo "copy: context/ -> $TARGET/context/ ($(ls "$SCRIPT_DIR/context/" | wc -l | tr -d ' ') files)"

# Copy or append AGENTS.md
if [ -f "$TARGET/AGENTS.md" ]; then
  echo "" >> "$TARGET/AGENTS.md"
  cat "$SCRIPT_DIR/AGENTS.md" >> "$TARGET/AGENTS.md"
  echo "append: AGENTS.md -> $TARGET/AGENTS.md"
else
  cp "$SCRIPT_DIR/AGENTS.md" "$TARGET/AGENTS.md"
  echo "copy: AGENTS.md -> $TARGET/AGENTS.md"
fi

echo "done: installed into $TARGET"

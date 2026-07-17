#!/usr/bin/env bash
# Install the harness into ~/.claude + the skills it relies on.
set -e
DIR="$HOME/.claude"
mkdir -p "$DIR/commands" "$DIR/agents"
if [ -d "$(dirname "$0")/commands" ]; then SRC="$(dirname "$0")"; else
  SRC="$(mktemp -d)"; git clone --depth 1 https://github.com/badmuriss/claude-harness "$SRC"
fi
cp "$SRC"/commands/*.md "$DIR/commands/"
cp "$SRC"/agents/*.md "$DIR/agents/"
npx -y skills add badmuriss/incredibly-pretty-websites -g -y
npx -y skills add badmuriss/unslop -g -y
npx -y skills add mattpocock/skills --skill grill-with-docs -g -y
npx -y skills add badmuriss/site-audit -g -y
echo "done — /spec and /impl available in Claude Code"

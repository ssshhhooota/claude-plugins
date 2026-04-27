#!/usr/bin/env bash
set -euo pipefail

PLUGIN_ROOT="${CLAUDE_PLUGIN_ROOT:-$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)}"
RULES_DIR="$PLUGIN_ROOT/rules"

RULE_ORDER=(
  git-basics
  git-branch
  git-commit
  git-worktree
  git-rebase
  github-pr
  workflow
  code-review
)

context="# Git Workflow Rules

このセッションでは以下のルールを常に適用すること。
"

for rule in "${RULE_ORDER[@]}"; do
  rule_file="$RULES_DIR/$rule.md"
  if [[ -f "$rule_file" ]]; then
    context+=$'\n---\n\n'
    context+="$(cat "$rule_file")"
  fi
done

jq -n --arg ctx "$context" '{
  hookSpecificOutput: {
    hookEventName: "SessionStart",
    additionalContext: $ctx
  }
}'

# git-workflow-rules

A Claude Code plugin that enforces Git workflow rules for branch naming, commits, worktrees, and pull requests.

## What It Does

Automatically injects all Git workflow rules into every Claude Code session via a `SessionStart` hook. Rules are always active — no manual skill invocation required.

## Rules

| Rule | Description |
|------|-------------|
| `git-basics` | Branch protection (no direct commits to main/master/develop) |
| `git-branch` | Branch naming convention (`<type>-<description_with_underscores>`) |
| `git-commit` | Conventional Commits format with Japanese descriptions |
| `git-worktree` | Worktree usage via `gwt` alias, placed in `.worktrees/` |
| `git-rebase` | Rebase strategy and safe force push (`--force-with-lease`) |
| `github-pr` | PR title format and description template enforcement |
| `workflow` | Worktree before changes, refactoring/security review after |
| `code-review` | Self-review checklist and `nit:` / `MUST:` comment format |

## Structure

```
git-workflow-rules/
  rules/          # Rule files (source of truth)
  hooks/
    hooks.json    # SessionStart hook — injects all rules at session start
```


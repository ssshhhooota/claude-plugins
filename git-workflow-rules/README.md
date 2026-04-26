# git-workflow-rules

A Claude Code plugin that enforces Git workflow rules for branch naming, commits, worktrees, and pull requests.

## What It Does

Automatically injects Git workflow rules into every Claude Code session via a `SessionStart` hook, ensuring consistent Git practices across all your projects.

## Skills

| Skill | Description |
|-------|-------------|
| `git-basics` | Branch protection rules (no direct commits to main/master/develop) |
| `git-branch` | Branch naming convention (`<type>-<description_with_underscores>`) |
| `git-commit` | Conventional Commits format with Japanese descriptions |
| `git-worktree` | Worktree usage via `gwt` alias, placed in `.worktrees/` |
| `github-pr` | PR description template enforcement |
| `workflow` | Overall workflow: simplify agent, rules file management, worktree before changes |


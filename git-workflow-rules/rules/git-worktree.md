# Git Worktree Rules

- `gwt` コマンド（`git worktree` のエイリアス）を使うこと
- worktree 名・ブランチ名は同じにして作業に沿った命名にすること（git-branch ルールに準拠）
- worktree の配置は `.worktrees/` とすること

## worktree 作成

ベースブランチと `--no-track` を必ず指定する。

```
gwt add -b <branch-name> .worktrees/<branch-name> origin/master --no-track
```

## worktree 削除

作業完了後（PR マージ後）は worktree を削除すること。

```
gwt remove .worktrees/<branch-name>
```

## 例

```
gwt add -b feat-issue_80_issue_body_editor .worktrees/feat-issue_80_issue_body_editor origin/master --no-track
gwt remove .worktrees/feat-issue_80_issue_body_editor
```

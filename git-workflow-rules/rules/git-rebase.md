# Git Rebase Rules

## ブランチ更新戦略

- feature ブランチの最新化は `rebase` を使う
- main へのマージは `--no-ff` を使う
- `git pull` は常に `--rebase` を付ける

```bash
# feature ブランチの最新化
git pull --rebase origin main

# main へのマージ
git merge --no-ff <branch-name>
```

## コンフリクト解消

コンフリクトが発生した場合:

1. コンフリクトファイルを編集して解消する
2. 解消後にステージングする: `git add <file>`
3. rebase を続行する: `git rebase --continue`
4. 中断する場合: `git rebase --abort`

## force push

rebase 済みブランチの push は `--force-with-lease` を使うこと。`--force` は禁止。

```bash
git push --force-with-lease origin <branch-name>
```

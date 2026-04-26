# Git Branch Rules

## フォーマット

```
<type>-<description_with_underscores>
```

- `/` は使用しない
- type とその直後の区切りは `-`
- description 内の単語の区切りは `_`

## type 一覧

| type     | 用途                                                 |
| -------- | ---------------------------------------------------- |
| feat     | 新機能の追加                                         |
| fix      | バグ修正                                             |
| docs     | ドキュメントのみの変更                               |
| style    | コードの意味に影響しない変更（空白・フォーマット等） |
| refactor | バグ修正・機能追加ではないコードの変更               |
| test     | テストの追加・修正                                   |
| chore    | ビルドプロセス・補助ツールの変更                     |
| perf     | パフォーマンス改善                                   |
| ci       | CI 設定の変更                                        |
| build    | ビルドシステム・外部依存の変更                       |
| revert   | 以前のコミットの取り消し                             |
| hotfix   | 緊急修正                                             |
| release  | リリース準備                                         |

## ブランチ作成

ベースブランチと `--no-track` を必ず指定する。

```
git switch -c <branch-name> origin/master --no-track
```

## 例

```
feat-issue_80_issue_body_editor
fix-login_null_pointer
docs-update_readme
chore-upgrade_go_version
hotfix-crash_on_empty_pr_list
```

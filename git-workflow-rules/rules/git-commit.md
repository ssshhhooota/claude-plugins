# Git Commit Rules

Conventional Commits 仕様に準拠すること。

## フォーマット

```
<type>(<scope>): <description>

[body]

[footer]
```

- `scope` はオプション
- `description` は日本語で記述すること
- `body` / `footer` も日本語で記述すること（必要な場合のみ記載）

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

## Breaking Changes

type/scope の直後に `!` を付けるか、footer に `BREAKING CHANGE:` を記載する。

```
feat!: 非推奨のAPIエンドポイントを削除する
```

```
feat(auth): トークン形式を変更する

BREAKING CHANGE: トークン形式をJWTからopaqueストリングに変更
```

## 例

```
feat: issue本文エディタを追加する
fix: レートリミットエラーをハンドリングする
docs: READMEのインストール手順を更新する
refactor: view ヘルパーを別ファイルに分割する
```

# claude-plugins

ssshhhooota の Claude Code プラグイン集。

## インストール

### ターミナル（CLI）

```bash
# 1. マーケットプレイスを追加
claude plugin marketplace add ssshhhooota/claude-plugins

# 2. プラグインをインストール
claude plugin install git-workflow-rules@ssshhhooota-claude-plugins
claude plugin install mentor@ssshhhooota-claude-plugins
```

### Claude Code 内（スラッシュコマンド）

```
/plugin marketplace add ssshhhooota/claude-plugins
/plugin install git-workflow-rules@ssshhhooota-claude-plugins
/plugin install mentor@ssshhhooota-claude-plugins
```

インストール後は `/reload-plugins` でスキル・エージェントを有効化する。

## プラグイン一覧

| プラグイン | 説明 |
|-----------|------|
| [git-workflow-rules](./git-workflow-rules/) | ブランチ命名・コミット・worktree・PR のワークフロールール |
| [mentor](./mentor/) | コードレビュー・Q&A・学習ロードマップ・次ステップ提案（日本語専用） |

## リポジトリ構成

```
claude-plugins/
├── .claude-plugin/
│   └── marketplace.json      # 全プラグインの統合 Marketplace 設定
├── git-workflow-rules/
│   ├── .claude-plugin/
│   │   └── plugin.json       # プラグインメタデータ
│   └── skills/               # 各スキル定義
└── mentor/
    ├── .claude-plugin/
    │   └── plugin.json       # プラグインメタデータ
    └── agents/               # エージェント定義
```

## リリース手順

[RELEASING.md](./RELEASING.md) を参照。

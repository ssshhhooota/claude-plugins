# claude-plugins

ssshhhooota の Claude Code プラグイン集。

## プラグイン一覧

| プラグイン | 説明 |
|-----------|------|
| [git-workflow-rules](./git-workflow-rules/) | ブランチ命名・コミット・worktree・PR のワークフロールール |
| [mentor](./mentor/) | コードレビュー・Q&A・学習ロードマップ・次ステップ提案（日本語専用） |

## リポジトリ構成

```
claude-plugins/
├── marketplace.json          # 全プラグインの統合 Marketplace 設定
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

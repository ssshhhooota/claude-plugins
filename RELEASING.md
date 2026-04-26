# Release Flow

各プラグインは独立したバージョン管理を行う。モノレポのタグは `<plugin>-v<version>` 形式で管理する。

## 手順

### 1. 変更を main にマージ

通常の PR フローで変更をマージする。

### 2. バージョンを決める

[Semantic Versioning](https://semver.org/) に従う。

| 変更内容 | バージョン例 |
|---------|-------------|
| バグ修正・ドキュメント更新 | `1.0.0` → `1.0.1` |
| 後方互換のある機能追加 | `1.0.0` → `1.1.0` |
| 破壊的変更 | `1.0.0` → `2.0.0` |

### 3. 対象プラグインの `plugin.json` と `marketplace.json` を更新

**`<plugin>/.claude-plugin/plugin.json`** のバージョンを更新:

```json
{
  "version": "1.2.0"
}
```

**ルートの `marketplace.json`** の対象プラグインの `ref`・`version`・`sha` をセットで更新:

```json
{
  "source": {
    "source": "github",
    "repo": "ssshhhooota/claude-plugins",
    "path": "git-workflow-rules",
    "ref": "git-workflow-rules-v1.2.0",
    "sha": "<コミットSHA>"
  },
  "version": "1.2.0"
}
```

### 4. コミット・PR を作成してマージ

```
chore(git-workflow-rules): v1.2.0をリリースする
```

### 5. git タグを打つ

```bash
git tag <plugin>-vX.Y.Z
git push origin <plugin>-vX.Y.Z
```

例:

```bash
git tag git-workflow-rules-v1.2.0
git push origin git-workflow-rules-v1.2.0
```

### 6. GitHub Release を作成

```bash
gh release create <plugin>-vX.Y.Z --title "<plugin> vX.Y.Z" --notes "..."
```

例:

```bash
gh release create git-workflow-rules-v1.2.0 --title "git-workflow-rules v1.2.0" --notes "..."
```

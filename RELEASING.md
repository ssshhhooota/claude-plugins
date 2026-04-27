# Release Flow

各プラグインは独立したバージョン管理を行う。

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

### 3. git タグを打つ

```bash
git tag vX.Y.Z
git push origin vX.Y.Z
```

例:

```bash
git tag v1.2.0
git push origin v1.2.0
```

### 4. `marketplace.json` を更新

ルートの `.claude-plugin/marketplace.json` の対象プラグインの `source.ref` と `source.sha` を更新:

```json
{
  "source": {
    "source": "git-subdir",
    "url": "https://github.com/ssshhhooota/claude-plugins.git",
    "path": "git-workflow-rules",
    "ref": "v1.2.0",
    "sha": "<コミットSHA>"
  }
}
```

コミット SHA は以下で確認できる:

```bash
git rev-list -n 1 v1.2.0
```

### 5. コミット・PR を作成してマージ

```
chore: v1.2.0をリリースする
```

### 6. GitHub Release を作成

```bash
gh release create vX.Y.Z --title "vX.Y.Z" --notes "..."
```

例:

```bash
gh release create v1.2.0 --title "v1.2.0" --notes "..."
```

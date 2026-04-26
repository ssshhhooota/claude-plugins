# GitHub PR Rules

## タイトル

PR タイトルも Conventional Commits 形式で記述すること。

```
<type>(<scope>): <description>
```

例:
```
feat: ユーザー検索機能を追加する
fix(auth): ログイン時のNullPointerを修正する
```

## description

PR の description は `.github/PULL_REQUEST_TEMPLATE.md` のテンプレートに従って記載すること。
不要であってもセクションは消さないこと。

## UI 変更を含む場合

スクリーンショットまたは動作確認コマンドを description に記載すること。

## Draft PR

作業中の PR は GitHub の Draft 機能を使うこと。タイトルに `[WIP]` は付けない。

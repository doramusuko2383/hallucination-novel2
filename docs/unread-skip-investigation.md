# 未読スキップ調査結果

## ティラノスクリプト標準の判定経路

- ラベル通過時、`autoRecordLabel` が `true` なら `sf.record` の
  `trail_<scenario>_<label>` に通過回数を保存し、次のラベルの記録有無から
  `stat.already_read` を更新する。
- メッセージ表示時、`autoRecordLabel` が `true` なら標準の
  `manageAlreadyRead` が呼ばれる。`stat.already_read` が未読で、かつ
  `unReadTextSkip` が `false` の場合は `setSkip(false)` でスキップを止める。
- コンフィグの `[config_record_label skip="..."]` と独自 CONFIG オーバーレイは、
  どちらも `sf._system_config_unread_text_skip` を保存する。エンジン起動時には
  このシステム変数が `config.unReadTextSkip` に復元されるため、利用者が明示的に
  選んだ「全スキップ」設定はゲームの再起動後も維持される。

## 原因

`Config.tjs` の `autoRecordLabel` と `unReadTextSkip` は、値が false なのではなく
先頭の `;` によって両方ともコメントアウトされていた。特に
`autoRecordLabel` が無効な場合、ラベル記録だけでなくメッセージ表示時の
`manageAlreadyRead` 自体が呼ばれない。このため、未読時に
`unReadTextSkip = false` を確認してスキップを停止する標準処理へ到達せず、
既読記録のない新規ゲームでもスキップが継続していた。

加えて、独自 CONFIG オーバーレイの `DEFAULT_CONFIG.skip` が `true` だったため、
DEFAULT 操作によって未読スキップを有効化し、同じ値をシステム変数へ永続化していた。

## カスタマイズの影響確認

- `auto_chara` は立ち絵・話者表示用であり、`stat.already_read`、`sf.record`、
  `unReadTextSkip`、`setSkip` を変更していない。
- 独自のセーブ／ロード UI と音声メニュー補正には、メニュー遷移時にスキップを
  解除する処理はあるが、未読時にスキップを強制的に開始する処理はない。
- 標準のキー／マウス処理と画面上の SKIP ボタンは、いずれも標準の
  `setSkip` / `role="skip"` を利用している。入力経路によって既読判定を迂回する
  独自実装はない。

## 修正

`autoRecordLabel = true` と `unReadTextSkip = false` をプロジェクト設定として明示し、
標準の既読記録と「未読でスキップ停止」の経路を常に有効にした。また、独自 CONFIG の
DEFAULT も未読スキップ OFF に揃えた。

既存の `sf.record` やセーブデータは削除・変換しない。既存ユーザーが CONFIG で
未読スキップ ON を選択済みの場合は、保存済みの
`sf._system_config_unread_text_skip = "true"` が起動時にプロジェクト既定値を上書きするため、
従来どおり未読を含む全スキップを利用できる。

; TRUE END後にだけタイトルから入れる、全セーブ共通の特典メニュー。
*start
[cm]
[clearfix]
[hidemenubutton]
[stopbgm time=0 buf_all="true"]
[bg storage="black.png" time=0]
[iscript]
window.HLExtra.open();
[endscript]
[s]

; EXTRAから本編へ戻る際は、タイトル画面で非表示にされたメッセージレイヤーと
; エンディング等で変更された可能性のあるテキストウィンドウの配置を復旧する。
; デバッグ画面のチャプタージャンプと同じ状態に整えてから各章へ遷移する。
*jump_to_chapter
[cm]
[clearfix]
[position layer="message0" left=0 top=540 width=1280 height=160 page=fore visible=true opacity=0]
[position layer=message0 page=fore margint="30" marginl="100" marginr="100" marginb="30"]
[layopt layer=message0 visible=true]
[glyph figure="circle" color="0x8ec5e6" anim="flash" marginl="12" marginb="6"]
[iscript]
(function cleanupExtraChapterMenu() {
    $("#hl-extra, #hl-choice-backdrop, #chapter-title-overlay").remove();
    $("body").removeClass("hl-choice-active");
})();
[endscript]
[jump storage="&tf.extra_jump_storage" target="&tf.extra_jump_target"]

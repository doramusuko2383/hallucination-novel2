;一番最初に呼び出されるファイル

[title name="ハルシネーション"]

[stop_keyconfig]

; ★ここは絶対消さない
@call storage="tyrano.ks"
[call storage="chara_define.ks"]
[call storage="chara_auto.ks"]

[chara_config pos_mode="false"]

; UI初期化
[hidemenubutton]

; ▼メッセージウィンドウ設定（これが重要）
[position layer="message0" left=0 top=540 width=1280 height=160 page=fore visible=true opacity=0]

[position layer=message0 page=fore margint="30" marginl="100" marginr="100" marginb="30"]

@layopt layer=message0 visible=true

[glyph figure="circle" color="0x8ec5e6" anim="flash" marginl="12" marginb="6"]

[delay speed="42"]
; ★ここでデバッグに飛ぶ
@jump storage="debug.ks" target="debug_menu"

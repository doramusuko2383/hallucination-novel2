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

; ★ここでデバッグに飛ぶ
@jump storage="debug.ks" target="debug_menu"

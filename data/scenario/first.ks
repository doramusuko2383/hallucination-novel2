;一番最初に呼び出されるファイル

[title name="ハルシネーション"]

[stop_keyconfig]

; ティラノ初期化（必須）
@call storage="tyrano.ks"
[call storage="chara_define.ks"]
[call storage="chara_auto.ks"]

[chara_config pos_mode="false"]

[hidemenubutton]

; デバッグフラグ
[iscript]
var DEBUG_MODE = true;
[endscript]

; ★デバッグなら即ジャンプ（タイトル処理より前が重要）
[if exp="DEBUG_MODE"]
    @jump storage="debug.ks" target="debug_menu"
[endif]

; ---- 通常タイトル ----
*title_menu
[cm]

@layopt layer=message0 visible=false

[iscript]
var baseLayer = TG.layer.getLayer("base", "fore");
baseLayer.css("background-image", "none");
baseLayer.css("background-color", "#000000");
[endscript]

[glink name="title-choice" color="black" size="34" x="0" y="320" width="1280" text="最初から" target="*title_newgame"]
[glink name="title-choice" color="black" size="34" x="0" y="390" width="1280" text="続きから" target="*title_continue"]

[s]

*title_continue
[showload]
@jump target="*title_menu"

*title_newgame

@jump storage="chapter1.ks" target="*ch1_start"

[s]

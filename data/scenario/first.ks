;一番最初に呼び出されるファイル

[title name="ハルシネーション"]

[stop_keyconfig]

; ティラノ基本初期化（絶対必要）
@call storage="tyrano.ks"
[call storage="chara_define.ks"]
[call storage="chara_auto.ks"]

[chara_config pos_mode="false"]

; メニュー非表示
[hidemenubutton]

; -----------------------------
; デバッグフラグ（ここで切り替え）
[iscript]
var DEBUG_MODE = true;
[endscript]
; -----------------------------

*title_menu
[cm]

; メッセージレイヤー一旦非表示
@layopt layer=message0 visible=false

; 背景を黒に
[iscript]
var baseLayer = TG.layer.getLayer("base", "fore");
baseLayer.css("background-image", "none");
baseLayer.css("background-color", "#000000");
[endscript]

; デバッグモードなら即デバッグ画面へ
[if exp="DEBUG_MODE"]
    @jump storage="debug.ks" target="*debug_menu"
[endif]

; 通常タイトルメニュー
[glink name="title-choice" color="black" size="34" x="0" y="320" width="1280" text="最初から" target="*title_newgame"]
[glink name="title-choice" color="black" size="34" x="0" y="390" width="1280" text="続きから" target="*title_continue"]

[s]

*title_continue
[showload]
@jump target="*title_menu"

*title_newgame

; フラグ初期化
[iscript]
if (f.complicity === undefined) f.complicity = 0;
if (f.fear === undefined) f.fear = 0;
if (f.dependence === undefined) f.dependence = 0;
if (f.doubt === undefined) f.doubt = 0;

if (f.used_ability_shota === undefined) f.used_ability_shota = false;
if (f.used_ability_ayaka === undefined) f.used_ability_ayaka = false;
if (f.investigated_ayaka === undefined) f.investigated_ayaka = false;

if (f.feels_guilt === undefined) f.feels_guilt = false;
if (f.trust_megumi === undefined) f.trust_megumi = false;
if (f.has_crossed_line === undefined) f.has_crossed_line = false;

if (f.debug_flags_snapshot === undefined) f.debug_flags_snapshot = "";
[endscript]

; 本編へ
@jump storage="chapter1.ks" target="*ch1_start"

[s]

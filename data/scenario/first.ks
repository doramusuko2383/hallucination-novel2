;一番最初に呼び出されるファイル
 
[title name="ハルシネーション"]

[stop_keyconfig]


;ティラノスクリプトが標準で用意している便利なライブラリ群
;コンフィグ、CG、回想モードを使う場合は必須
@call storage="tyrano.ks"
[call storage="chara_define.ks"]
[call storage="chara_auto.ks"]

[chara_config pos_mode="false"]

;ゲームで必ず必要な初期化処理はこのファイルに記述するのがオススメ

;最初は右下のメニューボタンを非表示にする
[hidemenubutton]

*title_menu
[cm]
@freeimage layer=0 page=fore
@layopt layer=message0 visible=false
[iscript]
var baseLayer = TG.layer.getLayer("base", "fore");
baseLayer.css("background-image", "none");
baseLayer.css("background-color", "#000000");
[endscript]

; タイトル専用背景。動画は使わず、夕焼け屋上の静止画にタイトルとメニューを重ねる。
[bg storage="title_rooftop.webp" time=0]

[glink name="title-logo" color="black" size="60" x="330" y="175" width="620" height="86" text="ハルシネーション" target="*title_menu" cm="false"]
[glink name="title-subtitle" color="black" size="20" x="440" y="265" width="400" height="28" text="HALLUCINATION" target="*title_menu" cm="false"]
[glink name="title-choice title-start title-primary" color="black" size="22" x="520" y="395" width="240" height="34" text="NEW GAME" target="*title_newgame"]
[glink name="title-choice" color="black" size="17" x="520" y="445" width="240" height="30" text="CONTINUE" target="*title_continue"]
[glink name="title-choice" color="black" size="17" x="520" y="493" width="240" height="30" text="LOAD" target="*title_continue"]
[glink name="title-choice" color="black" size="17" x="520" y="541" width="240" height="30" text="CONFIG" target="*title_config"]
[glink name="title-choice" color="black" size="17" x="520" y="589" width="240" height="30" text="EXIT" target="*title_quit"]
[s]

*title_continue
[showload]
@jump target="*title_menu"

*title_config
[sleepgame storage="config.ks"]
@jump target="*title_menu"

*title_quit
[iscript]
window.close();
[endscript]
@jump target="*title_menu"

*title_newgame
@freeimage layer=0 page=fore

;導入で使用する隠しパラメータの初期化（UI表示なし）
[iscript]
if (f.complicity === undefined) f.complicity = 0;
if (f.fear === undefined) f.fear = 0;
if (f.dependence === undefined) f.dependence = 0;
if (f.doubt === undefined) f.doubt = 0;

;行動ベースのフラグ（選択/行動の記録）
if (f.used_ability_shota === undefined) f.used_ability_shota = false;
if (f.used_ability_ayaka === undefined) f.used_ability_ayaka = false;
if (f.investigated_ayaka === undefined) f.investigated_ayaka = false;

;心理フラグ（状態変化の記録）
if (f.feels_guilt === undefined) f.feels_guilt = false;
if (f.trust_megumi === undefined) f.trust_megumi = false;
if (f.has_crossed_line === undefined) f.has_crossed_line = false;

;デバッグ補助（表示用スナップショット）
if (f.debug_flags_snapshot === undefined) f.debug_flags_snapshot = "";
; デバッグモード
if (f.debug_mode === undefined) f.debug_mode = true;
[endscript]

;起動直後に本編へ
[cm]
; [bg] は time 省略時に3秒フェード待ちになるため、黒背景は即時切替にする
[bg storage="black.png" time=0 wait=false]
[position layer="message0" left=0 top=540 width=1280 height=160 page=fore visible=true opacity=0]
[position layer=message0 page=fore margint="30" marginl="100" marginr="100" marginb="30"]
@layopt layer=message0 visible=true
[glyph figure="circle" color="0x8ec5e6" anim="flash" marginl="12" marginb="6"]

; 本編中のティラノ標準導線を復旧
[showmenubutton]
[button fix="true" name="system_save quiet_system_button quiet_save" role="save" graphic="" width="54" height="24" x="748" y="520"]
[button fix="true" name="system_load quiet_system_button quiet_load" role="load" graphic="" width="54" height="24" x="808" y="520"]
[button fix="true" name="system_backlog quiet_system_button quiet_log" role="backlog" graphic="" width="48" height="24" x="868" y="520"]
[button fix="true" name="system_auto quiet_system_button quiet_auto" role="auto" graphic="" width="54" height="24" x="922" y="520"]
[button fix="true" name="system_skip quiet_system_button quiet_skip" role="skip" graphic="" width="54" height="24" x="982" y="520"]
[button fix="true" name="system_config quiet_system_button quiet_config" role="sleepgame" storage="config.ks" graphic="" width="72" height="24" x="1042" y="520"]

[configdelay speed="42"]

[if exp="f.debug_mode==true"]
    @jump target="*debug_entry"
[else]
    @jump storage="chapter1.ks" target="*chapter1"
[endif]

[s]
; =========================
; デバッグ用
; =========================

*debug_entry
[cm]

デバッグモード：
■チャプター選択
[glink text="Chapter1 開始" target="*dbg_ch1_start"]
[glink text="Chapter2 開始" target="*dbg_ch2_start"]
[glink text="Chapter3 開始" target="*dbg_ch3_start"]
[glink text="Chapter4 開始" target="*dbg_ch4_start"]
[glink text="Chapter5 開始" target="*dbg_ch5_start"]
[glink text="Chapter6 開始" target="*dbg_ch6_start"]
[glink text="Chapter7 開始" target="*dbg_ch7_start"]

■現在テスト中
[glink text="Chapter2 現在テスト中" target="*debug_ch2"]
[glink text="通常起動に戻る" target="*debug_off"]

[s]

*debug_ch2
[cm]
チャプター2：
[glink text="現在テスト中" target="*dbg_ch2_current"]
; [glink] は [s] 到達時に自動配置・表示されるため、ここで [p] を挟まない
[s]

; ===== 現在テスト用（ここだけ毎回書き換える） =====
*dbg_ch2_current
@jump storage="chapter2.ks" target="*ch2_debug_current"

; ===== 章冒頭ジャンプ =====
*dbg_ch1_start
@jump storage="chapter1.ks" target="*ch1_start"

*dbg_ch2_start
@jump storage="chapter2.ks" target="*ch2_start"

*dbg_ch3_start
@jump storage="chapter3.ks" target="*ch3_start"

*dbg_ch4_start
@jump storage="chapter4.ks" target="*ch4_start"

*dbg_ch5_start
@jump storage="chapter5.ks" target="*ch5_start"

*dbg_ch6_start
@jump storage="chapter6.ks" target="*ch6_start"

*dbg_ch7_start
@jump storage="chapter7.ks" target="*ch7_start"


; ===== 個別ジャンプ =====
*dbg_ch1_rooftop_01
@jump storage="chapter1.ks" target="*ch1_rooftop_01"

*dbg_ch1_rooftop_02
@jump storage="chapter1.ks" target="*ch1_rooftop_02"

*dbg_ch1_home
@jump storage="chapter1.ks" target="*ch1_home"

*dbg_ch1_after_2days
@jump storage="chapter1.ks" target="*ch1_after_2days"


*debug_off
[eval exp="f.debug_mode=false"]
@jump storage="chapter1.ks" target="*chapter1"

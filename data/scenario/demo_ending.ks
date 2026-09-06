; 日本語体験版専用の終了画面。
; 表示文言と将来のSteam導線設定は、このファイル冒頭へ集約する。
*start
[iscript]
tf.demo_ending_text = {
    heading: "体験版はここまでです",
    message: "プレイしていただき、ありがとうございました。",
    product: "続きは製品版でお楽しみください。",
    back_to_title: "タイトルへ戻る",
    quit_game: "ゲームを終了",
    wishlist: "ウィッシュリストに追加"
};
// 正式なSteamストアURL決定後、この値と専用ボタンの処理を追加する。
tf.demo_steam_url = "";
sf.demo_completed = true;
TG.saveSystemVariable();
TYRANO.kag.setAuto(false);
TYRANO.kag.setSkip(false);
TYRANO.kag.stat.is_skip = false;
$("body").addClass("demo-ending-active");
$(".button_menu, .role_button, .quiet_system_button").hide();
[endscript]
[cm]
[clearfix]
[stop_keyconfig]
[hidemenubutton]
[layopt layer="message0" visible="false"]
[stopbgm time="500" buf_all="true"]
[stopse time="500" buf_all="true"]
[chara_hide_all time="0"]
[bg storage="black.png" time="700" wait="true"]

[ptext layer="fix" name="demo_ending_kicker" text="DEMO" x="0" y="172" width="1280" align="center" size="16" color="0x8ec5e6" time="400"]
[ptext layer="fix" name="demo_ending_heading" text="&tf.demo_ending_text.heading" x="0" y="224" width="1280" align="center" size="42" color="0xf7f8fa" time="500"]
[ptext layer="fix" name="demo_ending_message" text="&tf.demo_ending_text.message" x="0" y="310" width="1280" align="center" size="20" color="0xd8dce2" time="400"]
[ptext layer="fix" name="demo_ending_product" text="&tf.demo_ending_text.product" x="0" y="350" width="1280" align="center" size="20" color="0xd8dce2" time="400"]
[glink name="demo_ending_back" text="&tf.demo_ending_text.back_to_title" target="*back_to_title" x="340" y="470" width="280" height="54" size="18" color="black" clickse="se/click.ogg"]
[glink name="demo_ending_quit" text="&tf.demo_ending_text.quit_game" target="*quit_game" x="660" y="470" width="280" height="54" size="18" color="black" clickse="se/click.ogg"]
[s]

*back_to_title
[iscript]
$("body").removeClass("demo-ending-active");
$(".demo_ending_kicker, .demo_ending_heading, .demo_ending_message, .demo_ending_product, .demo_ending_back, .demo_ending_quit").remove();
[endscript]
[jump storage="first.ks" target="*title_menu"]

*quit_game
[iscript]
window.close();
[endscript]
[s]

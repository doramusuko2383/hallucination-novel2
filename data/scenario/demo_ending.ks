; 日本語体験版専用の終了画面。
; 表示文言とSteam導線設定は、このファイル冒頭へ集約する。
*start
[iscript]
tf.demo_ending_text = {
    title: "HALLUCINATION",
    demo: "DEMO",
    thanks: "体験版をプレイしていただき、ありがとうございました。",
    message: "物語は、ここから動き始める。",
    release: "2026年10月27日 発売予定",
    wishlist: "Steamでウィッシュリストに追加",
    back_to_title: "タイトルへ戻る",
    quit_game: "ゲームを終了"
};
tf.demo_steam_url = "https://store.steampowered.com/app/5045390/";
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
[bg storage="title_rooftop.webp" time="700" wait="true"]
[layermode name="demo_ending_shade" color="0x050a12" opacity="185" mode="normal" time="500" wait="true"]

[ptext layer="fix" name="demo_ending_title" text="&tf.demo_ending_text.title" x="0" y="84" width="1280" align="center" size="13" color="0xe6edf3" time="400"]
[ptext layer="fix" name="demo_ending_demo" text="&tf.demo_ending_text.demo" x="0" y="116" width="1280" align="center" size="27" color="0x9dcce8" time="400"]
[ptext layer="fix" name="demo_ending_thanks" text="&tf.demo_ending_text.thanks" x="0" y="213" width="1280" align="center" size="22" color="0xf7f8fa" time="500"]
[ptext layer="fix" name="demo_ending_message" text="&tf.demo_ending_text.message" x="0" y="270" width="1280" align="center" size="17" color="0xdde5eb" time="400"]
[ptext layer="fix" name="demo_ending_release" text="&tf.demo_ending_text.release" x="0" y="330" width="1280" align="center" size="15" color="0xc9d3da" time="400"]
[glink name="demo_ending_wishlist" text="&tf.demo_ending_text.wishlist" target="*open_steam" x="410" y="401" width="460" height="58" size="18" color="black" clickse="se/click.ogg"]
[glink name="demo_ending_back" text="&tf.demo_ending_text.back_to_title" target="*back_to_title" x="520" y="493" width="240" height="38" size="14" color="black" clickse="se/click.ogg"]
[glink name="demo_ending_quit" text="&tf.demo_ending_text.quit_game" target="*quit_game" x="550" y="555" width="180" height="30" size="12" color="black" clickse="se/click.ogg"]
[s]

*open_steam
[iscript]
var demoSteamWindow = window.open(tf.demo_steam_url, "_blank", "noopener,noreferrer");
if (demoSteamWindow) demoSteamWindow.opener = null;
[endscript]
[s]

*back_to_title
[iscript]
$("body").removeClass("demo-ending-active");
$(".demo_ending_title, .demo_ending_demo, .demo_ending_thanks, .demo_ending_message, .demo_ending_release, .demo_ending_wishlist, .demo_ending_back, .demo_ending_quit").remove();
[endscript]
[free_layermode name="demo_ending_shade" time="250" wait="true"]
[jump storage="first.ks" target="*title_menu"]

*quit_game
[iscript]
window.close();
[endscript]
[s]

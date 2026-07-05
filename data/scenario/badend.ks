; BAD END 共通演出。
; 呼び出し元で以下を設定してから *bad_end に jump する。
; - f.bad_end_no
; - f.bad_end_title
; - f.bad_end_retry_storage
; - f.bad_end_retry_target

*bad_end
[cm]
[clearfix]
[hidemenubutton]
[free layer="fix" name="bad_end_bg"]
[free layer="fix" name="bad_end_number"]
[free layer="fix" name="bad_end_title"]
[free layer="fix" name="bad_end_light"]
[free layer="fix" name="bad_end_divider"]
[free layer="fix" name="bad_end_retry"]
[free layer="fix" name="bad_end_title_return"]
[fadeoutbgm time=600]
[fadeoutse time=600]
[chara_hide_all time=220]
[bg storage="black.png" time=0]
[playbgm storage="badend.ogg" loop=false volume=55 fadein=true time=400]
[iscript]
(function prepareBadEndUi() {
    $("body").addClass("badend-active");
    $(".button_menu, .role_button, .quiet_system_button").hide();
})();
[endscript]
[ptext layer="fix" name="bad_end_bg,badend-screen" text=" " x="0" y="0" width="1280" height="720" size="1" color="0xffffff" time="0"]
[wait time=700]
[ptext layer="fix" name="bad_end_number,badend-kicker" text="" x="0" y="262" width="1280" align="center" size="18" color="0xe9edf2" time="600"]
[iscript]
$(".bad_end_number").updatePText(f.bad_end_no || "").addClass("badend-kicker-ready");
[endscript]
[wait time=200]
[ptext layer="fix" name="bad_end_title,badend-title-glitch" text="" x="0" y="304" width="1280" align="center" size="54" color="0xf7f8fa" time="700"]
[iscript]
$(".bad_end_title").updatePText(f.bad_end_title || "");
[endscript]
[ptext layer="fix" name="bad_end_light,badend-title-light" text=" " x="230" y="270" width="820" height="145" size="1" color="0xffffff" time="600"]
[wait time=550]
[iscript]
(function runBadEndGlitch() {
    var targets = $(".badend-title-glitch");
    if (!targets.length) return;

    targets.each(function () {
        var target = $(this);
        target.attr("data-text", target.text());
        target.removeClass("badend-glitching");
    });

    function pulse() {
        if (window.TYRANO && TYRANO.kag && TYRANO.kag.ftag) {
            TYRANO.kag.ftag.startTag("playse", { storage: "se/short_glitch.ogg", volume: 18 });
        }
        targets.each(function () {
            var target = $(this);
            target.attr("data-text", target.text());
            target.removeClass("badend-glitching");
        });
        targets.get(0).offsetWidth;
        targets.addClass("badend-glitching");
        setTimeout(function () {
            targets.removeClass("badend-glitching");
        }, 320);
    }

    pulse();
    clearInterval(window.__badEndGlitchTimer);
    window.__badEndGlitchTimer = setInterval(pulse, 3800);
})();
[endscript]
[wait time=300]
[glink name="bad_end_retry,badend-choice" text="この選択肢からやり直す" target="*bad_end_retry" x="440" y="474" width="400" height="42" size="18" clickse="se/click.ogg"]
[ptext layer="fix" name="bad_end_divider,badend-choice-divider" text=" " x="440" y="540" width="400" height="1" size="1" color="0xffffff" time="500"]
[glink name="bad_end_title_return,badend-choice" text="タイトルへ戻る" target="*bad_end_to_title" x="440" y="576" width="400" height="42" size="18" clickse="se/click.ogg"]
[s]

*bad_end_retry
[iscript]
clearInterval(window.__badEndGlitchTimer);
window.__badEndGlitchTimer = null;
$("body").removeClass("badend-active");
$(".button_menu, .role_button, .quiet_system_button").show();
[endscript]
[showmenubutton]
[free layer="fix" name="bad_end_bg"]
[free layer="fix" name="bad_end_number"]
[free layer="fix" name="bad_end_title"]
[free layer="fix" name="bad_end_light"]
[free layer="fix" name="bad_end_divider"]
[free layer="fix" name="bad_end_retry"]
[free layer="fix" name="bad_end_title_return"]
[stopbgm time=0 buf_all="true"]
[jump storage=&f.bad_end_retry_storage target=&f.bad_end_retry_target]

*bad_end_to_title
[iscript]
clearInterval(window.__badEndGlitchTimer);
window.__badEndGlitchTimer = null;
$("body").removeClass("badend-active");
$(".button_menu, .role_button, .quiet_system_button").show();
[endscript]
[showmenubutton]
[free layer="fix" name="bad_end_bg"]
[free layer="fix" name="bad_end_number"]
[free layer="fix" name="bad_end_title"]
[free layer="fix" name="bad_end_light"]
[free layer="fix" name="bad_end_divider"]
[free layer="fix" name="bad_end_retry"]
[free layer="fix" name="bad_end_title_return"]
[stopbgm time=0 buf_all="true"]
[jump storage="first.ks" target="*title_menu"]

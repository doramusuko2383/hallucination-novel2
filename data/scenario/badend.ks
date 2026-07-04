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
[fadeoutbgm time=800]
[fadeoutse time=800]
[chara_hide_all time=300]
[bg storage="black.png" time=0]
[iscript]
(function prepareBadEndUi() {
    $(".button_menu, .role_button, .quiet_system_button").hide();
})();
[endscript]
[ptext layer="fix" name="bad_end_bg,badend-screen" text=" " x="0" y="0" width="1280" height="720" size="1" color="0xffffff" time="0"]
[wait time=1200]
[ptext layer="fix" name="bad_end_number,badend-kicker" text=&f.bad_end_no x="0" y="256" width="1280" align="center" size="18" color="0xe9edf2" time="900"]
[wait time=520]
[ptext layer="fix" name="bad_end_title,badend-title-glitch" text=&f.bad_end_title x="0" y="315" width="1280" align="center" size="46" color="0xf4f5f7" time="1100"]
[ptext layer="fix" name="bad_end_light,badend-title-light" text=" " x="350" y="388" width="580" height="18" size="1" color="0xffffff" time="900"]
[wait time=900]
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
        targets.each(function () {
            var target = $(this);
            target.attr("data-text", target.text());
            target.removeClass("badend-glitching");
        });
        targets.get(0).offsetWidth;
        targets.addClass("badend-glitching");
        setTimeout(function () {
            targets.removeClass("badend-glitching");
        }, 120);
    }

    pulse();
    clearInterval(window.__badEndGlitchTimer);
    window.__badEndGlitchTimer = setInterval(pulse, 4200);
})();
[endscript]
[wait time=520]
[glink name="bad_end_retry,badend-choice" text="この選択肢からやり直す" target="*bad_end_retry" x="450" y="476" width="380" height="44" size="19" clickse="se/click.ogg"]
[ptext layer="fix" name="bad_end_divider,badend-choice-divider" text=" " x="405" y="540" width="470" height="1" size="1" color="0xffffff" time="700"]
[glink name="bad_end_title_return,badend-choice" text="タイトルへ戻る" target="*bad_end_to_title" x="450" y="575" width="380" height="44" size="19" clickse="se/click.ogg"]
[s]

*bad_end_retry
[iscript]
clearInterval(window.__badEndGlitchTimer);
window.__badEndGlitchTimer = null;
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
[jump storage=&f.bad_end_retry_storage target=&f.bad_end_retry_target]

*bad_end_to_title
[iscript]
clearInterval(window.__badEndGlitchTimer);
window.__badEndGlitchTimer = null;
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
[jump storage="first.ks" target="*title_menu"]

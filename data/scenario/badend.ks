; BAD END 共通演出。
; 呼び出し元で以下を設定してから *bad_end に jump する。
; - f.bad_end_no
; - f.bad_end_title
; - f.bad_end_retry_storage
; - f.bad_end_retry_target

*bad_end
[cm]
[free layer="fix" name="bad_end_number"]
[free layer="fix" name="bad_end_title"]
[fadeoutbgm time=800]
[fadeoutse time=800]
[chara_hide_all time=300]
[bg storage="black.png" time=0]
[wait time=2000]
[ptext layer="fix" name="bad_end_number,badend-glitch" text=&f.bad_end_no x="390" y="290" width="500" align="center" size="44" color="0xf0f6fa" time="1000"]
[wait time=900]
[ptext layer="fix" name="bad_end_title,badend-title-glitch" text=&f.bad_end_title x="390" y="360" width="500" align="center" size="26" color="0xdde6ec" time="1000"]
[wait time=1100]
[iscript]
(function runBadEndGlitchOnce() {
    var targets = $(".badend-glitch, .badend-title-glitch");
    if (!targets.length) return;

    targets.each(function () {
        var target = $(this);
        target.attr("data-text", target.text());
        target.removeClass("badend-glitching");
    });

    if (window.__titleLogoGlitchSe) {
        TYRANO.kag.readyAudio();
        window.__titleLogoGlitchSe.stop();
        window.__titleLogoGlitchSe.volume(0.035);
        window.__titleLogoGlitchSe.play();
    }

    targets.get(0).offsetWidth;
    targets.addClass("badend-glitching");

    setTimeout(function () {
        targets.removeClass("badend-glitching");
        targets.each(function () {
            var target = $(this);
            target.attr("data-text", target.text());
        });
    }, 110);
})();
[endscript]
[wait time=180]
[glink text="この選択肢からやり直す" storage=&f.bad_end_retry_storage target=&f.bad_end_retry_target x="470" y="470" width="340" height="44" size="18" clickse="se/click.ogg"]
[glink text="タイトルへ戻る" storage="first.ks" target="*title_menu" x="470" y="540" width="340" height="44" size="18" clickse="se/click.ogg"]
[s]

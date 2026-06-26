; タイトル画面専用CONFIG。
; タイトルメニューへ重ねず、専用画面上で本編CONFIGと同じUIを表示する。

*title_config
[cm]
[clearfix]
[free_layermode time=0 wait=true]
[bg storage="title_rooftop.webp" time=0]
[layermode color="0x05080d" opacity="165" time="100" wait="true"]
[iscript]
(function openTitleConfigScreen() {
    window.__hlConfigOverlayOnClose = function () {
        TYRANO.kag.ftag.startTag("jump", { storage: "title_config.ks", target: "*title_config_close" });
    };
    if (window.__hlOpenConfigOverlay) window.__hlOpenConfigOverlay();
    else TYRANO.kag.ftag.startTag("jump", { storage: "title_config.ks", target: "*title_config_close" });
})();
[endscript]
[s]

*title_config_close
[cm]
[clearfix]
[free_layermode time="100" wait="true"]
@jump storage="first.ks" target="*title_menu"

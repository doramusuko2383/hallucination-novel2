;一番最初に呼び出されるファイル
 
[title name="ハルシネーション"]

[stop_keyconfig]


;ティラノスクリプトが標準で用意している便利なライブラリ群
;コンフィグ、CG、回想モードを使う場合は必須
@call storage="tyrano.ks"
[call storage="chara_define.ks"]
[call storage="chara_auto.ks"]
[call storage="macro.ks"]

[chara_config pos_mode="false"]

;ゲームで必ず必要な初期化処理はこのファイルに記述するのがオススメ

;最初は右下のメニューボタンを非表示にする
[hidemenubutton]

*start
@jump target="*splash"

*splash
[cm]
@freeimage layer=0 page=fore
@layopt layer=message0 visible=false
[hidemenubutton]
[iscript]
(function setupSplashPreload() {
    $(".button_menu").hide();
    var baseLayer = TG.layer.getLayer("base", "fore");
    var preload = window.__titlePreload = window.__titlePreload || {};

    baseLayer.css("background-image", "none");
    baseLayer.css("background-color", "#000000");

    if (!preload.titleBg) {
        preload.titleBg = new Image();
        preload.titleBg.src = "./data/bgimage/title_rooftop.webp";
    }

    if (!window.__titleLogoGlitchSe) {
        window.__titleLogoGlitchSe = new Howl({
            src: [$.parseStorage("se/short_glitch.ogg", "sound")],
            volume: 0.08,
            preload: true
        });
    }

    if (!preload.titleWindBgm) {
        preload.titleWindBgm = new Howl({
            src: [$.parseStorage("nature_wind.ogg", "bgm")],
            volume: 0,
            preload: true
        });
    }

    if (!preload.titleClickSe) {
        preload.titleClickSe = new Howl({
            src: [$.parseStorage("se/click.ogg", "sound")],
            volume: 1,
            preload: true
        });
    }

    if (document.fonts && document.fonts.load) {
        document.fonts.load('600 16px GenMin');
        document.fonts.load('400 60px GenMin');
    }

    $("#proyama-splash").remove();

    var splash = $("<div></div>").attr("id", "proyama-splash");
    splash.css({
        position: "absolute",
        left: 0,
        top: 0,
        width: "100%",
        height: "100%",
        display: "flex",
        alignItems: "center",
        justifyContent: "center",
        background: "#000000",
        color: "rgba(255, 255, 255, 0.9)",
        fontFamily: "'Times New Roman', 'Yu Mincho', 'Hiragino Mincho ProN', serif",
        fontSize: "24px",
        letterSpacing: "0.28em",
        fontWeight: "400",
        lineHeight: "1",
        opacity: 0,
        zIndex: 999999,
        pointerEvents: "none"
    });
    splash.text("PROYAMA GAMES");
    baseLayer.append(splash);
    splash.animate({ opacity: 1 }, 500);
})();
[endscript]
[wait time=1500]
[iscript]
(function fadeOutSplash() {
    var splash = $("#proyama-splash");
    if (!splash.length) return;

    splash.stop(true, true).animate({ opacity: 0 }, 500, function () {
        splash.remove();
    });
})();
[endscript]
[wait time=500]
@jump target="*title_menu"

*title_menu
[cm]
@freeimage layer=0 page=fore
@layopt layer=message0 visible=false
[iscript]
$(".button_menu").hide();
var baseLayer = TG.layer.getLayer("base", "fore");
baseLayer.css("background-image", "none");
baseLayer.css("background-color", "#000000");
[endscript]

; タイトル専用背景。動画は使わず、夕焼け屋上の静止画にタイトルとメニューを重ねる。
[bg storage="title_rooftop.webp" time=0]
; タイトル画面では環境音をグリッチSEより少し大きめにループ再生する。
; [playbgm] は未操作時のブラウザ音声制限でクリック待ちになるため、
; タイトル表示開始時に Howl で非同期再生して表示をブロックしない。

[iscript]
(function startTitleWindWithoutBlockingTitle() {
    var key = "__hlTitleWind";
    var src = $.parseStorage("nature_wind.ogg", "bgm");
    if (window[key]) {
        window[key].stop();
        window[key].unload();
    }
    window[key] = new Howl({
        src: [src],
        loop: true,
        preload: true,
        volume: 0.68
    });

    function playTitleWind() {
        if (!window[key] || window[key].playing()) return;
        window[key].play();
    }

    if (!window.Howler || Howler.ctx && Howler.ctx.state === "running") {
        playTitleWind();
    } else {
        Howler.once("unlock", playTitleWind);
        $(document).one("pointerdown.hlTitleWind keydown.hlTitleWind touchstart.hlTitleWind", playTitleWind);
    }
})();
[endscript]

[glink name="title-logo" color="black" size="76" x="330" y="168" width="620" height="96" text="ハルシネーション" target="*title_menu" cm="false"]
[glink name="title-subtitle" color="black" size="18" x="440" y="270" width="400" height="32" text="HALLUCINATION" target="*title_menu" cm="false"]
[glink name="title-choice title-start title-primary" color="black" size="16" x="520" y="412" width="240" height="30" text="NEW GAME" target="*title_newgame"]
[glink name="title-choice" color="black" size="16" x="520" y="462" width="240" height="30" text="CONTINUE" target="*title_continue"]
[glink name="title-choice" color="black" size="16" x="520" y="512" width="240" height="30" text="LOAD" target="*title_load"]
[glink name="title-choice" color="black" size="16" x="520" y="562" width="240" height="30" text="CONFIG" target="*title_config"]
[glink name="title-choice" color="black" size="16" x="520" y="612" width="240" height="30" text="EXIT" target="*title_quit"]
[iscript]
(function normalizeTitleGlinkClasses() {
    function important(button, styles) {
        var element = button.get(0);
        if (!element) return;
        Object.keys(styles).forEach(function (key) {
            element.style.setProperty(key, styles[key], "important");
        });
    }

    if (!$("#title-menu-initial-font-style").length) {
        $("head").append(
            '<style id="title-menu-initial-font-style">' +
            '.glink_button.title-logo,.glink_button.title-subtitle,.glink_button.title-choice{' +
            'font-family: GenMin, \'Times New Roman\', serif !important;' +
            'font-synthesis: none;' +
            '}' +
            '</style>'
        );
    }

    var baseTextStyle = {
        "display": "flex",
        "align-items": "center",
        "justify-content": "center",
        "box-sizing": "border-box",
        "padding": "0",
        "border": "0",
        "border-radius": "0",
        "background": "transparent",
        "background-image": "none",
        "box-shadow": "none",
        "font-family": "GenMin, 'Times New Roman', serif",
        "position": "absolute",
        "overflow": "visible",
        "opacity": "1",
        "visibility": "visible",
        "transform": "none"
    };

    function findTitleButton(text) {
        return $(".glink_button").filter(function () {
            return $.trim($(this).text()) === text;
        }).last();
    }

    function styleButton(text, classes, styles) {
        var button = findTitleButton(text);
        button.addClass(classes);
        button.removeClass("black");
        important(button, $.extend({}, baseTextStyle, styles));
        return button;
    }

    styleButton("ハルシネーション", "title-logo", {
        "width": "620px",
        "height": "86px",
        "color": "rgba(246, 249, 253, 0.96)",
        "font-size": "60px",
        "letter-spacing": "0.252em",
        "line-height": "1",
        "text-shadow": "0 0 4px rgba(255,255,255,0.45), 0 0 18px rgba(26,38,68,0.72), 0 2px 12px rgba(0,0,0,0.85)",
        "z-index": "99999998",
        "pointer-events": "none"
    }).attr("data-text", "ハルシネーション");

    styleButton("HALLUCINATION", "title-subtitle", {
        "width": "400px",
        "height": "28px",
        "color": "rgba(238, 244, 248, 0.82)",
        "font-size": "20px",
        "letter-spacing": "0.62em",
        "line-height": "1",
        "text-shadow": "0 0 7px rgba(255,255,255,0.28), 0 0 14px rgba(0,0,0,0.62)",
        "z-index": "99999998",
        "pointer-events": "none"
    });

    ["NEW GAME", "CONTINUE", "LOAD", "CONFIG", "EXIT"].forEach(function (text, index) {
        styleButton(text, index === 0 ? "title-choice title-start title-primary" : "title-choice", {
            "color": "rgba(248, 250, 255, 0.94)",
            "font-size": "16px",
            "font-weight": "600",
            "letter-spacing": "0.34em",
            "text-shadow": "0 0 7px rgba(0,0,0,0.9), 0 0 14px rgba(22,32,54,0.8)",
            "z-index": "99999999",
            "pointer-events": "auto"
        });
    });
})();
[endscript]
[iscript]
(function setupTitleLogoGlitch() {
    var originalTitle = "ハルシネーション";
    var glitchTexts = [
        "ハﾉﾚシネーション",
        "ハルシネーショソ",
        "ハルシネ一ション",
        "ﾊﾙｼﾈｰｼｮﾝ"
    ];
    var timerKey = "__titleLogoGlitchTimer";
    var seKey = "__titleLogoGlitchSe";
    var logo = $(".glink_button.title-logo").last();

    if (window[timerKey]) {
        clearTimeout(window[timerKey]);
        window[timerKey] = null;
    }

    function getDelay(isFirst) {
        var min = isFirst ? 2000 : 5000;
        var max = isFirst ? 4000 : 10000;
        return min + Math.floor(Math.random() * (max - min + 1));
    }

    function getGlitchSe() {
        if (!window[seKey]) {
            window[seKey] = new Howl({
                src: [$.parseStorage("se/short_glitch.ogg", "sound")],
                volume: 0.08,
                preload: true
            });
        }

        return window[seKey];
    }

    function playGlitchSe() {
        TYRANO.kag.readyAudio();
        var sound = getGlitchSe();
        sound.stop();
        sound.volume(0.08);
        sound.play();
    }

    function pickGlitchText() {
        return glitchTexts[Math.floor(Math.random() * glitchTexts.length)];
    }

    function isLogoAlive() {
        return logo.length && $.contains(document, logo.get(0));
    }

    function resetLogo() {
        if (!isLogoAlive()) return;
        logo.text(originalTitle);
        logo.attr("data-text", originalTitle);
        logo.removeClass("title-logo-glitching");
    }

    function runGlitchBurst(activeDuration) {
        if (!isLogoAlive()) return;
        logo.removeClass("title-logo-glitching");
        logo.get(0).offsetWidth;
        var glitchText = pickGlitchText();
        logo.text(glitchText);
        logo.attr("data-text", glitchText);
        logo.addClass("title-logo-glitching");

        setTimeout(resetLogo, activeDuration);
    }

    function runGlitchSequence() {
        if (!isLogoAlive()) {
            window[timerKey] = null;
            return;
        }

        var duration = 110 + Math.floor(Math.random() * 81);
        var burstCount = 2;
        var activeDuration = 34 + Math.floor(Math.random() * 17);
        var interval = Math.floor((duration - activeDuration) / (burstCount - 1));

        playGlitchSe();

        for (var i = 0; i < burstCount; i++) {
            setTimeout(function () {
                runGlitchBurst(activeDuration);
            }, interval * i);
        }

        setTimeout(function () {
            resetLogo();
            if (isLogoAlive()) schedule(false);
        }, duration);
    }

    function schedule(isFirst) {
        window[timerKey] = setTimeout(function () {
            if (!isLogoAlive()) {
                window[timerKey] = null;
                return;
            }

            runGlitchSequence();
        }, getDelay(isFirst));
    }

    resetLogo();
    schedule(true);
})();
[endscript]
[s]

*title_continue
[iscript]
if (window.__hlTitleWind) {
    window.__hlTitleWind.fade(window.__hlTitleWind.volume(), 0, 500);
    setTimeout(function () {
        if (window.__hlTitleWind) {
            window.__hlTitleWind.stop();
            window.__hlTitleWind.unload();
            window.__hlTitleWind = null;
        }
    }, 520);
}
[endscript]
[continue_latest]
@jump target="*title_menu"

*title_load
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
; NEW GAME選択時は、決定音の余韻を置いてから風音と同時に静かに暗転する。
[playse storage=se/click.ogg volume=100]
[wait time=200]
[fadeoutbgm time=500]
[playse storage=se/openingwind.ogg volume=75]
[iscript]
(function startNewGameOpeningFade() {
    if (window.__hlTitleWind) {
        window.__hlTitleWind.fade(window.__hlTitleWind.volume(), 0, 500);
        setTimeout(function () {
            if (window.__hlTitleWind) {
                window.__hlTitleWind.stop();
                window.__hlTitleWind.unload();
                window.__hlTitleWind = null;
            }
        }, 520);
    }

    var overlayRoot = $("#tyrano_base");
    if (!overlayRoot.length) overlayRoot = TG.layer.getLayer("base", "fore");
    var overlay = $("<div></div>").attr("id", "new-game-opening-fade");
    overlay.css({
        position: "absolute",
        left: 0,
        top: 0,
        width: "100%",
        height: "100%",
        background: "#000000",
        opacity: 0,
        zIndex: 999999999,
        pointerEvents: "none"
    });
    $("#new-game-opening-fade").remove();
    overlayRoot.append(overlay);
    overlay.animate({ opacity: 1 }, 2200);
})();
[endscript]
[wait time=2200]
@freeimage layer=0 page=fore
[bg storage="black.png" time=0 wait=false]
[iscript]
$("#new-game-opening-fade").remove();
[endscript]

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
if (f.save_scene_title === undefined) f.save_scene_title = "";
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

(function () {
    "use strict";

    var SUPPRESS_CLICK_MS = 1000;

    if (window.Howler) {
        Howler.autoSuspend = false;
    }

    document.addEventListener("visibilitychange", function (event) {
        if (document.visibilityState === "hidden") {
            event.stopImmediatePropagation();
        }
    }, true);


    var CHOICE_BUTTON_NAMES = [
        "choice_intro_leave",
        "choice_intro_touch",
        "choice_intro_listen",
        "choice_ch1_go_rooftop",
        "choice_ch1_rooftop_run",
        "choice_ch1_rooftop_fight",
        "choice_ch1_rooftop_ayaka",
        "choice_ch2_megumi_good",
        "choice_ch2_megumi_bad",
        "choice_ch7_next"
    ];

    function clearChoiceButtons() {
        CHOICE_BUTTON_NAMES.forEach(function (name) {
            $("." + name).remove();
        });
        $(".layer_free").find(".glink_button, .button_graphic[data-event-tag='glink']").remove();
        $(".glink_button_clicked, .glink_button_not_clicked, .glink_button.hidden").remove();
    }

    function keepMenuButtonOnTop() {
        $(".button_menu").css({
            "z-index": 2147483647,
            "pointer-events": "auto"
        });
    }

    function getKag() {
        return window.TYRANO && window.TYRANO.kag;
    }

    function resumeHowlerContext() {
        if (window.Howler) {
            Howler.autoSuspend = false;
            if (Howler.ctx && Howler.ctx.state === "suspended") {
                Howler.ctx.resume();
            }
        }
    }

    function resumeTitleAudioElement() {
        var audio = document.getElementById("hl-title-wind-audio");
        if (!audio || !audio.paused) return;
        audio.play().catch(function () {});
    }

    function resumeKnownBgm() {
        var kag = getKag();
        resumeTitleAudioElement();
        if (window.__hlTitleWind && !window.__hlTitleWind.playing()) {
            window.__hlTitleWind.play();
        }
        if (!kag || !kag.tmp || !kag.tmp.map_bgm) return;
        Object.keys(kag.tmp.map_bgm).forEach(function (key) {
            var howl = kag.tmp.map_bgm[key];
            if (!howl || howl.playing && howl.playing()) return;
            try { howl.play(); } catch (e) {}
        });
    }

    function unlockAudio() {
        var kag = getKag();
        if (kag && !kag.tmp.ready_audio) kag.readyAudio();
        resumeHowlerContext();
        resumeKnownBgm();
    }

    function shouldSuppressScenarioClick(event) {
        if (!window.__hlSuppressNextScenarioClick || Date.now() >= window.__hlSuppressNextScenarioClick) return false;
        return $(event.target).closest(".layer_event_click").length > 0;
    }

    document.addEventListener("pointerup", function (event) {
        if (!shouldSuppressScenarioClick(event)) return;
        event.stopImmediatePropagation();
        event.preventDefault();
        window.__hlSuppressNextScenarioClick = 0;
    }, true);

    document.addEventListener("click", function (event) {
        if (!shouldSuppressScenarioClick(event)) return;
        event.stopImmediatePropagation();
        event.preventDefault();
        window.__hlSuppressNextScenarioClick = 0;
    }, true);

    $(document).on("pointerdown.hlAudioUnlock mousedown.hlAudioUnlock click.hlAudioUnlock keydown.hlAudioUnlock touchstart.hlAudioUnlock", unlockAudio);
    $(window).on("focus.hlAudioUnlock pageshow.hlAudioUnlock", unlockAudio);
    $(document).on("visibilitychange.hlAudioUnlock", function () {
        if (document.visibilityState === "visible") unlockAudio();
    });

    function restoreAfterTitleCancel() {
        var kag = getKag();
        if (!kag) return false;
        kag.cancelStrongStop();
        kag.cancelWeakStop();
        kag.stat.is_stop = false;
        kag.stat.is_wait = false;
        kag.stat.is_skip = false;
        kag.stat.is_auto = false;
        $(".remodal-wrapper, .remodal-overlay").hide();
        kag.layer.getMenuLayer().show();
        $(".button_menu").hide();
        kag.restoreFocusable && kag.restoreFocusable();
        window.__hlSuppressNextScenarioClick = Date.now() + SUPPRESS_CLICK_MS;
        unlockAudio();
        return false;
    }

    function goBackTitleWithConfirm(event) {
        if (!$(event.target).closest(".menu_back_title").length) return;
        event.stopImmediatePropagation();
        event.preventDefault();
        var kag = getKag();
        if (kag) kag.backTitle();
    }

    function installBackTitlePatch() {
        var kag = getKag();
        if (!kag || kag.__hlBackTitlePatched) return false;
        kag.__hlBackTitlePatched = true;
        kag.backTitle = function () {
            unlockAudio();
            if ("appJsInterface" in window) {
                appJsInterface.finishGame();
                return;
            }
            if (typeof TyranoPlayer === "function") {
                webkit.messageHandlers.backHandler.postMessage("endgame");
                return;
            }
            $.confirm($.lang("go_title"), function () {
                var currentKag = getKag();
                currentKag.layer.getMenuLayer().hide().empty();
                $(".button_menu").hide();
                currentKag.stat.visible_menu_button = false;
                currentKag.ftag.startTag("jump", { storage: "title.ks" });
            }, restoreAfterTitleCancel);
        };
        return true;
    }

    document.addEventListener("click", goBackTitleWithConfirm, true);

    function installMenuChoicePatch() {
        var kag = getKag();
        if (!kag || !kag.menu || kag.menu.__hlChoiceMenuPatched) return false;
        kag.menu.__hlChoiceMenuPatched = true;
        var originalShowMenu = kag.menu.showMenu;
        kag.menu.showMenu = function () {
            clearChoiceButtons();
            keepMenuButtonOnTop();
            return originalShowMenu.apply(this, arguments);
        };
        keepMenuButtonOnTop();
        return true;
    }

    if (!installMenuChoicePatch()) {
        $(window).on("load.hlMenuChoicePatch", installMenuChoicePatch);
        var menuChoicePatchTimer = setInterval(function () {
            if (installMenuChoicePatch()) clearInterval(menuChoicePatchTimer);
        }, 100);
        setTimeout(function () { clearInterval(menuChoicePatchTimer); }, 10000);
    }

    if (!installBackTitlePatch()) {
        $(window).on("load.hlBackTitlePatch", installBackTitlePatch);
        var patchTimer = setInterval(function () {
            if (installBackTitlePatch()) clearInterval(patchTimer);
        }, 100);
        setTimeout(function () { clearInterval(patchTimer); }, 10000);
    }
}());

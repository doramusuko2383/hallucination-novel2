(function () {
    "use strict";

    var CLICK_SE_PATH = "se/click.ogg";
    var SUPPRESS_CLICK_MS = 450;

    if (window.Howler) {
        Howler.autoSuspend = false;
    }

    document.addEventListener("visibilitychange", function (event) {
        if (document.visibilityState === "hidden") {
            event.stopImmediatePropagation();
        }
    }, true);

    function getKag() {
        return window.TYRANO && window.TYRANO.kag;
    }

    function getClickHowl() {
        if (!window.Howl || !window.$ || !$.parseStorage) return null;
        if (!window.__hl_menu_click_howl) {
            window.__hl_menu_click_howl = new Howl({
                src: [$.parseStorage(CLICK_SE_PATH, "sound")],
                volume: 1,
                preload: true
            });
        }
        return window.__hl_menu_click_howl;
    }

    function resumeHowlerContext() {
        if (window.Howler) {
            Howler.autoSuspend = false;
            if (Howler.ctx && Howler.ctx.state === "suspended") {
                Howler.ctx.resume();
            }
        }
    }

    function resumeKnownBgm() {
        var kag = getKag();
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

    function playClickSe() {
        unlockAudio();
        var kag = getKag();
        if (kag && kag.stat && kag.stat.play_se === false) return;
        var sound = getClickHowl();
        if (sound) {
            sound.stop();
            sound.play();
            return;
        }
        if (kag && kag.playSound) kag.playSound(CLICK_SE_PATH);
    }

    $(document).on("pointerdown.hlAudioUnlock mousedown.hlAudioUnlock click.hlAudioUnlock keydown.hlAudioUnlock touchstart.hlAudioUnlock", unlockAudio);
    $(window).on("focus.hlAudioUnlock pageshow.hlAudioUnlock", unlockAudio);
    $(document).on("visibilitychange.hlAudioUnlock", function () {
        if (document.visibilityState === "visible") unlockAudio();
    });

    $(document)
        .off("pointerdown.hlMenuClickSe mousedown.hlMenuClickSe touchstart.hlMenuClickSe")
        .on("pointerdown.hlMenuClickSe mousedown.hlMenuClickSe touchstart.hlMenuClickSe", ".button_menu, .suspense_menu_button, .suspense_close, .menu_item, .menu_close, .quiet_system_button, .button_arrow_up, .button_arrow_down, .save_display_area, .glink_button.title-choice", function (event) {
            if (event.type === "mousedown" && event.which && event.which !== 1) return;
            var now = Date.now();
            var last = $(this).data("hlClickSeAt") || 0;
            if (now - last < 80) return;
            $(this).data("hlClickSeAt", now);
            playClickSe();
        });

    $(document).on("click.hlSuppressAwakeClick pointerup.hlSuppressAwakeClick", ".layer_event_click", function (event) {
        if (window.__hlSuppressNextScenarioClick && Date.now() < window.__hlSuppressNextScenarioClick) {
            event.stopImmediatePropagation();
            event.preventDefault();
            window.__hlSuppressNextScenarioClick = 0;
            return false;
        }
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

    $(document).on("click.hlBackTitleStop", ".menu_back_title", function (event) {
        event.stopImmediatePropagation();
        event.preventDefault();
        playClickSe();
        var kag = getKag();
        if (kag) kag.backTitle();
        return false;
    });

    if (!installBackTitlePatch()) {
        $(window).on("load.hlBackTitlePatch", installBackTitlePatch);
        var patchTimer = setInterval(function () {
            if (installBackTitlePatch()) clearInterval(patchTimer);
        }, 100);
        setTimeout(function () { clearInterval(patchTimer); }, 10000);
    }
}());

(function () {
    "use strict";

    function getKag() {
        return window.TYRANO && window.TYRANO.kag;
    }

    function unlockAudio() {
        var kag = getKag();
        if (kag && !kag.tmp.ready_audio) kag.readyAudio();
        if (window.Howler && Howler.ctx && Howler.ctx.state === "suspended") {
            Howler.ctx.resume();
        }
    }

    function playClickSe() {
        unlockAudio();
        var kag = getKag();
        if (!kag || kag.stat.play_se === false) return;
        kag.playSound("se/click.ogg");
    }

    $(document).on("pointerdown.hlAudioUnlock click.hlAudioUnlock keydown.hlAudioUnlock touchstart.hlAudioUnlock", unlockAudio);

    $(document).on("click.hlMenuClickSe", ".suspense_menu_button, .suspense_close, .quiet_system_button", function () {
        playClickSe();
    });

    $(document).on("click.hlSuppressAwakeClick", ".layer_event_click", function (event) {
        if (window.__hlSuppressNextScenarioClick && Date.now() < window.__hlSuppressNextScenarioClick) {
            event.stopImmediatePropagation();
            event.preventDefault();
            window.__hlSuppressNextScenarioClick = 0;
            return false;
        }
    });

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
            }, function () {
                var currentKag = getKag();
                if (!currentKag) return false;
                currentKag.cancelStrongStop();
                currentKag.cancelWeakStop();
                currentKag.stat.is_stop = false;
                currentKag.stat.is_wait = false;
                currentKag.layer.getMenuLayer().show();
                if (currentKag.stat.visible_menu_button == 1) $(".button_menu").show();
                currentKag.restoreFocusable && currentKag.restoreFocusable();
                window.__hlSuppressNextScenarioClick = Date.now() + 450;
                unlockAudio();
                return false;
            });
        };
        return true;
    }

    if (!installBackTitlePatch()) {
        $(window).on("load.hlBackTitlePatch", installBackTitlePatch);
        var patchTimer = setInterval(function () {
            if (installBackTitlePatch()) clearInterval(patchTimer);
        }, 100);
        setTimeout(function () { clearInterval(patchTimer); }, 10000);
    }
}());

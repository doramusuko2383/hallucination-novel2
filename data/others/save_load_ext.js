(function () {
    "use strict";

    var MANUAL_SLOT_COUNT = 100;
    var AUTO_SLOT_COUNT = 10;

    function safeText(value) {
        if (value === undefined || value === null) return "";
        return String(value).replace(/<[^>]*>/g, "").replace(/\s+/g, " ").trim();
    }

    function toJapaneseNumber(num) {
        var ones = ["", "一", "二", "三", "四", "五", "六", "七", "八", "九"];
        num = parseInt(num, 10);
        if (!num) return "";
        if (num < 10) return ones[num];
        if (num === 10) return "十";
        if (num < 20) return "十" + ones[num - 10];
        if (num < 100) return ones[Math.floor(num / 10)] + "十" + ones[num % 10];
        return String(num);
    }

    function chapterInfoFromText(value) {
        var text = safeText(value);
        var match = text.match(/^第([0-9０-９一二三四五六七八九十百千]+)章\s*/);
        if (!match) return null;
        var rawNumber = match[1].replace(/[０-９]/g, function (ch) {
            return String.fromCharCode(ch.charCodeAt(0) - 0xFEE0);
        });
        var chapter = /^\d+$/.test(rawNumber) ? "第" + toJapaneseNumber(rawNumber) + "章" : "第" + rawNumber + "章";
        return {
            chapter: chapter,
            rest: text.slice(match[0].length).replace(/^[\s　]+/, "")
        };
    }

    function buildSaveDisplay(data) {
        data = data || {};
        var sceneTitle = safeText(data.scene_title || (data.stat && data.stat.f && data.stat.f.save_scene_title));
        var rawTitle = safeText(data.title);
        var titleChapter = chapterInfoFromText(rawTitle);
        var sceneChapter = chapterInfoFromText(sceneTitle);
        var chapter = titleChapter ? titleChapter.chapter : (sceneChapter ? sceneChapter.chapter : sceneTitle);
        var text = titleChapter ? titleChapter.rest : rawTitle;

        data.display_scene_title = chapter;
        data.display_text = text || rawTitle || chapter;
        return data;
    }

    function emptySlot(num) {
        return buildSaveDisplay({
            title: $.lang("not_saved"),
            current_order_index: 0,
            save_date: "",
            img_data: "",
            stat: {},
            num: num
        });
    }

    function normalizeSaveData(menu) {
        var save_obj = menu.__hl_original_getSaveData.call(menu);
        if (!save_obj.data) save_obj.data = [];
        for (var i = 0; i < MANUAL_SLOT_COUNT; i++) {
            save_obj.data[i] = buildSaveDisplay(save_obj.data[i] || emptySlot(i));
            save_obj.data[i].num = i;
        }
        if (save_obj.data.length > MANUAL_SLOT_COUNT) save_obj.data = save_obj.data.slice(0, MANUAL_SLOT_COUNT);
        return save_obj;
    }

    function autoStorageKey(menu) {
        return menu.kag.config.projectID + "_tyrano_auto_save_list";
    }

    function getAutoSaveData(menu) {
        var raw = $.getStorage(autoStorageKey(menu), menu.kag.config.configSave);
        var list = raw ? JSON.parse(raw) : [];
        if (!Array.isArray(list)) list = [];
        list = list.filter(function (item) { return item && item.save_date; }).slice(0, AUTO_SLOT_COUNT);
        list.forEach(function (item, index) {
            buildSaveDisplay(item);
            item.num = "auto:" + index;
            item.is_auto = true;
        });
        return list;
    }

    function setAutoSaveData(menu, list) {
        $.setStorage(autoStorageKey(menu), list.slice(0, AUTO_SLOT_COUNT), menu.kag.config.configSave);
        menu.kag.trigger("storage-autosave");
    }

    function decorateSnap(menu, data) {
        var f = (data.stat && data.stat.f) || menu.kag.stat.f || {};
        data.scene_title = safeText(f.save_scene_title);
        return buildSaveDisplay(data);
    }

    function latest(list) {
        return list.filter(function (item) { return item && item.save_date; }).sort(function (a, b) {
            return (b.save_date || "").localeCompare(a.save_date || "");
        })[0];
    }


    function playClickSound() {
        try {
            if (window.Howl) {
                window.__hl_menu_click_howl = window.__hl_menu_click_howl || new Howl({
                    src: [$.parseStorage("se/click.ogg", "sound")],
                    volume: 1,
                    preload: true
                });
                window.__hl_menu_click_howl.stop();
                window.__hl_menu_click_howl.play();
                return;
            }
            if (!window.TYRANO || !TYRANO.kag) return;
            if (TYRANO.kag.readyAudio) TYRANO.kag.readyAudio();
            if (TYRANO.kag.playSound) TYRANO.kag.playSound("se/click.ogg");
        } catch (e) {
            if (window.console) console.warn("Failed to play menu click sound", e);
        }
    }

    function installClickSoundEvents() {
        window.__hlPlayClickSe = playClickSound;
        $(document)
            .off("mousedown.hlMenuClickSe touchstart.hlMenuClickSe", ".button_menu, .layer_menu .suspense_menu_button, .layer_menu .suspense_close, .layer_menu .button_arrow_up, .layer_menu .button_arrow_down, .layer_menu .save_display_area, .glink_button.title-choice:not(.title-start), .quiet_system_button")
            .on("mousedown.hlMenuClickSe touchstart.hlMenuClickSe", ".button_menu, .layer_menu .suspense_menu_button, .layer_menu .suspense_close, .layer_menu .button_arrow_up, .layer_menu .button_arrow_down, .layer_menu .save_display_area, .glink_button.title-choice:not(.title-start), .quiet_system_button", function (e) {
                if (e.type === "mousedown" && e.which && e.which !== 1) return;
                var now = Date.now();
                var last = $(this).data("hlClickSeAt") || 0;
                if (now - last < 80) return;
                $(this).data("hlClickSeAt", now);
                playClickSound();
            });
    }


    function stopHowlMap(map) {
        if (!map) return;
        Object.keys(map).forEach(function (key) {
            var howl = map[key];
            if (!howl) return;
            try { howl.stop(); } catch (e) {}
            try { howl.unload(); } catch (e) {}
            delete map[key];
        });
    }

    function stopGlobalHowlsExceptSystemSe() {
        if (!window.Howler || !Array.isArray(Howler._howls)) return;
        Howler._howls.slice().forEach(function (howl) {
            if (!howl || howl === window.__hl_menu_click_howl || howl === window.__titleLogoGlitchSe) return;
            try { howl.stop(); } catch (e) {}
        });
    }

    function stopTransientAudio() {
        if (!window.TYRANO || !TYRANO.kag) return;
        var kag = TYRANO.kag;
        stopHowlMap(kag.tmp && kag.tmp.map_bgm);
        stopHowlMap(kag.tmp && kag.tmp.map_se);
        stopGlobalHowlsExceptSystemSe();
        if (kag.tmp) {
            kag.tmp.is_bgm_play = false;
            kag.tmp.is_bgm_play_wait = false;
            kag.tmp.is_se_play = false;
            kag.tmp.is_se_play_wait = false;
            kag.tmp.is_vo_play = false;
            kag.tmp.is_vo_play_wait = false;
        }
        if (kag.stat) {
            kag.stat.current_bgm = "";
            kag.stat.current_bgm_vol = "";
            kag.stat.current_bgm_pause_seek = "";
            kag.stat.current_se = {};
            kag.stat.play_speak = false;
        }
        if (window.speechSynthesis && window.speechSynthesis.cancel) {
            window.speechSynthesis.cancel();
        }
        if (kag.popopo) {
            clearInterval(kag.popopo_timer);
            if (kag.popopo.oscillatorNode) {
                try {
                    var node = kag.popopo.oscillatorNode;
                    (node.source || node).stop(0);
                    if (node.source && node.source.disconnect) node.source.disconnect();
                    if (node.gain && node.gain.disconnect) node.gain.disconnect();
                } catch (e) {}
                kag.popopo.oscillatorNode = null;
            }
        }
    }

    function clearTransientVisuals() {
        $("#chapter-title-overlay, #proyama-splash").remove();
        $(".tyrano-anim, .chara-mod-animation").stop(true, true);
        $(".layer_menu").hide().empty();
        $(".layer_event_click").hide();
    }

    function resetRuntimeBeforeSceneSwitch() {
        stopTransientAudio();
        clearTransientVisuals();
    }







    function installConfigOverlay() {
        window.__hlOpenConfigOverlay = function (options) {
            options = options || {};
            var kag = TYRANO.kag;
            var config = kag.config;
            var root = $("#tyrano_base");
            var currentBgm = parseInt(config.defaultBgmVolume || 100, 10);
            var currentSe = parseInt(config.defaultSeVolume || 100, 10);
            var currentText = parseInt(config.chSpeed || 30, 10);
            var currentAuto = parseInt(config.autoSpeed || 3000, 10);
            var unreadSkip = config.unReadTextSkip === "true";
            var DEFAULT_CONFIG = { bgm: 60, se: 60, text: 42, auto: 5000, skip: true };

            $("#hl-config-overlay").remove();
            function playClick() {
                if (window.__hlPlayClickSe) window.__hlPlayClickSe();
            }

            function setBgm(volume) {
                currentBgm = volume;
                config.defaultBgmVolume = String(volume);
                kag.ftag.startTag("bgmopt", { volume: String(volume), next: "false" });
                saveSystemConfig();
                renderValues();
            }

            function setSe(volume) {
                currentSe = volume;
                config.defaultSeVolume = String(volume);
                kag.ftag.startTag("seopt", { volume: String(volume), next: "false" });
                saveSystemConfig();
                renderValues();
            }

            function saveSystemConfig() {
                if (kag.saveSystemVariable) kag.saveSystemVariable();
            }

            function setText(speed) {
                currentText = speed;
                config.chSpeed = String(speed);
                kag.stat.ch_speed = "";
                kag.variable.sf._config_ch_speed = speed;
                saveSystemConfig();
                renderValues();
            }

            function setAuto(speed) {
                currentAuto = speed;
                config.autoSpeed = String(speed);
                kag.variable.sf._system_config_auto_speed = speed;
                saveSystemConfig();
                renderValues();
            }

            function setUnreadSkip(enabled) {
                unreadSkip = enabled;
                config.unReadTextSkip = enabled ? "true" : "false";
                kag.variable.sf._system_config_unread_text_skip = enabled ? "true" : "false";
                saveSystemConfig();
                renderValues();
            }

            var overlay = $('<div id="hl-config-overlay" class="hl-config-overlay"></div>');
            overlay.html(
                '<div class="hl-config-backdrop"></div>' +
                '<section class="hl-config-panel" aria-label="CONFIG">' +
                    '<button type="button" class="hl-config-close">× CLOSE</button>' +
                    '<h1>CONFIG</h1>' +
                    '<div class="hl-config-row" data-kind="bgm"><span>BGM VOLUME</span><div class="hl-config-options"></div><b class="hl-config-value"></b></div>' +
                    '<div class="hl-config-row" data-kind="se"><span>SE VOLUME</span><div class="hl-config-options"></div><b class="hl-config-value"></b></div>' +
                    '<div class="hl-config-row" data-kind="text"><span>TEXT SPEED</span><div class="hl-config-options"></div><b class="hl-config-value"></b></div>' +
                    '<div class="hl-config-row" data-kind="auto"><span>AUTO SPEED</span><div class="hl-config-options"></div><b class="hl-config-value"></b></div>' +
                    '<div class="hl-config-row" data-kind="skip"><span>UNREAD SKIP</span><div class="hl-config-options"></div><b class="hl-config-value"></b></div>' +
                    '<div class="hl-config-actions"><button type="button" class="hl-config-default">DEFAULT</button></div>' +
                '</section>'
            );

            if (!$("#hl-config-overlay-style").length) {
                $("head").append(
                    '<style id="hl-config-overlay-style">' +
                    '#hl-config-overlay{position:absolute;inset:0;z-index:100000010;pointer-events:auto;font-family:GenMin,serif;color:rgba(238,244,248,.94)}' +
                    '#hl-config-overlay .hl-config-backdrop{position:absolute;inset:0;background:rgba(0,0,0,.78)}' +
                    '#hl-config-overlay .hl-config-panel{position:absolute;left:250px;top:96px;width:940px;min-height:520px;box-sizing:border-box;padding:36px 54px;border:1px solid rgba(220,235,245,.24);border-radius:8px;background:linear-gradient(180deg,rgba(5,8,13,.96),rgba(0,0,0,.92));box-shadow:0 24px 70px rgba(0,0,0,.55),0 0 30px rgba(120,160,190,.08)}' +
                    '#hl-config-overlay h1{margin:0 0 28px;font-size:24px;letter-spacing:.18em;font-weight:600}' +
                    '#hl-config-overlay .hl-config-close{position:absolute;right:30px;top:24px;width:112px;height:34px;border:1px solid rgba(220,235,245,.25);border-radius:4px;background:rgba(5,10,16,.35);color:#dde6ec;font-size:12px;letter-spacing:.14em;cursor:pointer}' +
                    '#hl-config-overlay .hl-config-row{display:grid;grid-template-columns:160px 500px 96px;align-items:center;gap:34px;margin:22px 0;letter-spacing:.12em}' +
                    '#hl-config-overlay .hl-config-row span{font-size:15px}' +
                    '#hl-config-overlay .hl-config-options{display:flex;gap:8px;flex-wrap:wrap;align-items:center}' +
                    '#hl-config-overlay .hl-config-option{min-width:52px;height:34px;display:inline-flex;align-items:center;justify-content:center;border:1px solid rgba(220,235,245,.25);border-radius:4px;background:rgba(5,10,16,.35);color:#dde6ec;cursor:pointer;font-size:11px;line-height:1;text-align:center;letter-spacing:.08em}' +
                    '#hl-config-overlay .hl-config-option.is-active{border-color:rgba(235,245,255,.75);background:rgba(210,230,240,.20);box-shadow:0 0 12px rgba(210,235,255,.25)}' +
                    '#hl-config-overlay .hl-config-value{font-size:13px;text-align:left;font-weight:500;letter-spacing:.1em}' +
                    '#hl-config-overlay .hl-config-actions{display:flex;justify-content:flex-end;margin:30px 92px 0 0}' +
                    '#hl-config-overlay .hl-config-default{width:150px;height:36px;display:inline-flex;align-items:center;justify-content:center;border:1px solid rgba(220,235,245,.25);border-radius:4px;background:rgba(5,10,16,.35);color:#dde6ec;cursor:pointer;font-size:12px;letter-spacing:.16em}' +
                    '#hl-config-overlay .hl-config-default:hover,#hl-config-overlay .hl-config-close:hover{border-color:rgba(235,245,255,.75);background:rgba(210,230,240,.20);box-shadow:0 0 12px rgba(210,235,255,.25)}' +
                    '</style>'
                );
            }

            function addOptions(kind, values, setter, formatter) {
                var row = overlay.find('[data-kind="' + kind + '"]');
                var options = row.find(".hl-config-options");
                options.empty();
                values.forEach(function (value) {
                    var button = $('<button type="button" class="hl-config-option"></button>');
                    button.text(formatter ? formatter(value) : String(value));
                    button.attr("data-value", value);
                    button.on("click", function (event) {
                        event.stopPropagation();
                        playClick();
                        setter(value);
                    });
                    options.append(button);
                });
            }

            function renderValues() {
                overlay.find('[data-kind="bgm"] .hl-config-value').text(currentBgm + "%");
                overlay.find('[data-kind="se"] .hl-config-value').text(currentSe + "%");
                overlay.find('[data-kind="text"] .hl-config-value').text(currentText);
                overlay.find('[data-kind="auto"] .hl-config-value').text(currentAuto);
                overlay.find('[data-kind="skip"] .hl-config-value').text(unreadSkip ? "ON" : "OFF");
                overlay.find('[data-kind="bgm"] .hl-config-option').toggleClass("is-active", false).filter('[data-value="' + currentBgm + '"]').addClass("is-active");
                overlay.find('[data-kind="se"] .hl-config-option').toggleClass("is-active", false).filter('[data-value="' + currentSe + '"]').addClass("is-active");
                overlay.find('[data-kind="text"] .hl-config-option').toggleClass("is-active", false).filter('[data-value="' + currentText + '"]').addClass("is-active");
                overlay.find('[data-kind="auto"] .hl-config-option').toggleClass("is-active", false).filter('[data-value="' + currentAuto + '"]').addClass("is-active");
                overlay.find('[data-kind="skip"] .hl-config-option').toggleClass("is-active", false).filter('[data-value="' + (unreadSkip ? 1 : 0) + '"]').addClass("is-active");
            }

            function resetDefault() {
                setBgm(DEFAULT_CONFIG.bgm);
                setSe(DEFAULT_CONFIG.se);
                setText(DEFAULT_CONFIG.text);
                setAuto(DEFAULT_CONFIG.auto);
                setUnreadSkip(DEFAULT_CONFIG.skip);
                renderValues();
            }

            addOptions("bgm", [0, 20, 40, 60, 80, 100], setBgm, function (value) { return value === 0 ? "MUTE" : String(value); });
            addOptions("se", [0, 20, 40, 60, 80, 100], setSe, function (value) { return value === 0 ? "MUTE" : String(value); });
            addOptions("text", [100, 70, 50, 42, 30, 20, 10], setText);
            addOptions("auto", [5000, 4000, 3000, 2000, 1000, 500], setAuto);
            addOptions("skip", [0, 1], function (value) { setUnreadSkip(value === 1); }, function (value) { return value === 1 ? "ON" : "OFF"; });
            overlay.find(".hl-config-default").on("click", function (event) {
                event.stopPropagation();
                playClick();
                resetDefault();
            });

            overlay.on("click mousedown touchstart pointerdown pointerup", function (event) {
                event.stopImmediatePropagation();
                event.stopPropagation();
            });
            overlay.find(".hl-config-close").on("click", function (event) {
                event.stopPropagation();
                playClick();
                overlay.remove();
                var onClose = typeof options.onClose === "function" ? options.onClose : window.__hlConfigOverlayOnClose;
                window.__hlConfigOverlayOnClose = null;
                if (typeof onClose === "function") {
                    onClose();
                    return;
                }
                if (kag.stat.visible_menu_button == 1) $(".button_menu").show();
            });

            root.append(overlay);
            renderValues();
        };
    }



    var DEFAULT_CHOICE_CONFIG = {
        // The presentation is owned by .hl-story-choice-group. Keep these
        // legacy parameters so existing scenario tags continue to parse, but
        // do not use per-choice coordinates to lay out the story choices.
        x: 0,
        y: 0,
        width: 680,
        height: 0,
        size: 28,
        gap: 22,
        clickse: "se/click.ogg",
        introDelay: 520,
        staggerDelay: 100,
        fadeTime: 220,
        branchDelay: 200,
        layouts: {
            "2": {},
            "3": {}
        }
    };

    function toChoiceInt(value, fallback) {
        var parsed = parseInt(value, 10);
        return isNaN(parsed) ? fallback : parsed;
    }

    var choiceBackdropTimer = null;
    var choiceBackdropRemovalTimer = null;

    function showChoiceBackdrop() {
        var base = $("#tyrano_base");
        window.clearTimeout(choiceBackdropTimer);
        window.clearTimeout(choiceBackdropRemovalTimer);
        $("#hl-choice-backdrop").remove();
        var backdrop = $("<div></div>").attr("id", "hl-choice-backdrop");
        // Keep the dimming overlay in Tyrano's game root. The system root holds
        // the message window, question text, choices, and operation controls,
        // which must remain above (and outside) the scene-only effect.
        var sceneRoot = base.find("#root_layer_game");
        (sceneRoot.length ? sceneRoot : base).append(backdrop);
        choiceBackdropTimer = window.setTimeout(function () {
            $("body").addClass("hl-choice-active");
            backdrop.addClass("is-visible");
        }, DEFAULT_CHOICE_CONFIG.introDelay);
    }

    function hideChoiceBackdrop() {
        window.clearTimeout(choiceBackdropTimer);
        window.clearTimeout(choiceBackdropRemovalTimer);
        $("body").removeClass("hl-choice-active");
        $("#hl-choice-backdrop").removeClass("is-visible");
        choiceBackdropRemovalTimer = window.setTimeout(function () {
            $("#hl-choice-backdrop").remove();
        }, DEFAULT_CHOICE_CONFIG.fadeTime);
    }

    function quietChoicePlayback(kag) {
        if (kag.stat.is_auto) kag.setAuto(false);
        if (kag.stat.is_skip) kag.setSkip(false);
        kag.ftag.hideNextImg();
    }

    function installChoiceTags() {
        var kag = TYRANO.kag;
        if (kag.__hl_choice_tags_installed) return;
        kag.__hl_choice_tags_installed = true;

        kag.tag.choice_start = {
            vital: [],
            pm: {
                count: "",
                x: "",
                y: "",
                width: "",
                height: "",
                size: "",
                gap: "",
                clickse: ""
            },
            start: function (pm) {
                var count = toChoiceInt(pm.count, 0);
                var layout = DEFAULT_CHOICE_CONFIG.layouts[String(count)] || {};
                quietChoicePlayback(kag);
                showChoiceBackdrop();
                var choiceGroup = $("<div></div>")
                    .addClass("hl-story-choice-group")
                    .attr("data-choice-count", count);
                kag.layer.getFreeLayer().append(choiceGroup).show();
                kag.tmp.hl_choice = {
                    index: 0,
                    count: count,
                    group: choiceGroup,
                    x: toChoiceInt(pm.x, layout.x || DEFAULT_CHOICE_CONFIG.x),
                    y: toChoiceInt(pm.y, layout.y || DEFAULT_CHOICE_CONFIG.y),
                    width: toChoiceInt(pm.width, layout.width || DEFAULT_CHOICE_CONFIG.width),
                    height: toChoiceInt(pm.height, layout.height || DEFAULT_CHOICE_CONFIG.height),
                    size: toChoiceInt(pm.size, DEFAULT_CHOICE_CONFIG.size),
                    gap: toChoiceInt(pm.gap, DEFAULT_CHOICE_CONFIG.gap),
                    clickse: pm.clickse || DEFAULT_CHOICE_CONFIG.clickse,
                    introDelay: DEFAULT_CHOICE_CONFIG.introDelay,
                    staggerDelay: DEFAULT_CHOICE_CONFIG.staggerDelay,
                    fadeTime: DEFAULT_CHOICE_CONFIG.fadeTime
                };
                kag.ftag.nextOrder();
            }
        };

        kag.tag.choice = {
            vital: ["text", "target"],
            pm: {
                name: "",
                text: "",
                target: "",
                storage: null,
                x: "",
                y: "",
                width: "",
                height: "",
                size: "",
                clickse: "",
                color: "black"
            },
            start: function (pm) {
                var state = kag.tmp.hl_choice || {
                    index: 0,
                    x: DEFAULT_CHOICE_CONFIG.x,
                    y: DEFAULT_CHOICE_CONFIG.y,
                    width: DEFAULT_CHOICE_CONFIG.width,
                    height: DEFAULT_CHOICE_CONFIG.height,
                    size: DEFAULT_CHOICE_CONFIG.size,
                    gap: DEFAULT_CHOICE_CONFIG.gap,
                    clickse: DEFAULT_CHOICE_CONFIG.clickse,
                    introDelay: DEFAULT_CHOICE_CONFIG.introDelay,
                    staggerDelay: DEFAULT_CHOICE_CONFIG.staggerDelay,
                    fadeTime: DEFAULT_CHOICE_CONFIG.fadeTime
                };
                var glinkPm = $.extend(true, {}, pm, {
                    name: [pm.name, "hl-story-choice"].filter(Boolean).join(","),
                    x: toChoiceInt(pm.x, state.x),
                    y: toChoiceInt(pm.y, state.y + state.index * state.gap),
                    width: toChoiceInt(pm.width, state.width),
                    height: toChoiceInt(pm.height, state.height),
                    size: toChoiceInt(pm.size, state.size),
                    clickse: pm.clickse || state.clickse,
                    show_time: String(state.fadeTime || DEFAULT_CHOICE_CONFIG.fadeTime),
                    show_effect: "hlChoiceFadeInStagger",
                    show_delay: String((state.introDelay || DEFAULT_CHOICE_CONFIG.introDelay) + state.index * (state.staggerDelay || DEFAULT_CHOICE_CONFIG.staggerDelay)),
                    show_easing: "ease-out",
                    select_time: String((state.fadeTime || DEFAULT_CHOICE_CONFIG.fadeTime) + DEFAULT_CHOICE_CONFIG.branchDelay),
                    select_effect: "hlChoiceFadeOutHold",
                    select_easing: "ease-in",
                    reject_time: String((state.fadeTime || DEFAULT_CHOICE_CONFIG.fadeTime) + DEFAULT_CHOICE_CONFIG.branchDelay),
                    reject_effect: "hlChoiceFadeOutHold",
                    reject_easing: "ease-in"
                });
                state.index += 1;
                kag.tmp.hl_choice = state;
                kag.ftag.startTag("glink", glinkPm);
                // glink creates its own absolutely-positioned node. Move that
                // node into the shared flex group so every route (including
                // long labels and 2--4 choices) uses one vertical layout.
                var choiceButton = $(".glink_button.hl-story-choice").last();
                if (state.group && choiceButton.length) state.group.append(choiceButton);
            }
        };

        if (kag.ftag && kag.ftag.master_tag) {
            ["choice_start", "choice"].forEach(function (tagName) {
                kag.ftag.master_tag[tagName] = $.extend(true, {}, kag.tag[tagName]);
                kag.ftag.master_tag[tagName].kag = kag;
            });
        }

        document.removeEventListener("click", handleStoryChoiceSelection, true);
        document.addEventListener("click", handleStoryChoiceSelection, true);
    }

    function handleStoryChoiceSelection(event) {
        var choiceButton = $(event.target).closest(".glink_button.hl-story-choice");
        if (!choiceButton.length) return;

        // Tyrano's glink handler stops click propagation. Listen during capture so
        // the backdrop is always cleaned up, even when the branch starts immediately.
        hideChoiceBackdrop();
    }

    function installEndingTag() {
        TYRANO.kag.tag.hl_ending = {
            vital: [],
            pm: {},
            start: function () {
                var kag = TYRANO.kag;
                var images = [
                    { storage: "ch01_sc01_rooftop_wait.webp", hold: 8500, sepia: true },
                    { storage: "ch2_ayaka_and_megumi.webp", hold: 8500, sepia: true },
                    { storage: "ch3_karaoke_talk.webp", hold: 9500, sepia: true },
                    { storage: "ch4_takumi_megumi.webp", hold: 9500, sepia: true },
                    { storage: "ch5_rooftop_tatsuya_cry.webp", hold: 10500, sepia: true },
                    { storage: "ch6_5members.webp", hold: 10500, sepia: true },
                    { storage: "ch6_ayaka_episode.webp", hold: 9500, sepia: true },
                    { storage: "ch6_ayaka_memory.webp", hold: 9500, sepia: true },
                    { storage: "ch7_shakehands.webp", hold: 11500, sepia: true },
                    { storage: "ch7_ending.webp", hold: 14500, sepia: true, final: true }
                ];
                var credits = [
                    ["Scenario", "プロ山"],
                    ["Direction", "プロ山"],
                    ["Programming", "プロ山"],
                    ["Illustration", "ChatGPT"],
                    ["Music", "BGMer：http://bgmer.net"]
                ];
                var ending = $("<div></div>").attr("id", "hl-ending");
                var photo = $("<img>").addClass("hl-ending-photo").attr("alt", "");
                var shade = $("<div></div>").addClass("hl-ending-shade");
                var introText = $("<div></div>").addClass("hl-ending-intro").text("思い出アルバム");
                var credit = $("<div></div>").addClass("hl-ending-credit");
                var endText = $("<div></div>").addClass("hl-ending-end").text("END");
                var timers = [];

                function later(ms, fn) {
                    timers.push(setTimeout(fn, ms));
                }
                function setCredit(index) {
                    if (index >= credits.length) {
                        credit.removeClass("is-visible");
                        return;
                    }
                    credit.html('<div class="hl-ending-credit-role"></div><div class="hl-ending-credit-name"></div>');
                    credit.find(".hl-ending-credit-role").text(credits[index][0]);
                    credit.find(".hl-ending-credit-name").text(credits[index][1]);
                    credit.addClass("is-visible");
                }
                function setShadeBlackInstant() {
                    shade.addClass("hl-ending-no-transition is-black");
                    shade[0].offsetHeight;
                    shade.removeClass("hl-ending-no-transition");
                }
                function revealImageInstant() {
                    shade.addClass("hl-ending-no-transition");
                    shade.removeClass("is-black");
                    shade[0].offsetHeight;
                    shade.removeClass("hl-ending-no-transition");
                }
                function fadeToBlack() {
                    shade.removeClass("hl-ending-no-transition");
                    shade.addClass("is-black");
                }
                function cleanupAndNext() {
                    var baseLayer = kag.layer.getLayer("base", "fore");

                    timers.forEach(clearTimeout);
                    kag.setSkip(false);
                    kag.stat.is_skip = false;
                    baseLayer.empty();
                    baseLayer.css({
                        "background-image": "none",
                        "background-color": "#000000"
                    });
                    ending.remove();
                    kag.ftag.nextOrder();
                }
                function showImage(index) {
                    var item = images[index];
                    var revealed = false;

                    function revealPreparedImage() {
                        if (revealed) return;
                        revealed = true;
                        photo.off("load.hlEnding error.hlEnding");
                        photo.removeClass("is-hidden");
                        revealImageInstant();
                        if (item.sepia) {
                            later(120, function () { photo.addClass("hl-ending-sepia-to-color"); });
                        }
                        if (item.final) {
                            credit.removeClass("is-visible");
                            later(5000, function () { endText.addClass("is-visible"); });
                        }
                    }

                    setShadeBlackInstant();
                    photo.addClass("is-hidden");
                    photo.removeClass("hl-ending-sepia hl-ending-sepia-to-color");
                    photo.one("load.hlEnding error.hlEnding", function () { later(80, revealPreparedImage); });
                    photo.attr("src", "./data/bgimage/" + item.storage);
                    if (item.sepia) {
                        photo.addClass("hl-ending-sepia");
                    }
                    if (photo.get(0).complete) {
                        later(80, revealPreparedImage);
                    }
                    later(item.hold, function () {
                        if (index < images.length - 1) {
                            fadeToBlack();
                            later(1050, function () { photo.addClass("is-hidden"); });
                            later(1200, function () { showImage(index + 1); });
                            return;
                        }
                        later(1000, function () {
                            fadeToBlack();
                            later(2000, function () {
                                endText.removeClass("is-visible");
                                later(2000, cleanupAndNext);
                            });
                        });
                    });
                }

                kag.setSkip(false);
                kag.stat.is_skip = false;
                $(document).trigger("mouseup");
                $(".button_menu").hide();
                kag.layer.hideMessageLayers();
                kag.layer.getLayer("base", "fore").css("background-color", "#000");
                ending.on("click mousedown mouseup touchstart touchend pointerdown pointerup wheel contextmenu", function (event) {
                    event.preventDefault();
                    event.stopImmediatePropagation();
                    event.stopPropagation();
                    return false;
                });
                ending.append(photo, shade, introText, credit, endText);
                $("#tyrano_base").append(ending);
                setShadeBlackInstant();
                introText.addClass("is-visible");
                credits.forEach(function (_, i) { later(i * 19000 + 7000, function () { setCredit(i); }); });
                later(5000, function () {
                    introText.removeClass("is-visible");
                    showImage(0);
                });
            }
        };
        if (TYRANO.kag.ftag && TYRANO.kag.ftag.master_tag) {
            TYRANO.kag.ftag.master_tag.hl_ending = $.extend(true, {}, TYRANO.kag.tag.hl_ending);
            TYRANO.kag.ftag.master_tag.hl_ending.kag = TYRANO.kag;
        }
    }


    function install() {
        if (!window.TYRANO || !TYRANO.kag || !TYRANO.kag.menu) {
            setTimeout(install, 50);
            return;
        }

        installClickSoundEvents();
        var menu = TYRANO.kag.menu;
        if (menu.__hl_save_load_ext_installed) return;
        menu.__hl_save_load_ext_installed = true;
        menu.__hl_original_getSaveData = menu.getSaveData;
        menu.__hl_original_displaySave = menu.displaySave;
        menu.__hl_original_displayLoad = menu.displayLoad;
        menu.__hl_original_doSave = menu.doSave;
        menu.__hl_original_snapSave = menu.snapSave;
        menu.__hl_original_loadGame = menu.loadGame;
        menu.__hl_original_loadGameData = menu.loadGameData;

        menu.getSaveData = function () {
            return normalizeSaveData(this);
        };

        menu.snapSave = function (title, call_back, flag_thumb) {
            var that = this;
            return that.__hl_original_snapSave.call(that, title, function () {
                decorateSnap(that, that.snap);
                if (call_back) call_back();
            }, flag_thumb);
        };

        menu.doSave = function (num, cb) {
            var that = this;
            return that.__hl_original_doSave.call(that, num, function (data) {
                decorateSnap(that, data);
                var save_obj = normalizeSaveData(that);
                save_obj.data[num] = data;
                $.setStorage(that.kag.config.projectID + "_tyrano_data", save_obj, that.kag.config.configSave);
                if (cb) cb(data);
            });
        };

        menu.doSetAutoSave = function () {
            var data = decorateSnap(this, this.snap);
            data.save_date = this.getDateStr();
            data.is_auto = true;
            var list = getAutoSaveData(this);
            list.unshift($.extend(true, {}, data));
            setAutoSaveData(this, list);
            $.setStorage(this.kag.config.projectID + "_tyrano_auto_save", data, this.kag.config.configSave);
            this.kag.layer.getMenuLayer().hide();
        };

        menu.loadAutoSave = function () {
            var data = getAutoSaveData(this)[0];
            if (!data) return false;
            this.loadGameData($.extend(true, {}, data), { auto_next: "yes" });
        };

        menu.loadGameData = function (data, options) {
            resetRuntimeBeforeSceneSwitch();
            return this.__hl_original_loadGameData.call(this, data, options);
        };


        menu.loadGame = function (num) {
            if (String(num).indexOf("auto:") === 0) {
                var data = getAutoSaveData(this)[parseInt(String(num).split(":")[1], 10)];
                if (data) this.loadGameData($.extend(true, {}, data), { auto_next: "yes" });
                return;
            }
            return this.__hl_original_loadGame.call(this, num);
        };

        menu.loadLatestSave = function () {
            var auto = latest(getAutoSaveData(this));
            if (auto) {
                this.loadGameData($.extend(true, {}, auto), { auto_next: "yes" });
                return true;
            }
            var manual = latest(this.getSaveData().data);
            if (manual) {
                this.loadGameData($.extend(true, {}, manual), { auto_next: "yes" });
                return true;
            }
            return false;
        };

        menu.displaySave = function (cb, cb_close) {
            var that = this;
            this.kag.unfocus();
            this.kag.setSkip(false);
            var array = that.getSaveData().data;
            this.kag.html("save", { array_save: array, novel: $.novel }, function (html_str) {
                var j_save = $(html_str);
                j_save.find(".save_list").css("font-family", that.kag.config.userFace);
                var layer_menu = that.kag.layer.getMenuLayer();
                function saveToSlot(num) {
                    that.snap = null;
                    that.doSave(num, function (save_data) {
                        buildSaveDisplay(save_data);
                        var j_slot = layer_menu.find("[data-num='" + num + "']");
                        if (save_data.img_data) {
                            if (j_slot.find(".save_list_item_thumb img").get(0)) {
                                j_slot.find(".save_list_item_thumb img").attr("src", save_data.img_data);
                            } else {
                                j_slot.find(".save_list_item_thumb").css("background-image", "").append("<img>").find("img").attr("src", save_data.img_data);
                            }
                        }
                        j_slot.find(".save_list_item_date").html(save_data.save_date || "");
                        var j_meta = j_slot.find(".save_list_item_meta");
                        if (!j_meta.length) {
                            j_slot.find(".save_list_item_date").wrap('<span class="save_list_item_meta"></span>');
                            j_meta = j_slot.find(".save_list_item_meta");
                        }
                        j_meta.find(".save_list_item_scene_title").remove();
                        if (save_data.display_scene_title) {
                            j_meta.append('<span class="save_list_item_scene_title"></span>');
                            j_meta.find(".save_list_item_scene_title").text(save_data.display_scene_title);
                        }
                        j_slot.find(".save_list_item_text").text(save_data.display_text || save_data.title || "");
                        if (cb) cb();
                    });
                }
                j_save.find(".save_display_area").each(function () {
                    $(this).click(function (e) {
                        var num = $(this).attr("data-num");
                        var target = array[num];
                        if (target && target.save_date) {
                            $.confirm(
                                '<span class="save_overwrite_confirm_title">このスロットに上書きしますか？</span><span class="save_overwrite_confirm_note">上書きすると、以前のセーブデータは復元できません。</span>',
                                function () { saveToSlot(num); }
                            );
                        } else {
                            saveToSlot(num);
                        }
                        e.stopPropagation();
                    }).focusable();
                });
                that.setMenuScrollEvents(j_save, { target: ".area_save_list", move: 160 });
                that.setMenu(j_save, cb_close || cb);
            });
        };

        menu.displayLoad = function (cb) {
            var that = this;
            this.kag.unfocus();
            this.kag.setSkip(false);
            var array = getAutoSaveData(that).concat(that.getSaveData().data);
            this.kag.html("load", { array_save: array, novel: $.novel }, function (html_str) {
                var j_save = $(html_str);
                j_save.find(".save_list").css("font-family", that.kag.config.userFace);
                j_save.find(".save_display_area").each(function () {
                    $(this).click(function () {
                        var num = $(this).attr("data-num");
                        var target = array.filter(function (item) { return String(item.num) === String(num); })[0];
                        if (target && target.save_date) {
                            that.snap = null;
                            that.loadGame(num);
                            var layer_menu = that.kag.layer.getMenuLayer();
                            layer_menu.hide();
                            layer_menu.empty();
                            if (that.kag.stat.visible_menu_button == 1) $(".button_menu").show();
                        }
                    }).focusable();
                });
                that.setMenuScrollEvents(j_save, { target: ".area_save_list", move: 160 });
                that.setMenu(j_save, cb);
            });
        };

        installConfigOverlay();
        installChoiceTags();
        installEndingTag();
        TYRANO.kag.config.configSaveSlotNum = MANUAL_SLOT_COUNT;

        TYRANO.kag.tag.scene_title = {
            vital: [],
            pm: { title: "", next: "true" },
            start: function (pm) {
                TYRANO.kag.stat.f.save_scene_title = safeText(pm.title);
                if (pm.next !== "false") TYRANO.kag.ftag.nextOrder();
            }
        };
        TYRANO.kag.tag.autosave_scene = {
            vital: [],
            pm: { title: "" },
            start: function (pm) {
                if (pm.title) TYRANO.kag.stat.f.save_scene_title = safeText(pm.title);
                TYRANO.kag.tag.autosave.start.call(this, pm);
            }
        };
        TYRANO.kag.tag.continue_latest = { pm: {}, start: function () { if (TYRANO.kag.menu.loadLatestSave() === false) TYRANO.kag.ftag.nextOrder(); } };
        if (TYRANO.kag.ftag && TYRANO.kag.ftag.master_tag) {
            ["scene_title", "autosave_scene", "continue_latest"].forEach(function (tag_name) {
                TYRANO.kag.ftag.master_tag[tag_name] = $.extend(true, {}, TYRANO.kag.tag[tag_name]);
                TYRANO.kag.ftag.master_tag[tag_name].kag = TYRANO.kag;
            });
        }
    }

    install();
})();

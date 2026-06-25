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

    function normalizeChapterTitle(text, sceneTitle) {
        text = safeText(text);
        var chapterMatch = text.match(/^第([0-9０-９一二三四五六七八九十百千]+)章\s*/);
        if (!chapterMatch && sceneTitle) {
            chapterMatch = safeText(sceneTitle).match(/^第([0-9０-９一二三四五六七八九十百千]+)章\s*/);
            if (chapterMatch && text.indexOf(safeText(sceneTitle)) !== 0) return text;
        }
        if (!chapterMatch) return text;
        var rawNumber = chapterMatch[1].replace(/[０-９]/g, function (ch) {
            return String.fromCharCode(ch.charCodeAt(0) - 0xFEE0);
        });
        var chapter = /^\d+$/.test(rawNumber) ? "第" + toJapaneseNumber(rawNumber) + "章" : "第" + rawNumber + "章";
        var rest = text.slice(chapterMatch[0].length).replace(/^\s+/, "");
        return rest ? chapter + "　" + rest : chapter;
    }

    function buildSaveDisplay(data) {
        data = data || {};
        var title = safeText(data.scene_title || (data.stat && data.stat.f && data.stat.f.save_scene_title));
        var text = normalizeChapterTitle(data.title, title);
        data.display_scene_title = title;
        data.display_text = text;
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





    function installTitleModalStyle() {
        if ($("#hl-title-modal-style").length) return;
        $("head").append(
            '<style id="hl-title-modal-style">' +
            'body.hl-title-modal-open .glink_button.title-logo,body.hl-title-modal-open .glink_button.title-subtitle,body.hl-title-modal-open .glink_button.title-choice{visibility:hidden!important;pointer-events:none!important}' +
            '</style>'
        );
    }

    function installConfigOverlay() {
        window.__hlOpenConfigOverlay = function () {
            var kag = TYRANO.kag;
            var config = kag.config;
            var root = $("#tyrano_base");
            var currentBgm = parseInt(config.defaultBgmVolume || 100, 10);
            var currentSe = parseInt(config.defaultSeVolume || 100, 10);
            var currentText = parseInt(config.chSpeed || 30, 10);
            var currentAuto = parseInt(config.autoSpeed || 3000, 10);
            var unreadSkip = config.unReadTextSkip === "true";

            $("#hl-config-overlay").remove();
            var hidesTitleMenu = $(".glink_button.title-logo, .glink_button.title-subtitle, .glink_button.title-choice").length > 0;
            if (hidesTitleMenu) $("body").addClass("hl-title-modal-open");

            function playClick() {
                if (window.__hlPlayClickSe) window.__hlPlayClickSe();
            }

            function setBgm(volume) {
                currentBgm = volume;
                config.defaultBgmVolume = String(volume);
                kag.ftag.startTag("bgmopt", { volume: String(volume), next: "false" });
                renderValues();
            }

            function setSe(volume) {
                currentSe = volume;
                config.defaultSeVolume = String(volume);
                kag.ftag.startTag("seopt", { volume: String(volume), next: "false" });
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
                '</section>'
            );

            if (!$("#hl-config-overlay-style").length) {
                $("head").append(
                    '<style id="hl-config-overlay-style">' +
                    '#hl-config-overlay{position:absolute;inset:0;z-index:100000010;pointer-events:auto;font-family:GenMin,serif;color:rgba(238,244,248,.94)}' +
                    '#hl-config-overlay .hl-config-backdrop{position:absolute;inset:0;background:rgba(0,0,0,.78)}' +
                    '#hl-config-overlay .hl-config-panel{position:absolute;left:260px;top:116px;width:900px;min-height:438px;box-sizing:border-box;padding:34px 48px;border:1px solid rgba(220,235,245,.22);border-radius:8px;background:linear-gradient(180deg,rgba(5,8,13,.98),rgba(0,0,0,.96));box-shadow:0 20px 60px rgba(0,0,0,.45)}' +
                    '#hl-config-overlay h1{margin:0 0 28px;font-size:24px;letter-spacing:.18em;font-weight:600}' +
                    '#hl-config-overlay .hl-config-close{position:absolute;right:24px;top:20px;width:96px;height:32px;border:1px solid rgba(221,230,236,.42);background:transparent;color:#dde6ec;font-size:12px;letter-spacing:.12em;cursor:pointer}' +
                    '#hl-config-overlay .hl-config-row{display:grid;grid-template-columns:150px 1fr 72px;align-items:center;gap:22px;margin:18px 0;letter-spacing:.12em}' +
                    '#hl-config-overlay .hl-config-row span{font-size:15px}' +
                    '#hl-config-overlay .hl-config-options{display:flex;gap:8px;flex-wrap:wrap}' +
                    '#hl-config-overlay .hl-config-option{min-width:42px;height:30px;border:1px solid rgba(221,230,236,.24);background:rgba(255,255,255,.04);color:#dde6ec;cursor:pointer;font-size:11px}' +
                    '#hl-config-overlay .hl-config-option.is-active{border-color:rgba(248,250,255,.86);background:rgba(180,205,235,.2)}' +
                    '#hl-config-overlay .hl-config-value{font-size:12px;text-align:right;font-weight:400}' +
                    'body.hl-title-modal-open .glink_button.title-logo,body.hl-title-modal-open .glink_button.title-subtitle,body.hl-title-modal-open .glink_button.title-choice{visibility:hidden!important;pointer-events:none!important}' +
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

            addOptions("bgm", [0, 20, 40, 60, 80, 100], setBgm, function (value) { return value === 0 ? "MUTE" : String(value); });
            addOptions("se", [0, 20, 40, 60, 80, 100], setSe, function (value) { return value === 0 ? "MUTE" : String(value); });
            addOptions("text", [100, 50, 30, 20, 10, 5], setText);
            addOptions("auto", [5000, 4000, 3000, 2000, 1000, 500], setAuto);
            addOptions("skip", [0, 1], function (value) { setUnreadSkip(value === 1); }, function (value) { return value === 1 ? "ON" : "OFF"; });

            overlay.on("click mousedown touchstart pointerdown pointerup", function (event) {
                event.stopImmediatePropagation();
                event.stopPropagation();
            });
            overlay.find(".hl-config-close").on("click", function (event) {
                event.stopPropagation();
                playClick();
                if (hidesTitleMenu) $("body").removeClass("hl-title-modal-open");
                overlay.remove();
                if (kag.stat.visible_menu_button == 1) $(".button_menu").show();
            });

            root.append(overlay);
            renderValues();
        };
    }



    function installBackTitleOverlay() {
        window.__hlOpenBackTitleConfirm = function () {
            var kag = TYRANO.kag;
            var root = $("#tyrano_base");
            $("#hl-back-title-confirm").remove();

            function playClick() {
                if (window.__hlPlayClickSe) window.__hlPlayClickSe();
            }

            var overlay = $('<div id="hl-back-title-confirm" class="hl-back-title-confirm"></div>');
            overlay.html(
                '<div class="hl-back-title-backdrop"></div>' +
                '<section class="hl-back-title-panel" aria-label="Back to title confirmation">' +
                    '<h1>TITLE</h1>' +
                    '<p>タイトルへ戻りますか？</p>' +
                    '<div class="hl-back-title-actions">' +
                        '<button type="button" class="hl-back-title-yes">YES</button>' +
                        '<button type="button" class="hl-back-title-no">NO</button>' +
                    '</div>' +
                '</section>'
            );

            if (!$("#hl-back-title-confirm-style").length) {
                $("head").append(
                    '<style id="hl-back-title-confirm-style">' +
                    '#hl-back-title-confirm{position:absolute;inset:0;z-index:100000020;pointer-events:auto;font-family:GenMin,serif;color:rgba(238,244,248,.95)}' +
                    '#hl-back-title-confirm .hl-back-title-backdrop{position:absolute;inset:0;background:rgba(0,0,0,.58)}' +
                    '#hl-back-title-confirm .hl-back-title-panel{position:absolute;left:390px;top:218px;width:500px;box-sizing:border-box;padding:42px 48px;border:1px solid rgba(220,235,245,.24);border-radius:8px;background:linear-gradient(180deg,rgba(5,8,13,.94),rgba(0,0,0,.86));box-shadow:0 20px 60px rgba(0,0,0,.48);text-align:center}' +
                    '#hl-back-title-confirm h1{margin:0 0 18px;font-size:24px;letter-spacing:.22em;font-weight:600}' +
                    '#hl-back-title-confirm p{margin:0 0 30px;font-size:15px;letter-spacing:.14em}' +
                    '#hl-back-title-confirm .hl-back-title-actions{display:flex;justify-content:center;gap:20px}' +
                    '#hl-back-title-confirm button{width:128px;height:38px;border:1px solid rgba(221,230,236,.42);background:rgba(255,255,255,.04);color:#dde6ec;font-size:13px;letter-spacing:.18em;cursor:pointer}' +
                    '#hl-back-title-confirm button:hover{border-color:rgba(248,250,255,.86);background:rgba(180,205,235,.18)}' +
                    '</style>'
                );
            }

            overlay.on("click mousedown touchstart pointerdown pointerup", function (event) {
                event.stopImmediatePropagation();
                event.stopPropagation();
            });
            overlay.find(".hl-back-title-no").on("click", function (event) {
                event.stopPropagation();
                playClick();
                overlay.remove();
            });
            overlay.find(".hl-back-title-yes").on("click", function (event) {
                event.stopPropagation();
                playClick();
                stopTransientAudio();
                resetRuntimeBeforeSceneSwitch();
                kag.layer.getMenuLayer().hide().empty();
                $(".button_menu").hide();
                kag.stat.visible_menu_button = false;
                overlay.remove();
                kag.ftag.startTag("jump", { storage: "title.ks" });
            });

            root.append(overlay);
        };
    }

    function install() {
        if (!window.TYRANO || !TYRANO.kag || !TYRANO.kag.menu) {
            setTimeout(install, 50);
            return;
        }

        installClickSoundEvents();
        installTitleModalStyle();

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
        TYRANO.kag.__hl_original_backTitle = TYRANO.kag.backTitle;

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

        TYRANO.kag.backTitle = function () {
            resetRuntimeBeforeSceneSwitch();
            return TYRANO.kag.__hl_original_backTitle.apply(this, arguments);
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
                        j_slot.find(".save_list_item_scene_title").remove();
                        if (save_data.display_scene_title) {
                            j_slot.find(".save_list_item_date").after('<span class="save_list_item_scene_title"></span>');
                            j_slot.find(".save_list_item_scene_title").text(save_data.display_scene_title);
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
        installBackTitleOverlay();

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

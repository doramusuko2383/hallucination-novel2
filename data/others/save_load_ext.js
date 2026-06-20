(function () {
    "use strict";

    var MANUAL_SLOT_COUNT = 100;
    var AUTO_SLOT_COUNT = 10;

    function safeText(value) {
        if (value === undefined || value === null) return "";
        return String(value).replace(/<[^>]*>/g, "").replace(/\s+/g, " ").trim();
    }

    function buildSaveDisplay(data) {
        data = data || {};
        var title = safeText(data.scene_title || (data.stat && data.stat.f && data.stat.f.save_scene_title));
        var text = safeText(data.title);
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

    function install() {
        if (!window.TYRANO || !TYRANO.kag || !TYRANO.kag.menu) {
            setTimeout(install, 50);
            return;
        }

        var menu = TYRANO.kag.menu;
        if (menu.__hl_save_load_ext_installed) return;
        menu.__hl_save_load_ext_installed = true;
        menu.__hl_original_getSaveData = menu.getSaveData;
        menu.__hl_original_displaySave = menu.displaySave;
        menu.__hl_original_displayLoad = menu.displayLoad;
        menu.__hl_original_doSave = menu.doSave;
        menu.__hl_original_snapSave = menu.snapSave;
        menu.__hl_original_loadGame = menu.loadGame;

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
                j_save.find(".save_display_area").each(function () {
                    $(this).click(function () {
                        var num = $(this).attr("data-num");
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

        TYRANO.kag.config.configSaveSlotNum = MANUAL_SLOT_COUNT;

        TYRANO.kag.tag.autosave_scene = {
            vital: [],
            pm: { title: "" },
            start: function (pm) {
                if (pm.title) TYRANO.kag.stat.f.save_scene_title = pm.title;
                TYRANO.kag.tag.autosave.start.call(this, pm);
            }
        };
        TYRANO.kag.tag.continue_latest = { pm: {}, start: function () { if (TYRANO.kag.menu.loadLatestSave() === false) TYRANO.kag.ftag.nextOrder(); } };
        if (TYRANO.kag.ftag && TYRANO.kag.ftag.master_tag) {
            TYRANO.kag.ftag.master_tag.autosave_scene = $.extend(true, {}, TYRANO.kag.tag.autosave_scene);
            TYRANO.kag.ftag.master_tag.autosave_scene.kag = TYRANO.kag;
            TYRANO.kag.ftag.master_tag.continue_latest = $.extend(true, {}, TYRANO.kag.tag.continue_latest);
            TYRANO.kag.ftag.master_tag.continue_latest.kag = TYRANO.kag;
        }
    }

    install();
})();

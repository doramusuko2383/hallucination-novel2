(function () {
    "use strict";

    var endings = [
        ["end_true", "TRUE END"],
        ["end_bad1", "BAD END 1　変えられなかった日常"],
        ["end_bad2", "BAD END 2　手遅れ"],
        ["end_bad3", "BAD END 3　孤立"],
        ["end_bad4", "BAD END 4　見て見ぬふり"],
        ["end_bad5", "BAD END 5　警戒された標的"],
        ["end_bad6", "BAD END 6　救われなかった未来"],
        ["end_bad7", "BAD END 7　地獄を見せた者"],
        ["end_bad8", "BAD END 8　僕は縺薙％"]
    ];
    var cgs = [
        "ch01_sc01_rooftop_wait.webp", "ch01_sc01_jumping_off.webp", "ch1_rooftop_shota_threat.webp",
        "ch01_cg_shota_nightmare.webp", "ch2_tatsuya_past.webp", "ch2_ayaka_and_megumi.webp",
        "ch3_convenience_touch.webp", "ch3_karaoke_determination.webp", "ch4_kyoko_takada.webp",
        "ch4_smartphone.webp", "ch4_takumi_megumi.webp", "ch5_takumi_takada.webp",
        "ch5_rooftop_tatsuya_cry.webp", "ch5_takumi_nightmare.webp", "ch6_ayaka_episode.webp",
        "ch6_ayaka_memory.webp", "ch6_takumi_ryuya.webp", "ch6_5members.webp",
        "ch7_hurrying_bicycle.webp", "ch7_battle.webp", "ch7_shakehands.webp", "ch7_last1.webp",
        "ch7_last2.webp", "ch7_ending.webp"
    ];
    // Add future chapters here; the menu and jump destination are generated from this list.
    var chapters = [
        { number: 1, title: "覚醒", thumbnail: "bg_rooftop_day_ch1.webp", storage: "chapter1.ks", target: "*ch1_start" },
        { number: 2, title: "報復", thumbnail: "bg_convenience_store_night.webp", storage: "chapter2.ks", target: "*ch2_start" },
        { number: 3, title: "邂逅", thumbnail: "bg_karaoke.webp", storage: "chapter3.ks", target: "*ch3_start" },
        { number: 4, title: "共犯", thumbnail: "bg_mansion_night.webp", storage: "chapter4.ks", target: "*ch4_start" },
        { number: 5, title: "代償", thumbnail: "bg_station_cafe.webp", storage: "chapter5.ks", target: "*ch5_start" },
        { number: 6, title: "赦し", thumbnail: "bg_hospital_room_day.webp", storage: "chapter6.ks", target: "*ch6_start" },
        { number: 7, title: "未来", thumbnail: "bg_classroom_graduation_evening.webp", storage: "chapter7.ks", target: "*ch7_start" }
    ];

    function sf() { return TYRANO.kag.variable.sf; }
    function root() { return $("#hl-extra"); }
    function clickSound() {
        TYRANO.kag.readyAudio();
        window.__hlExtraClick = window.__hlExtraClick || new Howl({ src: [$.parseStorage("se/click.ogg", "sound")], volume: 0.7 });
        window.__hlExtraClick.stop();
        window.__hlExtraClick.play();
    }
    function button(text, className) { return $("<button type='button'></button>").addClass(className || "").text(text); }
    function completion(found, total) { return found + " / " + total + " COMPLETE"; }

    function shell(title) {
        root().empty().append(
            $("<header></header>").append($("<span>EXTRA</span>"), $("<h1></h1>").text(title)),
            $("<main></main>"),
            $("<footer></footer>")
        );
        return root().find("main");
    }

    function home() {
        var main = shell("ARCHIVE").addClass("extra-home");
        main.append(button("END LIST", "extra-menu-button").on("click", function () { clickSound(); endList(); }));
        main.append(button("CG GALLERY", "extra-menu-button").on("click", function () { clickSound(); gallery(); }));
        // end_true is an existing system flag, so old clear data unlocks this without migration.
        if (sf().end_true === true) {
            main.append(button("CHAPTER SELECT", "extra-menu-button").on("click", function () { clickSound(); chapterSelect(); }));
        }
        root().find("footer").append(button("BACK TO TITLE", "extra-back").on("click", backToTitle));
    }

    function chapterSelect() {
        // Keep the guard here as well as on the home button so this remains a clear-only feature.
        if (sf().end_true !== true) { home(); return; }
        var main = shell("CHAPTER SELECT").addClass("extra-chapter-select");
        chapters.forEach(function (chapter) {
            var item = button("", "extra-chapter-card");
            item.append(
                $("<img>", { src: "./data/bgimage/" + chapter.thumbnail, alt: "" }),
                $("<span></span>").addClass("extra-chapter-shade"),
                $("<span></span>").addClass("extra-chapter-number").text("CHAPTER " + String(chapter.number).padStart(2, "0")),
                $("<strong></strong>").text(chapter.title)
            );
            item.attr("aria-label", "Chapter " + chapter.number + " " + chapter.title);
            item.on("click", function () { jumpToChapter(chapter); });
            main.append(item);
        });
        root().find("footer").append(button("戻る / BACK", "extra-back").on("click", function () { clickSound(); home(); }));
    }

    function jumpToChapter(chapter) {
        if (sf().end_true !== true) { home(); return; }
        clickSound();
        root().remove();
        // The title/EXTRA flow leaves message0 hidden and may retain a layout changed by
        // the ending.  Route through a scenario label so Tyrano restores the same text
        // window geometry used by the debug chapter jump before entering the chapter.
        TYRANO.kag.variable.tf.extra_jump_storage = chapter.storage;
        TYRANO.kag.variable.tf.extra_jump_target = chapter.target;
        TYRANO.kag.ftag.startTag("jump", { storage: "extra.ks", target: "*jump_to_chapter" });
    }

    function endList() {
        var state = sf(), count = 0, main = shell("END LIST").addClass("extra-end-list");
        endings.forEach(function (ending, index) {
            var unlocked = state[ending[0]] === true;
            if (unlocked) count++;
            main.append($("<div></div>").addClass("extra-end-row " + (unlocked ? "is-unlocked" : "is-locked"))
                .append($("<span></span>").text(String(index + 1).padStart(2, "0")), $("<strong></strong>").text(unlocked ? ending[1] : "？？？")));
        });
        root().find("footer").append(button("BACK", "extra-back").on("click", function () { clickSound(); home(); }), $("<output></output>").text(completion(count, endings.length)));
    }

    function gallery() {
        var main = shell("CG GALLERY").addClass("extra-gallery");
        cgs.forEach(function (name, index) {
            var item = button("", "extra-cg");
            item.append($("<img>", { src: "./data/bgimage/" + name, alt: "CG " + (index + 1) }));
            item.append($("<small></small>").text("CG " + String(index + 1).padStart(2, "0")));
            item.on("click", function () { clickSound(); viewer(index); });
            main.append(item);
        });
        root().find("footer").append(button("BACK", "extra-back").on("click", function () { clickSound(); home(); }));
    }

    function viewer(index) {
        root().empty().addClass("is-viewing").append($("<img>", { src: "./data/bgimage/" + cgs[index], alt: "CG full view" }));
        root().append($("<nav></nav>")
            .append(button("‹ PREV", "extra-view-control").on("click", function () { clickSound(); viewer((index - 1 + cgs.length) % cgs.length); }),
                button("BACK", "extra-view-control").on("click", function () { clickSound(); root().removeClass("is-viewing"); gallery(); }),
                button("NEXT ›", "extra-view-control").on("click", function () { clickSound(); viewer((index + 1) % cgs.length); })));
    }

    function backToTitle() {
        clickSound();
        root().remove();
        TYRANO.kag.ftag.startTag("jump", { storage: "first.ks", target: "*title_menu" });
    }

    window.HLExtra = {
        cgs: cgs,
        chapters: chapters,
        open: function () {
            $("#hl-extra").remove();
            $("#tyrano_base").append("<section id='hl-extra' aria-label='EXTRA menu'></section>");
            home();
        }
    };
})();

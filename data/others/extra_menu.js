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
        ["end_bad7", "BAD END 7　地獄を見せた者"]
    ];
    var cgs = [
        "ch01_cg_shota_nightmare.webp", "ch01_sc01_jumping_off.webp", "ch01_sc01_rooftop_wait.webp",
        "ch1_rooftop_shota_threat.webp", "ch2_ayaka_and_megumi.webp", "ch2_tatsuya_past.webp",
        "ch3_convenience_touch.webp", "ch3_karaoke_determination.webp", "ch4_kyoko_takada.webp",
        "ch4_smartphone.webp", "ch4_takumi_megumi.webp", "ch5_rooftop_tatsuya_cry.webp",
        "ch5_takumi_nightmare.webp", "ch5_takumi_takada.webp", "ch6_5members.webp",
        "ch6_ayaka_episode.webp", "ch6_ayaka_memory.webp", "ch6_takumi_ryuya.webp",
        "ch7_battle.webp", "ch7_hurrying_bicycle.webp", "ch7_last1.webp", "ch7_last2.webp", "ch7_shakehands.webp"
    ];

    function sf() { return TYRANO.kag.variable.sf; }
    function root() { return $("#hl-extra"); }
    function save() { TYRANO.kag.saveSystemVariable(); }
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
        root().find("footer").append(button("BACK TO TITLE", "extra-back").on("click", backToTitle));
    }

    function endList() {
        var state = sf(), count = 0, main = shell("END LIST").addClass("extra-end-list");
        endings.forEach(function (ending, index) {
            var unlocked = state[ending[0]] === true;
            if (unlocked) count++;
            main.append($("<div></div>").addClass("extra-end-row " + (unlocked ? "is-unlocked" : "is-locked"))
                .append($("<span></span>").text(String(index + 1).padStart(2, "0")), $("<strong></strong>").text(unlocked ? ending[1] : "？？？")));
        });
        root().find("footer").append(button("BACK", "extra-back").on("click", home), $("<output></output>").text(completion(count, endings.length)));
    }

    function gallery() {
        var state = sf(), viewed = state.cg_view || {}, count = 0, main = shell("CG GALLERY").addClass("extra-gallery");
        cgs.forEach(function (name, index) {
            var unlocked = !!viewed[name];
            if (unlocked) count++;
            var item = button("", "extra-cg " + (unlocked ? "is-unlocked" : "is-locked"));
            item.append(unlocked ? $("<img>", { src: "./data/bgimage/" + name, alt: "CG " + (index + 1) }) : $("<span>？？？</span>"));
            item.append($("<small></small>").text("CG " + String(index + 1).padStart(2, "0")));
            if (unlocked) item.on("click", function () { clickSound(); viewer(index); });
            else item.attr("disabled", true);
            main.append(item);
        });
        root().find("footer").append(button("BACK", "extra-back").on("click", home), $("<output></output>").text(completion(count, cgs.length)));
    }

    function viewer(index) {
        var viewed = sf().cg_view || {};
        function available(direction) {
            var next = index;
            do { next = (next + direction + cgs.length) % cgs.length; } while (!viewed[cgs[next]] && next !== index);
            return next;
        }
        root().empty().addClass("is-viewing").append($("<img>", { src: "./data/bgimage/" + cgs[index], alt: "CG full view" }));
        root().append($("<nav></nav>")
            .append(button("‹ PREV", "extra-view-control").on("click", function () { viewer(available(-1)); }),
                button("BACK", "extra-view-control").on("click", function () { root().removeClass("is-viewing"); gallery(); }),
                button("NEXT ›", "extra-view-control").on("click", function () { viewer(available(1)); })));
    }

    function backToTitle() {
        clickSound();
        root().remove();
        TYRANO.kag.ftag.startTag("jump", { storage: "first.ks", target: "*title_menu" });
    }

    window.HLExtra = {
        cgs: cgs,
        open: function () {
            $("#hl-extra").remove();
            $("#tyrano_base").append("<section id='hl-extra' aria-label='EXTRA menu'></section>");
            home();
        },
        unlockCg: function (name) {
            if (cgs.indexOf(name) < 0) return;
            var state = sf();
            state.cg_view = state.cg_view || {};
            if (!state.cg_view[name]) { state.cg_view[name] = "on"; save(); }
        }
    };
})();

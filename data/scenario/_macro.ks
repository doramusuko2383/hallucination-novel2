; =========================
; ページ送りマクロ
; =========================

[macro name=page]

[trans time=120 method=crossfade]
[wt time=50]

[p]

[endmacro]


; =========================
; 章タイトル演出マクロ
; =========================
; 無音の黒背景＋白文字のみで、章番号→章題の順に静かに表示する。
; 将来的にSEを追加する場合は showChapterTitle 内に処理を集約する。
[macro name=chapter_title]
[cm]
[chara_hide_all]
[layopt layer=message0 visible=false]
[iscript]
(function showChapterTitle() {
    var chapterNumber = mp.number || "";
    var chapterName = mp.title || "";
    var base = $("#tyrano_base");

    $("#chapter-title-overlay").remove();

    var overlay = $("<div></div>").attr("id", "chapter-title-overlay");
    var inner = $("<div></div>").addClass("chapter-title-inner");
    var number = $("<div></div>").addClass("chapter-title-number").text(chapterNumber);
    var title = $("<div></div>").addClass("chapter-title-name").text(chapterName);

    overlay.append(inner.append(number, title));
    base.append(overlay);

    overlay.animate({ opacity: 1 }, 500);
    number.animate({ opacity: 1 }, 500);

    setTimeout(function () {
        title.animate({ opacity: 1 }, 500);
    }, 800);

    setTimeout(function () {
        overlay.animate({ opacity: 0 }, 1000, function () {
            overlay.remove();
        });
    }, 2800);
})();
[endscript]
[wait time=3000]
[layopt layer=message0 visible=true]
[endmacro]

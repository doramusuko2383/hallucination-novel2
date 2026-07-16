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
[bg storage="black.png" time=0]
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
; =========================
; 共通選択肢マクロ
; =========================
; 使い方:
; [choice_start count=3]
; [choice name="choice_id" text="表示テキスト" target="*label"]
; [choice name="choice_id2" text="表示テキスト2" target="*label2"]
; [choice name="choice_id3" text="表示テキスト3" target="*label3"]
; [s]
;
; デザインや配置の共通設定は [choice_start] のデフォルト値を変更する。
; 個別に上書きしたい場合は [choice_start count=2 x=470 width=340] のように指定する。
[macro name=choice_start]
[eval exp="tf.choice_index = 0"]
[eval exp="tf.choice_count = parseInt(mp.count || 0, 10)"]
[eval exp="tf.choice_x = parseInt(mp.x || 240, 10)"]
[eval exp="tf.choice_y = parseInt(mp.y || (tf.choice_count === 2 ? 280 : 210), 10)"]
[eval exp="tf.choice_width = parseInt(mp.width || 800, 10)"]
[eval exp="tf.choice_height = parseInt(mp.height || 72, 10)"]
[eval exp="tf.choice_size = parseInt(mp.size || 30, 10)"]
[eval exp="tf.choice_gap = parseInt(mp.gap || 90, 10)"]
[eval exp="tf.choice_clickse = mp.clickse || 'se/click.ogg'"]
[glink_config show_time="220" show_effect="hlChoiceFadeInStagger" show_delay="520" show_easing="ease-out" select_time="420" select_effect="hlChoiceFadeOutHold" select_easing="ease-in" reject_time="420" reject_effect="hlChoiceFadeOutHold" reject_easing="ease-in"]
[endmacro]

[macro name=choice]
[eval exp="tf.choice_current_y = tf.choice_y + (tf.choice_index * tf.choice_gap)"]
[eval exp="tf.choice_show_delay = 520 + (tf.choice_index * 100)"]
[glink name="%name" text="%text" target="%target" x="&tf.choice_x" y="&tf.choice_current_y" width="&tf.choice_width" height="&tf.choice_height" size="&tf.choice_size" clickse="&tf.choice_clickse" show_delay="&tf.choice_show_delay" select_delay="0" reject_delay="0"]
[eval exp="tf.choice_index += 1"]
[endmacro]

; 開発確認専用: 本編からは遷移させない立ち絵比較画面。
; 全員に同じ scale を使い、画像の透明余白を除いた足元を floorY に揃える。

[cm]
[chara_hide_all]
[layopt layer=message0 visible=false]
[hidemenubutton]

[iscript]
(function () {
    var SCALE = 0.32;
    var FLOOR_Y = 642;
    var NAME_Y = 662;
    var characters = [
        { name: "綾香", storage: "chara/ayaka/normal.webp", centerX: 110 },
        { name: "恵", storage: "chara/megumi/normal.webp", centerX: 322 },
        { name: "拓海", storage: "chara/takumi/level1_normal.webp", centerX: 534 },
        { name: "龍也", storage: "chara/ryuya/normal.webp", centerX: 746 },
        { name: "翔太", storage: "chara/shota/normal.webp", centerX: 958 },
        { name: "高田", storage: "chara/takada/normal.webp", centerX: 1170 }
    ];
    var layer = TG.layer.getLayer("0", "fore");
    var baseLayer = TG.layer.getLayer("base", "fore");

    $("#character-compare").remove();
    baseLayer.css({ "background-image": "none", "background-color": "#f5f5f5" });

    var compare = $("<div></div>").attr("id", "character-compare").css({
        position: "absolute",
        width: "1280px",
        height: "720px",
        overflow: "hidden"
    });
    layer.empty().append(compare).show();

    function getOpaqueBounds(image) {
        var canvas = document.createElement("canvas");
        var context = canvas.getContext("2d");
        var x, y, index, alpha, left, top, right, bottom;

        canvas.width = image.naturalWidth;
        canvas.height = image.naturalHeight;
        context.drawImage(image, 0, 0);
        var pixels = context.getImageData(0, 0, canvas.width, canvas.height).data;

        left = canvas.width;
        top = canvas.height;
        right = 0;
        bottom = 0;
        for (y = 0; y < canvas.height; y++) {
            for (x = 0; x < canvas.width; x++) {
                index = (y * canvas.width + x) * 4;
                alpha = pixels[index + 3];
                if (alpha !== 0) {
                    left = Math.min(left, x);
                    top = Math.min(top, y);
                    right = Math.max(right, x);
                    bottom = Math.max(bottom, y);
                }
            }
        }
        return bottom === 0 ? { bottom: canvas.height } : { bottom: bottom + 1 };
    }

    characters.forEach(function (character) {
        var image = new Image();
        var name = $("<div></div>").text(character.name).css({
            position: "absolute",
            left: (character.centerX - 90) + "px",
            top: NAME_Y + "px",
            width: "180px",
            color: "#333333",
            "font-size": "16px",
            "text-align": "center"
        });

        image.onload = function () {
            var bounds = getOpaqueBounds(image);
            $(image).css({
                position: "absolute",
                left: (character.centerX - (image.naturalWidth * SCALE / 2)) + "px",
                top: (FLOOR_Y - (bounds.bottom * SCALE)) + "px",
                width: (image.naturalWidth * SCALE) + "px",
                height: (image.naturalHeight * SCALE) + "px"
            });
        };
        image.src = "./data/fgimage/" + character.storage;
        compare.append(image, name);
    });

    function returnToTitle(event) {
        if (event) {
            event.preventDefault();
            event.stopImmediatePropagation();
        }
        document.removeEventListener("keydown", onKeyDown, true);
        document.removeEventListener("mousedown", onMouseDown, true);
        TG.ftag.startTag("jump", { storage: "title.ks" });
    }

    function onKeyDown(event) {
        if (event.key === "Escape" || event.keyCode === 27) {
            returnToTitle(event);
        }
    }

    function onMouseDown(event) {
        if (event.button === 2) {
            returnToTitle(event);
        }
    }

    document.addEventListener("keydown", onKeyDown, true);
    document.addEventListener("mousedown", onMouseDown, true);
})();
[endscript]

;能力演出共通

*ability_activation_fx
[iscript]
(function () {
    if (tf.__ability_fx_running) return;
    tf.__ability_fx_running = true;

    var $base = $("#tyrano_base");
    if ($base.length === 0) {
        tf.__ability_fx_running = false;
        return;
    }

    var $overlay = $('<div class="ability-activation-flash"></div>');
    $overlay.css({
        position: "absolute",
        left: 0,
        top: 0,
        width: "100%",
        height: "100%",
        background: "#000",
        opacity: 0,
        pointerEvents: "none",
        zIndex: 9998
    });

    $base.append($overlay);

    $overlay.animate({ opacity: 0.5 }, 70, "linear", function () {
        $overlay.animate({ opacity: 0 }, 130, "linear", function () {
            $overlay.remove();
            tf.__ability_fx_running = false;
        });
    });

    try {
        var AudioCtx = window.AudioContext || window.webkitAudioContext;
        if (!AudioCtx) return;

        if (!tf.__ability_audio_ctx) tf.__ability_audio_ctx = new AudioCtx();
        var ctx = tf.__ability_audio_ctx;
        if (ctx.state === "suspended") {
            ctx.resume();
        }

        var now = ctx.currentTime;
        var osc = ctx.createOscillator();
        var gain = ctx.createGain();

        osc.type = "triangle";
        osc.frequency.setValueAtTime(120, now);
        osc.frequency.exponentialRampToValueAtTime(70, now + 0.12);

        gain.gain.setValueAtTime(0.0001, now);
        gain.gain.exponentialRampToValueAtTime(0.05, now + 0.02);
        gain.gain.exponentialRampToValueAtTime(0.0001, now + 0.14);

        osc.connect(gain);
        gain.connect(ctx.destination);
        osc.start(now);
        osc.stop(now + 0.15);
    } catch (e) {
        console.warn("[ability-fx] audio skipped", e);
    }
})();
[endscript]

[wait time="120"]
[delay speed="30"]
@return

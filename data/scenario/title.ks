; タイトル復帰用エントリ。
; 本編メニューからのタイトル復帰時はスプラッシュを挟まず、タイトルメニューへ直接戻す。
[cm]
@clearstack
@hidemenubutton
@stop_bgmovie time=0 wait=true
[iscript]
(function stopAudioBeforeTitle() {
    var kag = TYRANO.kag;
    function stopMap(map) {
        if (!map) return;
        Object.keys(map).forEach(function (key) {
            var howl = map[key];
            if (howl) {
                howl.stop();
                howl.unload();
            }
            delete map[key];
        });
    }
    stopMap(kag.tmp && kag.tmp.map_bgm);
    stopMap(kag.tmp && kag.tmp.map_se);
    if (window.Howler && Array.isArray(Howler._howls)) {
        Howler._howls.slice().forEach(function (howl) {
            if (howl) howl.stop();
        });
    }
    if (kag.stat) {
        kag.stat.current_bgm = "";
        kag.stat.current_bgm_vol = "";
        kag.stat.current_se = {};
    }
    window.__hlTitleWind = null;
})();
[endscript]
@jump storage="first.ks" target="*title_menu"

; タイトル画面専用CONFIG。
; タイトルメニューへ重ねず、タイトル背景＋グレー透過スクリーンの専用画面として表示する。

*title_config
[cm]
[clearfix]
[free_layermode time=0 wait=true]
[bg storage="title_rooftop.webp" time=0]
[layermode color="0x05080d" opacity="165" time="100" wait="true"]
[iscript]
(function setupTitleConfigScreen() {
    var config = TG.config;
    window.__hlTitleConfigSet = function (kind, value) {
        var kag = TYRANO.kag;
        if (kind === "bgm") {
            config.defaultBgmVolume = String(value);
            kag.ftag.startTag("bgmopt", { volume: String(value), next: "false" });
        } else if (kind === "se") {
            config.defaultSeVolume = String(value);
            kag.ftag.startTag("seopt", { volume: String(value), next: "false" });
        } else if (kind === "text") {
            config.chSpeed = String(value);
        } else if (kind === "auto") {
            config.autoSpeed = String(value);
        } else if (kind === "skip") {
            config.unReadTextSkip = value ? "true" : "false";
        }
        if (kag.saveSystemVariable) kag.saveSystemVariable();
    };
    tf.title_cfg_bgm = parseInt(config.defaultBgmVolume || 100, 10);
    tf.title_cfg_se = parseInt(config.defaultSeVolume || 100, 10);
    tf.title_cfg_text = parseInt(config.chSpeed || 30, 10);
    tf.title_cfg_auto = parseInt(config.autoSpeed || 3000, 10);
    tf.title_cfg_skip = config.unReadTextSkip === "true" ? "ON" : "OFF";
})();
[endscript]

[ptext layer="fix" fix="true" name="title_config_heading" text="CONFIG" x="72" y="48" size="28" color="0xf0f6fa"]
[ptext layer="fix" fix="true" name="title_config_close_label" text="× CLOSE" x="1140" y="32" width="110" align="center" size="13" color="0xdde6ec"]
[glink fix="true" name="title_config_close" text="" target="*title_config_close" x="1132" y="24" width="126" height="40" color="black" graphic=""]

[ptext layer="fix" fix="true" name="title_config_label" text="BGM VOLUME" x="292" y="202" size="16" color="0xf0f6fa"]
[ptext layer="fix" fix="true" name="title_config_value" text="&tf.title_cfg_bgm + '%'" x="1050" y="202" width="120" align="right" size="14" color="0xf0f6fa"]
[glink fix="true" text="MUTE" target="*title_config" exp="window.__hlTitleConfigSet('bgm', 0)" x="440" y="190" width="64" height="34" size="10" color="black"]
[glink fix="true" text="20" target="*title_config" exp="window.__hlTitleConfigSet('bgm', 20)" x="514" y="190" width="46" height="34" size="10" color="black"]
[glink fix="true" text="40" target="*title_config" exp="window.__hlTitleConfigSet('bgm', 40)" x="574" y="190" width="46" height="34" size="10" color="black"]
[glink fix="true" text="60" target="*title_config" exp="window.__hlTitleConfigSet('bgm', 60)" x="634" y="190" width="46" height="34" size="10" color="black"]
[glink fix="true" text="80" target="*title_config" exp="window.__hlTitleConfigSet('bgm', 80)" x="694" y="190" width="46" height="34" size="10" color="black"]
[glink fix="true" text="100" target="*title_config" exp="window.__hlTitleConfigSet('bgm', 100)" x="754" y="190" width="56" height="34" size="10" color="black"]

[ptext layer="fix" fix="true" name="title_config_label" text="SE VOLUME" x="292" y="272" size="16" color="0xf0f6fa"]
[ptext layer="fix" fix="true" name="title_config_value" text="&tf.title_cfg_se + '%'" x="1050" y="272" width="120" align="right" size="14" color="0xf0f6fa"]
[glink fix="true" text="MUTE" target="*title_config" exp="window.__hlTitleConfigSet('se', 0)" x="440" y="260" width="64" height="34" size="10" color="black"]
[glink fix="true" text="20" target="*title_config" exp="window.__hlTitleConfigSet('se', 20)" x="514" y="260" width="46" height="34" size="10" color="black"]
[glink fix="true" text="40" target="*title_config" exp="window.__hlTitleConfigSet('se', 40)" x="574" y="260" width="46" height="34" size="10" color="black"]
[glink fix="true" text="60" target="*title_config" exp="window.__hlTitleConfigSet('se', 60)" x="634" y="260" width="46" height="34" size="10" color="black"]
[glink fix="true" text="80" target="*title_config" exp="window.__hlTitleConfigSet('se', 80)" x="694" y="260" width="46" height="34" size="10" color="black"]
[glink fix="true" text="100" target="*title_config" exp="window.__hlTitleConfigSet('se', 100)" x="754" y="260" width="56" height="34" size="10" color="black"]

[ptext layer="fix" fix="true" name="title_config_label" text="TEXT SPEED" x="292" y="342" size="16" color="0xf0f6fa"]
[ptext layer="fix" fix="true" name="title_config_value" text="&tf.title_cfg_text" x="1050" y="342" width="120" align="right" size="14" color="0xf0f6fa"]
[glink fix="true" text="100" target="*title_config" exp="window.__hlTitleConfigSet('text', 100)" x="440" y="330" width="56" height="34" size="10" color="black"]
[glink fix="true" text="50" target="*title_config" exp="window.__hlTitleConfigSet('text', 50)" x="506" y="330" width="46" height="34" size="10" color="black"]
[glink fix="true" text="30" target="*title_config" exp="window.__hlTitleConfigSet('text', 30)" x="562" y="330" width="46" height="34" size="10" color="black"]
[glink fix="true" text="20" target="*title_config" exp="window.__hlTitleConfigSet('text', 20)" x="618" y="330" width="46" height="34" size="10" color="black"]
[glink fix="true" text="10" target="*title_config" exp="window.__hlTitleConfigSet('text', 10)" x="674" y="330" width="46" height="34" size="10" color="black"]
[glink fix="true" text="5" target="*title_config" exp="window.__hlTitleConfigSet('text', 5)" x="730" y="330" width="46" height="34" size="10" color="black"]

[ptext layer="fix" fix="true" name="title_config_label" text="AUTO SPEED" x="292" y="412" size="16" color="0xf0f6fa"]
[ptext layer="fix" fix="true" name="title_config_value" text="&tf.title_cfg_auto" x="1050" y="412" width="120" align="right" size="14" color="0xf0f6fa"]
[glink fix="true" text="5000" target="*title_config" exp="window.__hlTitleConfigSet('auto', 5000)" x="440" y="400" width="58" height="34" size="10" color="black"]
[glink fix="true" text="4000" target="*title_config" exp="window.__hlTitleConfigSet('auto', 4000)" x="508" y="400" width="58" height="34" size="10" color="black"]
[glink fix="true" text="3000" target="*title_config" exp="window.__hlTitleConfigSet('auto', 3000)" x="576" y="400" width="58" height="34" size="10" color="black"]
[glink fix="true" text="2000" target="*title_config" exp="window.__hlTitleConfigSet('auto', 2000)" x="644" y="400" width="58" height="34" size="10" color="black"]
[glink fix="true" text="1000" target="*title_config" exp="window.__hlTitleConfigSet('auto', 1000)" x="712" y="400" width="58" height="34" size="10" color="black"]
[glink fix="true" text="500" target="*title_config" exp="window.__hlTitleConfigSet('auto', 500)" x="780" y="400" width="58" height="34" size="10" color="black"]

[ptext layer="fix" fix="true" name="title_config_label" text="UNREAD SKIP" x="292" y="492" size="16" color="0xf0f6fa"]
[ptext layer="fix" fix="true" name="title_config_value" text="&tf.title_cfg_skip" x="1050" y="492" width="120" align="right" size="14" color="0xf0f6fa"]
[glink fix="true" text="OFF" target="*title_config" exp="window.__hlTitleConfigSet('skip', 0)" x="440" y="480" width="56" height="34" size="10" color="black"]
[glink fix="true" text="ON" target="*title_config" exp="window.__hlTitleConfigSet('skip', 1)" x="510" y="480" width="56" height="34" size="10" color="black"]
[s]

*title_config_close
[cm]
[clearfix]
[free_layermode time="100" wait="true"]
@jump storage="first.ks" target="*title_menu"

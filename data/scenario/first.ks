 ;一番最初に呼び出されるファイル

 [title name="ハルシネーション"]

 [stop_keyconfig]

 @call storage="tyrano.ks"
 [call storage="chara_define.ks"]
 [call storage="chara_auto.ks"]

 [chara_config pos_mode="false"]

 [hidemenubutton]

+; -----------------------------
+; デバッグフラグ（ここで切り替え）
+[iscript]
+var DEBUG_MODE = true;
+[endscript]
+; -----------------------------

 *title_menu
 [cm]
 @layopt layer=message0 visible=false
 [iscript]
 var baseLayer = TG.layer.getLayer("base", "fore");
 baseLayer.css("background-image", "none");
 baseLayer.css("background-color", "#000000");
 [endscript]

+[if exp="DEBUG_MODE"]
+    @jump storage="debug.ks" target="debug_menu"
+[endif]

 [glink name="title-choice" color="black" size="34" x="0" y="320" width="1280" text="最初から" target="*title_newgame"]
 [glink name="title-choice" color="black" size="34" x="0" y="390" width="1280" text="続きから" target="*title_continue"]
 [s]
EOF
)

[macro name="auto_chara"]

; 全キャラ非表示（安全のため）
[chara_hide_all]

; 発言者を取得
[eval exp="tf.name = mp.name"]

; キャラ表示
[if exp="tf.name != ''"]
[chara_show name=&tf.name time=300 wait=false]
[endif]

[endmacro]

[return]

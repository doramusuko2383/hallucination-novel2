[macro name="auto_chara"]

; 全キャラ非表示（安全のため）
[chara_hide_all]

; 発言者と表情を取得
[eval exp="tf.name = mp.name"]
[eval exp="tf.face = (typeof mp.face !== 'undefined' && mp.face != '') ? mp.face : 'default'"]

; キャラ表示
[if exp="tf.name != ''"]
[chara_show name=&tf.name face=&tf.face time=300 wait=false]
[endif]

[endmacro]

[return]

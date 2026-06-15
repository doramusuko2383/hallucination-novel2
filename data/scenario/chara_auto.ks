[macro name="auto_chara"]

; 全キャラ非表示（安全のため）
[chara_hide_all]

; 発言者と表情を取得
[eval exp="tf.name = mp.name"]
[eval exp="tf.face = (typeof mp.face !== 'undefined' && mp.face != '') ? mp.face : 'default'"]
[eval exp="tf.left = (typeof mp.left !== 'undefined' && mp.left != '') ? mp.left : ''"]

; キャラ表示（left 指定時だけ位置を上書きし、未指定時は既存定義の位置を維持）
[if exp="tf.name != '' && tf.left != ''"]
[chara_show name=&tf.name face=&tf.face left=&tf.left time=300 wait=false]
[elsif exp="tf.name != ''"]
[chara_show name=&tf.name face=&tf.face time=300 wait=false]
[endif]

[endmacro]

[return]

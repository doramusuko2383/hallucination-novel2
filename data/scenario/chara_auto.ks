[macro name="auto_chara"]

; 全キャラ非表示（安全のため）
[chara_hide_all]

; 発言者と表情、任意の移動先を取得
[eval exp="tf.name = mp.name"]
[eval exp="tf.face = (typeof mp.face !== 'undefined' && mp.face != '') ? mp.face : 'default'"]
[eval exp="tf.left = (typeof mp.left !== 'undefined' && mp.left != '') ? mp.left : (tf.name == '拓海' ? 0 : 300)"]

; キャラ表示後、明示指定またはデフォルト位置へ移動する
[if exp="tf.name != ''"]
[chara_show name=&tf.name face=&tf.face time=300 wait=false]
[chara_move name=&tf.name left=&tf.left time=0 wait=false]
[endif]

[endmacro]

[return]

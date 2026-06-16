[macro name="auto_chara"]

; 全キャラ非表示（安全のため）
[chara_hide_all]

; 発言者と表情、任意の移動先を取得
[eval exp="tf.name = mp.name"]
[eval exp="tf.face = (typeof mp.face !== 'undefined' && mp.face != '') ? mp.face : 'default'"]
[eval exp="tf.left = (typeof mp.left !== 'undefined' && mp.left != '') ? mp.left : (tf.name == '拓海' ? 0 : 300)"]

; [chara_new] の scale/top は [chara_show] に自動継承されないため、
; auto_chara 側で各キャラの標準表示サイズ・位置を補完する。
[eval exp="tf.default_top = (tf.name == '恵') ? 110 : (tf.name == '拓海') ? 90 : (tf.name == '龍也') ? 80 : (tf.name == '綾香') ? 105 : (tf.name == '綾香の母') ? 105 : (tf.name == '翔太') ? 85 : (tf.name == '響子') ? 100 : (tf.name == '高田') ? 100 : 0"]
[eval exp="tf.default_width = (tf.name == '恵') ? 461 : (tf.name == '拓海') ? 512 : (tf.name == '龍也') ? 512 : (tf.name == '綾香') ? 461 : (tf.name == '綾香の母') ? 461 : (tf.name == '翔太') ? 512 : (tf.name == '響子') ? 461 : (tf.name == '高田') ? 512 : ''"]
[eval exp="tf.top = (typeof mp.top !== 'undefined' && mp.top != '') ? mp.top : tf.default_top"]
[eval exp="tf.width = (typeof mp.width !== 'undefined' && mp.width != '') ? mp.width : tf.default_width"]

; キャラ表示後、明示指定またはデフォルト位置へ移動する
[if exp="tf.name != ''"]
[chara_show name=&tf.name face=&tf.face left=&tf.left top=&tf.top width=&tf.width time=300 wait=false]
[chara_move name=&tf.name left=&tf.left top=&tf.top width=&tf.width time=0 wait=false]
[endif]

[endmacro]

[return]

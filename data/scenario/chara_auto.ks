[macro name="auto_chara"]

; 全キャラ非表示（安全のため）
[chara_hide_all]

; 発言者と表情、任意の移動先を取得
[eval exp="tf.name = mp.name"]
[eval exp="tf.face = (typeof mp.face !== 'undefined' && mp.face != '') ? mp.face : 'default'"]
[eval exp="tf.left = (typeof mp.left !== 'undefined' && mp.left != '') ? mp.left : (tf.name == '拓海' ? 0 : 300)"]

; [chara_show] の width はキャラ定義側に記憶される。
; 直前のイベントCG用表示（例: 病院シーンの width=520）に引きずられると、
; 以降の auto_chara が縮小されて全身表示になってしまうため、
; 通常の会話立ち絵はキャラごとのデフォルト幅・位置へ戻す。
; width は chara_define.ks の scale を元画像幅に掛けて算出した値。
[eval exp="tf.default_width_map = {'恵':430,'拓海':486,'龍也':486,'綾香':440,'綾香の母':440,'翔太':486,'響子':440,'高田':486}"]
[eval exp="tf.default_top_map = {'恵':156,'拓海':128,'龍也':118,'綾香':136,'綾香の母':136,'翔太':123,'響子':131,'高田':138}"]
[eval exp="tf.width = (typeof mp.width !== 'undefined' && mp.width != '') ? mp.width : (typeof tf.default_width_map[tf.name] !== 'undefined' ? tf.default_width_map[tf.name] : 1024)"]
[eval exp="tf.top = (typeof mp.top !== 'undefined' && mp.top != '') ? mp.top : (typeof tf.default_top_map[tf.name] !== 'undefined' ? tf.default_top_map[tf.name] : 0)"]

; キャラ表示後、明示指定またはデフォルト位置へ移動する
[if exp="tf.name != ''"]
[chara_show name=&tf.name face=&tf.face left=&tf.left top=&tf.top width=&tf.width time=300 wait=false]
[chara_move name=&tf.name left=&tf.left top=&tf.top width=&tf.width time=0 wait=false]
[endif]

[endmacro]

[return]

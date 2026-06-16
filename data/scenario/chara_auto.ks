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
; 通常の会話立ち絵は明示的に原寸幅へ戻してバストアップ表示にする。
[eval exp="tf.width = (typeof mp.width !== 'undefined' && mp.width != '') ? mp.width : 1024"]
[eval exp="tf.top = (typeof mp.top !== 'undefined' && mp.top != '') ? mp.top : 0"]

; キャラ表示後、明示指定またはデフォルト位置へ移動する
[if exp="tf.name != ''"]
[chara_show name=&tf.name face=&tf.face left=&tf.left top=&tf.top width=&tf.width time=300 wait=false]
[chara_move name=&tf.name left=&tf.left top=&tf.top width=&tf.width time=0 wait=false]
[endif]

[endmacro]

[return]

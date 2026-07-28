[macro name="auto_chara"]

; 全キャラ非表示（安全のため）
[chara_hide_all]

; 発言者と表情、任意の移動先を取得
[eval exp="tf.name = mp.name"]
[eval exp="tf.face = (typeof mp.face !== 'undefined' && mp.face != '') ? mp.face : 'default'"]
[eval exp="tf.left = (typeof mp.left !== 'undefined' && mp.left != '') ? mp.left : (tf.name == '拓海' ? 0 : 300)"]
; time を指定した箇所だけ、立ち絵のフェードイン速度を変更できる（単位: ミリ秒）。
; wait=true を併用すると、フェードインが終わるまで次の命令を待つ。
[eval exp="tf.show_time = (typeof mp.time !== 'undefined' && mp.time != '') ? mp.time : 300"]
[eval exp="tf.show_wait = (typeof mp.wait !== 'undefined' && mp.wait != '') ? mp.wait : 'false'"]

; [chara_show] の width はキャラ定義側に記憶される。
; 直前のイベントCG用表示（例: 病院シーンの width=520）に引きずられると、
; 以降の auto_chara が縮小されて全身表示になってしまうため、
; 通常の会話立ち絵はキャラごとのデフォルト幅・位置へ戻す。
; width は従来の 1024 を最大サイズにして、chara_define.ks の scale 比率で算出した値。
[eval exp="tf.default_width_map = {'恵':905,'拓海':920,'龍也':1024,'綾香':870,'綾香の母':880,'翔太':980,'響子':900,'高田':960}"]
; 龍也を画面上端（top=0）に置き、従来の top 差を全員で保って身長差を表現する。
[eval exp="tf.default_top_map = {'恵':46,'拓海':38,'龍也':0,'綾香':50,'綾香の母':50,'翔太':20,'響子':65,'高田':40}"]
[eval exp="tf.width = (typeof mp.width !== 'undefined' && mp.width != '') ? mp.width : (typeof tf.default_width_map[tf.name] !== 'undefined' ? tf.default_width_map[tf.name] : 1024)"]
[eval exp="tf.top = (typeof mp.top !== 'undefined' && mp.top != '') ? mp.top : (typeof tf.default_top_map[tf.name] !== 'undefined' ? tf.default_top_map[tf.name] : 0)"]
; デバッグのサイズ確認など、標準サイズのまま中央配置したい場合に使用する。
[if exp="typeof mp.center !== 'undefined' && mp.center == 'true'"]
[eval exp="tf.left = Math.round((1280 - tf.width) / 2)"]
[endif]

; chara_show 自体に位置とサイズを渡す。
; 直後に chara_move を実行すると、chara_move 内の stop() がフェードインを
; 即座に完了させてしまい、time を長くしても表示速度へ反映されない。
[if exp="tf.name != ''"]
[chara_show name=&tf.name face=&tf.face left=&tf.left top=&tf.top width=&tf.width time=&tf.show_time wait=&tf.show_wait]
[endif]

[endmacro]

[return]

; タイトル復帰用エントリ。
; 本編メニューからのタイトル復帰時はスプラッシュを挟まず、タイトルメニューへ直接戻す。
[cm]
@clearstack
@hidemenubutton
@stop_bgmovie time=0 wait=true
[stopse]
[stopbgm time=0]
[call storage="macro.ks"]
@jump storage="first.ks" target="*title_menu"

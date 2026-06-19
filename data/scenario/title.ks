; タイトル復帰用エントリ。
; 初回起動と同じ title_menu に戻し、タイトル画面以外のシナリオ処理を変更しない。
[cm]
@clearstack
@hidemenubutton
@stop_bgmovie time=0 wait=true
@jump storage="first.ks" target="*title_menu"

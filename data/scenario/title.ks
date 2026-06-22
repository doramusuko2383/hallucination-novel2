; タイトル復帰用エントリ。
; 短いロゴ表示を挟んで初回起動と同じタイトルメニューに戻し、タイトル画面以外のシナリオ処理を変更しない。
[cm]
@clearstack
@hidemenubutton
@stop_bgmovie time=0 wait=true
@jump storage="first.ks" target="*opening_logo"

*debug_menu

[cm]

; 背景
[bg storage="black.png"]

; ▼メッセージレイヤー初期化（これ重要）
[position layer="message0" left=0 top=540 width=1280 height=200 page=fore visible=true opacity=255]
[position layer=message0 page=fore margint="40" marginl="120" marginr="120" marginb="40"]

@layopt layer=message0 visible=true

[glyph figure="circle" color="0x8ec5e6" anim="flash" marginl="12" marginb="6"]

[delay speed="42"]

デバッグメニュー

[p]

■スタート
[glink text="最初から開始" storage="chapter1.ks" target="ch1_start"]

[p]

■チャプター選択
[glink text="Chapter1" storage="chapter1.ks" target="ch1_start"]
[glink text="Chapter2" storage="chapter2.ks" target="ch2_start"]
[glink text="Chapter3" storage="chapter3.ks" target="ch3_start"]
[glink text="Chapter4" storage="chapter4.ks" target="ch4_start"]
[glink text="Chapter5" storage="chapter5.ks" target="ch5_start"]
[glink text="Chapter6" storage="chapter6.ks" target="ch6_start"]
[glink text="Chapter7" storage="chapter7.ks" target="ch7_start"]

[s]

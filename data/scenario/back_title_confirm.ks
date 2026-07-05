; 本編メニューの「タイトルへ戻る」確認画面。
; JS DOMモーダルではなくTyranoScriptの通常レイヤーとボタンで表示する。

*confirm
[cm]
[clearfix]
[hidemenubutton]
[layermode color="0x05080d" opacity="175" time="100" wait="true"]
[ptext layer="fix" fix="true" name="back_title_confirm_heading" text="TITLE" x="512" y="230" width="256" align="center" size="28" color="0xf0f6fa"]
[ptext layer="fix" fix="true" name="back_title_confirm_text" text="タイトルへ戻りますか？" x="390" y="300" width="500" align="center" size="17" color="0xf0f6fa"]
[glink fix="true" name="back_title_confirm_yes" text="YES" target="*yes" x="482" y="370" width="128" height="40" size="13" color="black" clickse="se/click.ogg"]
[glink fix="true" name="back_title_confirm_no" text="NO" target="*no" x="670" y="370" width="128" height="40" size="13" color="black" clickse="se/click.ogg"]
[s]

*no
[cm]
[clearfix]
[free_layermode time="100" wait="true"]
[showmenubutton]
[return]

*yes
[cm]
[clearfix]
[free_layermode time="100" wait="true"]
[stopse]
[stopbgm time=0 buf_all="true"]
@jump storage="title.ks"

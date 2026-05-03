;導入シーン

*intro

[cm]
[clearfix]
[start_keyconfig]

[bg storage="rouka.jpg" time="1200" method="crossfade"]

;導入ではメニューを隠して没入感を優先
@hidemenubutton

;メッセージウィンドウの設定（少し重めの余白）
[position layer="message0" left=0 top=550 width=1280 height=160 page=fore visible=true]
[position layer=message0 page=fore margint="16" marginl="0" marginr="0" marginb="20"]
@layopt layer=message0 visible=true

;無音寄りの立ち上がり
@stopbgm fadeout="1000"

;将来のログ改変を見据え、一部文を変数経由で表示
[iscript]
if (f.intro_visit_count === undefined) f.intro_visit_count = 0;
f.intro_visit_count += 1;
tf.discomfort_tier = (f.doubt >= 2) ? 2 : 1;

tf.intro_line_1 = "今夜の廊下は、";
if (f.intro_visit_count >= 2) {
    tf.intro_line_2 = "音が吸い込まれていく、みたいだった。";
} else {
    tf.intro_line_2 = "音が吸い込まれていくみたいだった。";
}
tf.intro_line_3 = "足を止めるたび、止めなければよかった気がする。";
[endscript]

#
[emb exp="tf.intro_line_1"]
[emb exp="tf.intro_line_2"][p]
[emb exp="tf.intro_line_3"][p]

[delay speed="48"]

[iscript]
tf.backlog_diff_display = "言い訳はいくつでも用意してきた。";
if (tf.discomfort_tier >= 2) {
    tf.backlog_diff_log = "言い訳はいくつでも、用意してきた。";
} else {
    tf.backlog_diff_log = "言い訳はいくつも用意してきた。";
}
[endscript]
[emb exp="tf.backlog_diff_display"][p]
[iscript]
if (tf.system && tf.system.backlog && tf.system.backlog.length > 0) {
    var _last_log_index = tf.system.backlog.length - 1;
    tf.system.backlog[_last_log_index] = tf.system.backlog[_last_log_index].replace(tf.backlog_diff_display, tf.backlog_diff_log);
}
[endscript]

[iscript]
tf.rewrite_line_initial = "それでも、扉の前に立つと";
if (tf.discomfort_tier >= 2) {
    tf.rewrite_line_later = "それでも、扉の前にいると";
    tf.rewrite_delay = 1500;
} else {
    tf.rewrite_line_later = "それでも、扉の前に立っていると";
    tf.rewrite_delay = 2600;
}
[endscript]
[emb exp="tf.rewrite_line_initial"]
[iscript]
setTimeout(function () {
    var _current_span = $(".message0_fore .current_span").last();
    if (_current_span.length > 0 && _current_span.text() === tf.rewrite_line_initial) {
        _current_span.text(tf.rewrite_line_later);
    }
}, tf.rewrite_delay);
[endscript]
[l]
どれも、役に立たない。[p]

;導入用のシンプルな選択肢（1つだけごく軽い文体ズレ）
[glink color="black" size="26" x="320" width="640" y="190" text="このまま帰る" target="*intro_choice_leave"]
[glink color="black" size="26" x="320" width="640" y="280" text="扉に触れる" target="*intro_choice_touch"]
[glink color="black" size="26" x="320" width="640" y="370" text="少しだけ聞き耳を立てる。" target="*intro_choice_listen"]
[s]

*intro_choice_leave
[iscript]
f.doubt += 1;
f.intro_choice = "leave";
f.intro_choice_label = "このまま帰る";

;行動/心理フラグ更新
f.feels_guilt = true;

tf.choice_result_line_1 = "帰る理由を探した。";
tf.choice_result_line_2 = "見つかったのは、戻れない理由だけだった。";
[endscript]
#
[emb exp="tf.choice_result_line_1"]
[emb exp="tf.choice_result_line_2"][p]
@jump target="*intro_outro"

*intro_choice_touch
[iscript]
f.complicity += 1;
f.intro_choice = "touch";
f.intro_choice_label = "扉に触れる";

;行動/心理フラグ更新
var _was_used_ability_shota = (f.used_ability_shota === true);
f.used_ability_shota = true;
tf.should_play_ability_fx = !_was_used_ability_shota;
f.has_crossed_line = true;

tf.choice_result_line_1 = "冷たい金属に触れた瞬間、";
tf.choice_result_line_2 = "指先だけが自分のものじゃないみたいに震えた。";
[endscript]
#
[if exp="tf.should_play_ability_fx"]
[call storage="effects.ks" target="*ability_activation_fx"]
[endif]
[emb exp="tf.choice_result_line_1"]
[wait time="180"]
[emb exp="tf.choice_result_line_2"][p]
[delay speed="48"]
@jump target="*intro_outro"

*intro_choice_listen
[iscript]
f.fear += 1;
f.dependence += 1;
f.intro_choice = "listen";
f.intro_choice_label = "少しだけ聞き耳を立てる";

;行動/心理フラグ更新
f.investigated_ayaka = true;
f.trust_megumi = true;

tf.choice_result_line_1 = "向こう側の気配は、";
tf.choice_result_line_2 = "沈黙よりわずかに重かった。";
[endscript]
#
[emb exp="tf.choice_result_line_1"]
[emb exp="tf.choice_result_line_2"][p]
@jump target="*intro_outro"

*intro_outro
[iscript]
if (f.fear >= 1 || f.doubt >= 1) {
    tf.outro_line = "静かにこちらを見ていた。";
} else {
    tf.outro_line = "静かに、こちらを見ていた。";
}

if (f.intro_choice === "leave") {
    if (f.doubt >= 2) {
        tf.trace_line = "「" + f.intro_choice_label + "」を選んだはずなのに、記憶の中では「このまま引き返した」に変わっている。";
    } else {
        tf.trace_line = "「" + f.intro_choice_label + "」を選んだはずなのに、「帰る」と言い直したくなる。";
    }
} else if (f.intro_choice === "touch") {
    if (f.doubt >= 2) {
        tf.trace_line = "「" + f.intro_choice_label + "」のはずなのに、あとからは「ノブに触れた」としか思い出せない。";
    } else {
        tf.trace_line = "「" + f.intro_choice_label + "」のはずなのに、あとからは「ノブに触れた」気がした。";
    }
} else {
    if (f.doubt >= 2) {
        tf.trace_line = "「" + f.intro_choice_label + "」だけのはずが、「声を探した」と言い換えるほうが近い。";
    } else {
        tf.trace_line = "「" + f.intro_choice_label + "」だけのはずが、「様子をうかがった」と言い換えたくなる。";
    }
}

;最小限の連動：心理フラグで語尾だけ変化
if (f.has_crossed_line === true) {
    tf.trace_line += " その境目を越えた感覚だけが、妙にはっきり残っている。";
}

;デバッグ確認用スナップショット（セーブデータにも保持）
f.debug_flags_snapshot = [
    "used_ability_shota=" + f.used_ability_shota,
    "used_ability_ayaka=" + f.used_ability_ayaka,
    "investigated_ayaka=" + f.investigated_ayaka,
    "feels_guilt=" + f.feels_guilt,
    "trust_megumi=" + f.trust_megumi,
    "has_crossed_line=" + f.has_crossed_line
].join(" / ");
console.log("[flag-debug] " + f.debug_flags_snapshot);
[endscript]
#
その夜、最初の違和感は
ただの気のせいという顔で、
[wait time="700"]
[emb exp="tf.outro_line"][p]
[emb exp="tf.trace_line"][p]

[s]

;デバッグ確認用（必要時に *debug_flags を jump/call して利用）
*debug_flags
#
現在のフラグ状態：[p]
[emb exp="f.debug_flags_snapshot"][p]
@return

*legacy_sample
[chara_mod  name="akane" face="happy"  ]
#あかね
わー。興味あるなんて、嬉しいなー。[p]
#
・・・・・[p]
まぁ、作ってみたい気持ちはあるけど、むずかしいんでしょ？[p]
プログラミングとかやったことないし、、、[p]

[chara_mod name="akane" face="default"]

#あかね
そんな君に、耳寄りな情報があるんだけど[p]
ききたい？　ききたいよね？[p]
#
いや、べつに
#あかね
[cm]
[font size=40]
[delay speed=160]
ティラノスクリプトー[p]
[delay speed=30]
[resetfont]

#
・・・・[p]
#あかね
ティラノスクリプトを使うと、簡単に本格的なノベルゲームが簡単に作れてしまうのよ。[p]
#
へぇー。それはちょっと興味あるね。[p]

[chara_mod  name="akane" face="happy"  ]
#あかね
ほ、ほんと！？[p]
このゲームをプレイするだけで、ティラノスクリプトの機能を確認することができるから[p]
ぜひ、最後までつきあってね[p]

まず、ティラノスクリプトの特徴として[font color="red"]「HTML5」[resetfont]で動作するよ[p]


#
つ、つまり？[p]
#あかね
一度ティラノスクリプトで作ったゲームは多くの環境で動作させることができるってこと！[p]
#
へぇー。それはいいね。[p]
せっかく作ったらたくさんの人に遊んでもらいたいもんね。[p]

#あかね
ウィンドウズ用のPCアプリケーションはもちろん。[p]
マック用のアプリケーションにだって対応するわよ。[p]
あと、HTML5だから、ブラウザゲームとしても発表できるわよ。[p]
ウェブサイトに貼り付けて遊んでもらえるから、気軽にゲームをプレイしてもらうことができるね。[p]
主要なブラウザはすべてサポートしているから、安心してね。[p]
#
やるなぁ。。[p]

でも、最近スマホが復旧してて、僕のサイトにもスマホで訪れる人が増えたんだけど[p]
スマホからは遊べない？[p]

#あかね
ティラノスクリプトで作ったゲームはスマートフォンからでも遊べるよ！[p]
アイフォーン、アンドロイドはもちろん。アイパッドとかのタブレットでも問題ないわ。[p]
#
おぉー。[p]

#あかね
AppStoreやGooglePlayに向けてアプリ化して販売することもできるから[p]
#
おぉぉ、、やっとの貧困生活から脱出できるかも[p]
#あかね
まぁ、おもしろいゲームつくらないと、売れもしないけどな！[p]
#
くっ。。[p]

#あかね
じゃあ、次に場面を移動してみるね[p]
廊下に移動するよ[p]
[bg  time="3000"  method="crossfade" storage="rouka.jpg"  ]

#
お、廊下に移動したね。[p]

#あかね
寒いよぉ〜。はやく教室に戻ろう。[p]

[bg  time="1000" method="slide"  storage="room.jpg" ]
#
あれ、今、場面の移動がちょっと違ったね。[p]
#あかね
うん。急いでたからね。[p]
ティラノスクリプトでは、いろいろな演出を加える事ができて[p]
画面を切り替えるだけでも１０種類以上の演出がつかえるよ。[p]
#
ふむ。便利だ[p]

#あかね
次にメッセージの表示方法を変えてみるね[p]
ティラノスクリプトでは、今みたいなアドベンチャーゲームの他に[r]
ビジュアルノベルのような全画面表示のゲームもつくれるよ。[p]

#

;キャラクター非表示
[chara_hide name="akane"]


;メッセージを全画面に切り替え
[position layer="message0" left=20 top=40 width=1200 height=660 page=fore visible=true ]

どうかな? 物語をじっくり読ませたい場合はこの方式が便利ですね[l][r]
ティラノスクリプトは非常に強力で、柔軟な表現が可能です。[l][cm]

[font size=40]文字のサイズを変更したり
[l][r]
[resetfont]
[font color="pink"]色を変更したり
[resetfont][l][r]

[ruby text=る]ル[ruby text=び]ビを[ruby text=ふ]振ることだって[ruby text=かん]簡[ruby text=たん]単にできます[l]
[cm]

;たて書きにする
[position vertical=true layer=message0 page=fore margint="45" marginl="0" marginr="70" marginb="60"]

このように縦書きで記述することもできます。[r][l]
縦書きでも、横書きの時と同じ機能を使うことができます。[r][l]

;横書きに戻す
[position vertical=false]

横書きと縦書きをシーンによって使い分けることもできます[r][l]
じゃあ、アドベンチャー形式に戻しますね[p]

;メッセージボックスを元に戻す
[position layer="message0" left=160 top=500 width=1000 height=200 page=fore visible=true]

@chara_show name="akane"

#akane
メッセージボックスは、自分の好きな画像を使うこともできるよ[p]



[font color="0x454D51"]
[deffont color="0x454D51"]


;名前部分のメッセージレイヤ削除
[free name="chara_name_area" layer="message0"]

;メッセージウィンドウの設定
[position layer="message0" width="1280" height="210" top="510" left="0"]
[position layer="message0" frame="frame.png" margint="50" marginl="100" marginr="100" opacity="230" page="fore"]

;名前枠の設定
[ptext name="chara_name_area" layer="message0" color="0xFAFAFA" size="28" bold="true" x="100" y="514"]
[chara_config ptext="chara_name_area"]



どうかな？[p]
ゲームに合わせて自分の好きなデザインを作ってくださいね[p]

あと、デフォルトだとセーブやロードは画面右下のボタンからできるけど[p]
ウィンドウをカスタマイズすれば、、、、[p]

;メニューボタン非表示
@hidemenubutton

;ロールボタン追加;;;;;;;;;;;;;;


; ロールボタン配置

;クイックセーブボタン
[button name="role_button" role="quicksave" graphic="button/qsave.png" enterimg="button/qsave2.png" x="40" y="690"]

;クイックロードボタン
[button name="role_button" role="quickload" graphic="button/qload.png" enterimg="button/qload2.png" x="140" y="690"]

;セーブボタン
[button name="role_button" role="save" graphic="button/save.png" enterimg="button/save2.png" x="240" y="690"]

;ロードボタン
[button name="role_button" role="load" graphic="button/load.png" enterimg="button/load2.png" x="340" y="690"]

;オートボタン
[button name="role_button" role="auto" graphic="button/auto.png" enterimg="button/auto2.png" x="440" y="690"]

;スキップボタン
[button name="role_button" role="skip" graphic="button/skip.png" enterimg="button/skip2.png" x="540" y="690"]

;バックログボタン
[button name="role_button" role="backlog" graphic="button/log.png" enterimg="button/log2.png" x="640" y="690"]

;フルスクリーン切替ボタン
[button name="role_button" role="fullscreen" graphic="button/screen.png" enterimg="button/screen2.png" x="740" y="690"]

;コンフィグボタン（※sleepgame を使用して config.ks を呼び出しています）
[button name="role_button" role="sleepgame" graphic="button/sleep.png" enterimg="button/sleep2.png" storage="config.ks" x="840" y="690"]

;メニュー呼び出しボタン（※ロールボタンを使うなら不要）
[button name="role_button" role="menu" graphic="button/menu.png" enterimg="button/menu2.png" x="940" y="690"]

;メッセージウィンドウ非表示ボタン
[button name="role_button" role="window" graphic="button/close.png" enterimg="button/close2.png" x="1040" y="690"]

;タイトルに戻るボタン
[button name="role_button" role="title" graphic="button/title.png" enterimg="button/title2.png" x="1140" y="690"]

;;ロールボタン追加終わり


こんな風にゲームに必要な機能を画面の上に持たせることも簡単にできるよ[p]
これはロールボタンといって、ボタンに特別な機能を持たせる事ができます。[p]
標準で用意されているのは、[l]
セーブ、[l]
ロード、[l][cm]
タイトルへ戻る、
メニュー表示、
メッセージ非表示、
スキップ、
バックログ、
フルスクリーン切り替え、
クイックセーブ、
クイックロード、
オートモード！
[p]

はぁ、はぁ[p]

#
大丈夫？[p]
これだけあれば、ゲームを作るには困らなそうだね[p]

#あかね
さて、もちろん音楽を鳴らすこともできるよ[l][cm]
それじゃあ、再生するよ？[l][cm]

[link target=*playmusic]【１】うん。再生してください[endlink][r]
[link target=*noplay]【２】いや。今は再生しないで！[endlink]
[s]

*playmusic

[cm]
よし、再生するよ。[l]
@playbgm time="3000" storage=music.ogg loop=true
徐々にフェードインしながら再生することもできるんだ[l][cm]

@jump target="*common_bgm"

*noplay
[cm]
うん。わかった。再生はしないね。[l][cm]
また、試してみてね[l][cm]

*common_bgm

あ、そうそう[l][cm]
今みたいな選択肢で物語を分岐することも、簡単にできるよ。[l][cm]

#あかね
ここらで、別のキャラクターに登場してもらいましょうか[l][cm]
やまとー[p]
[chara_show name="yamato"]

こんな風に。簡単です。[l][r]
キャラクターは何人でも登場させることができるから、試してみてね。[p]

#yamato
おい、俺もう、帰っていいかな？[l][cm]

#akane
あ、ごめんごめん。ありがとう[l][cm]

[chara_hide name="yamato"]

#akane
これでティラノスクリプトの基本機能の説明は終わりだけど[p]
どうだったかな？[p]

#
うん、これなら自分でも作れそうな気がしてきたよ[p]

#あかね
よかった！[p]
最初は、ティラノスクリプト公式ページのチュートリアルをやってみると良いと思うよ！[p]
もちろん、このゲームもティラノスクリプトで動いてるから、参考になると思うし。[p]
ぜひ、ゲーム制作にチャレンジしてみてね[p]
プレイしてくれてありがとう。[p]

最後にティラノスクリプトで役立つ情報へのリンクを表示しておくから
確認してみてね。[p]

[cm]

*button_link

@layopt layer=message0 visible=false
@layopt layer=fix visible=false
[anim name="akane" left=600 time=1000]

;リンクボタンを表示
[glink text="ティラノビルダーの紹介" size=20 width=500 x=30 y=100 color=blue target=tyranobuilder ]
[glink text="制作事例" size=20 width=500 x=30 y=160 color=blue target=example ]
[glink text="応用テクニック" size=20 width=500 x=30 y=220 color=blue target=tech ]
[glink text="役に立つ情報源" size=20 width=500 x=30 y=280 color=blue target=info ]
[glink text="タグリファレンス" size=20 width=500 x=30 y=340 color=blue target=tagref ]

[s]

*tyranobuilder

[cm]
@layopt layer=message0 visible=true
@layopt layer=fix visible=true;
[font color-"red"]
「ティラノビルダー」
[resetfont]
という無料の開発ツールもあります。[p]

[image layer=1 page=fore visible=true top=10 left=50 width=560 height=400  storage = builder.png]

これは、グラフィカルな画面でノベルゲームを作れるツールです[p]
スクリプトが苦手な人でもゲーム制作を行うことができるからぜひ試してね。[p]
[freeimage layer=1]

@jump target=button_link

[s]
*example
@layopt layer=message0 visible=true
@layopt layer=fix visible=true
これまで、ティラノスクリプトを使って沢山のゲームが作成されています。[p]
一部の制作事例を公式サイトに乗せているのでよければ確認してくださいね。[p]

[iscript]
window.open("http://tyrano.jp/home/example");
[endscript]

@jump target=button_link

[cm]
[s]

*tech
@layopt layer=message0 visible=true
@layopt layer=fix visible=true
このサンプルでは、ティラノスクリプトのごく一部の機能しか紹介できていません[p]
さらに出来ることを知りたい場合、スクリプトを丸ごとダウンロードできるようになっているので[p]
そのサンプルを触ってみることをオススメします！[p]

[iscript]
window.open("http://tyrano.jp/home/demo");
[endscript]

@jump target=button_link


*info
@layopt layer=message0 visible=true
@layopt layer=fix visible=true
ティラノスクリプトでわからないことがあったら[p]
公式掲示板で質問したり、Wikiなどもありますので参考にしてみてください[p]
@jump target=button_link

*tagref
@layopt layer=message0 visible=true
@layopt layer=fix visible=true
タグは詳細なリファレンスページが用意されています。[p]
このページでさらに詳細な使い方を身につけてください[p]

[iscript]
window.open("http://tyrano.jp/home/tag");
[endscript]

@jump target="*button_link"

[s]

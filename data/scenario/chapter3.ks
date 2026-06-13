;第3章
;========================
; CHAPTER 3 演出版（chapter1,2準拠）
;========================

*ch3_start
*chapter3

[cm]
[chara_hide_all]
[clearfix]
[start_keyconfig]

; 追加した演出意図: 章冒頭は黒背景と短い待ちで、前章からの余韻を残して静かに始める。
[bg storage="black.png" time=0 wait=false]
[font speed=50]

第3章[p]

[wait time=800]

*ch3_convenience_store

; 追加した演出意図: 夜の外気と犯行前の緊張を、夜背景・虫の音・低いBGMで抑えて立ち上げる。
[bg storage="bg_station_night.webp" time=800]
[playse storage=se/traindoor.ogg volume=40]
[playbgm storage="tension_low.ogg" loop=true volume=30 fadein=true time=1200]
数日後の放課後、拓海は一度家に帰り、夕飯を済ませてから、[r]
「勉強をしてくる」と告げて外に出た。[p]

夜の空気はひんやりと冷たく、[r]
彼の心臓は次第に高鳴っていく。[p]

[wait time=600]

自分がこれから行おうとしていることの重大さが、[r]
徐々に実感として迫ってきていた。[p]

[wait time=700]

[bg storage="bg_convenience_store_night.webp" time=800]
綾香のバイト先の北口のコンビニに着いた頃、[r][l]
時刻はすでに二十時を過ぎていた。[p]

住宅街の小さなコンビニは、[r]
街灯の薄暗さと相まって、異様に目立って見えた。[p]

[wait time=400]
[auto_chara name="拓海" face="convenience"]
[playse storage=se/megane_and_hat.ogg volume=40]
準備してきた深めのバケットハットを被り、サングラスをかける。[p]

マスクまでするのは不自然かもしれない、と一瞬思ったが、[r][l]
状況に応じて調整するつもりだった。[p]

拓海はすぐに店内には入らず、スマホをいじるフリをして様子を伺う。[p]

コンビニのガラス越しに、[r]
綾香がレジの後ろに立っているのが見えた。[p]

「いたな……」[p]
ここまでは想定通り。[r][l]綾香のバイトのシフトを割り出すのは比較的簡単なことだった。[p]

綾香はいつも決まった曜日にバイトをしていたからだ。[p]

進学校でもある黒森学園では、アルバイトをしている生徒自体が珍しい。[r][l]
何か欲しいものでもあるのだろうか。[p]

[auto_chara name="綾香" face="convenience"]
彼女は無表情で、どこか気だるそうな様子だ。[p]

客に愛想を振りまくことも無く、淡々と袋詰めをしている。[p]
[wait time=500]
そういえば屋上以外で彼女が笑っているのを見た事がない気がする。[p]

ふとそんなことを考えた。[p]

何人か客が入っていくのを拓海は見送ったが、[r]
来店客には全く関心がない様子だ。[p]

拓海は安堵した。[p]

[wait time=500]

これならバレる心配はなさそうだ。[p]
[chara_hide_all time=300]
[playse storage=se/convenience_door.ogg volume=25]
[wait time=400]
[bg storage="bg_convenience_inside_night.webp" time=800]
拓海は店内に入り、商品棚を物色するふりをしながら、[r]
綾香の様子を窺った。[p]

店内は拓海の他に来店客が何人かいたが、[r]
あまり長居しても不審がられて目立ってしまうかもしれない。[p]

レジから死角になる位置に移動して心を落ち着かせる。[p]
[wait time=1000]
目の前の雑誌コーナーで、さほど興味のない本に手を伸ばした。[p]
[wait time=1000]
ここで店内の客がいなくなるタイミングを見計らうことにする。[p]

[wait time=500]

その時、バックヤードから肥満体の中年男性が現れた。[p]

「来たな」[l][r]
拓海はその人物を知っていた。[p]

このコンビニの店長だ。[p]
彼は、ある意味で今回の作戦の重要人物であるため、特徴をしっかり把握しておく必要があった。[p]

拓海は綾香のシフトではない日に、何度かこのコンビニに下見に来ていたのだ。[p]

彼はカゴいっぱいの商品を持ち、補充を始めた。[p]

; 追加した演出意図: 嫌悪のきっかけは大きな音ではなく、短い間で不快感を強める。
[wait time=600]

強烈な汗の匂いが漂い、拓海は思わず眉をひそめた。[p]

マスクをしてこなかったことを後悔するほどだった。[p]

[wait time=600]

綾香が嫌悪する理由もわかってしまうな……。[p]

[wait time=500]

綾香が不潔な店長に悩まされている、[r]
と愚痴をこぼしていたことを思い出す。[p]

拓海はその店長をよく観察した。[p]

年齢は40代で、身長は170cmくらいだろうか。[p]

髪は短髪で、細く薄くなった毛のせいで、地肌が目立っていた。[p]

制服から覗く腕には太い毛がビッシリと生えており、かなり毛深い。[p]

[wait time=500]

このコンビニは「バイトが黒髪の女の子ばかりで不思議だ」と、[r][l]
噂になっていたらしい。[p]

それは不思議でも何でもない話で、[r][l]
ただ単純に店長の趣味なのだと綾香は言っていた。[p]

店長は女子バイトを自分好みの大人しそうな子だけを採用している。[p]

綾香は、店長が自分のシフトの日だけ、やたら店に出てくるのが気持ち悪いと漏らしていた。[p]

綾香はどうやら店長のお気に入りらしかった。[p]

拓海はその店長を目の端で捉えながら、[r][l]
頭の中で綾香へ見せる「幻」のイメージをさらに膨らませた。[p]

[wait time=600]

これは彼女にとって、最も不快で、おぞましい結果をもたらすだろう。[p]

[wait time=700]

10分程度待っただろうか。[p]
店内の客も残り一人になった。[p]
[wait time=700]
スーツ姿の男が、缶チューハイを二本と、[r]
小さなショートケーキをレジに置いた。[p]
[wait time=700]
年齢は三十代前半くらいだろうか。[r][l]
疲れた顔をしているが、どこか足取りは軽い。[p]
[wait time=700]

恋人と酒でも飲むのだろうか。[p]

[wait time=700]

彩香は無言でバーコードを通し、[r][l]
男は「どうも」とだけ言って店を出ていった。[p]
[playse storage=se/convenience_door.ogg volume=15]
[wait time=700]
自動ドアの開閉音が遠ざかる。[p]
[wait time=700]
店内が静かになる。[p]
[wait time=700]
今ならいける……。[p]

[wait time=500]

; 追加した演出意図: 実行直前だけ鼓動SEを足し、生活音から内面音へ寄せる。
[fadeoutbgm time=700]
[playse storage=se/heartbeat.ogg loop=true volume=50 fadein=true time=500]
拓海は小さく息を吸い込み、レジに向かった。[p]

[auto_chara name="綾香" face="convenience"]
綾香は依然として覇気のない様子で、[r]
店内の空気は重い。[p]

手にしたお茶とおにぎりを二個持って、レジに並んだ。[p]

これも、別に必要なものではなかったが、[r][l]
一番印象に残らなそうな商品を拓海なりに考えたものだった。[p]

綾香の細い腕が淡々と作業を続ける姿を見て、[r]
拓海は意を決した。[p]

[auto_chara name="拓海" face="convenience"]
「袋、一番小さいのでお願いします」[l]
拓海はいつもより低い声で、静かに言った。[p]

[auto_chara name="綾香" face="convenience"]
「承知しました」[p]
[playse storage=se/in_plastic_bag.ogg volume=50]
[wait time=500]
綾香は無機質な声で答え、商品をビニール袋に詰め始めた。[p]
[wait time=500]
彼女の手が自然に動くたびに、拓海の心拍は速くなる。[p]

[chara_hide_all time=300]
[wait time=500]

いよいよだ、と拓海は覚悟を決めた。[p]
[wait time=500]
翔太の時とは違う。[p]
[wait time=500]
あれは偶然だった。[p]
[wait time=500]
だが今回は、自分の意思でやる。[p]
[wait time=500]
少しの躊躇いはあったが、[r][l]
自分自身を守るために必要なことなのだ。[p]

[wait time=700]

やるしかない――。[p]

[wait time=500]

拓海は全神経を集中させた。[p]

[wait time=600]

綾香の手が袋を差し出す時、[r][l]
拓海は意図的に彼女の手に軽く触れた。[p]

; 追加した演出意図: 力の発動は無音化を主役にするため、BGM/SEを止めて黒フェードで一拍置く。
[stopse fadeout=600]
[fadeoutbgm time=700]
[bg storage="white.png" time=50]
[wait time=40]
[bg storage="black.png" time=70]
[wait time=40]
[bg storage="white.png" time=30]
[wait time=30]
[bg storage="black.png" time=300]

その瞬間、世界が静まり返った。[p]

[wait time=900]

やった……成功だ。[p]

[wait time=700]

目の前の世界が無音に包まれる。[p]

[bg storage="ch3_convenience_touch.webp" time=900]
綾香は動きを止め、目を見開いたまま、[r][l]
時間が止まったように固まっている。[p]

[wait time=900]

そして、その無音の世界の中で、[r][l]
店長がゆっくりと綾香の方へ近づき始める。[p]

ここは綾香と店長だけの世界だ。[p]

[wait time=800]

店長は、じっと綾香を見つめながら、[r][l]
ゆっくりとその手を伸ばした。[p]

[bg storage="white.png" time=80]
[wait time=100]
[bg storage="black.png" time=300]
[wait time=1000]
拓海はその光景を見つめながら、[r][l]
自分が作り出したこの幻覚の中に、確かな力を感じていた。[p]

[wait time=900]

*ch3_classroom_after

; 追加した演出意図: 場面転換は黒を挟み、事件後の時間経過を淡々と示す。

[bg storage="bg_classroom_day.webp" time=800]
[playbgm storage="classroom_buzzing.ogg" loop=true volume=30 fadein=true time=800]
10月に入り、秋の冷たい風が学校の校庭に吹き始めていた。[p]

朝晩は上着が必要なくらい涼しくなり、[r][l]
教室の窓から見える木々の葉も少しずつ色づいている。[p]

あの日以来、綾香は学校に姿を見せていない。[p]

[wait time=600]

だが、不思議なことに、大きな噂話にもなっていなかった。[p]

それが翔太の時とは違うところだ。[p]

[wait time=500]

龍也は相変わらず拓海を呼び出してはくるが、[r][l]
彼もどこか元気がないように見えた。[p]

綾香のことが影響しているのかもしれない。[p]

案の定、龍也は綾香が学校に来ない理由について拓海を問い詰めてきたが、[r][l]
もちろん証拠などあるはずがない。[p]

拓海は内心ほくそ笑んでいた。[p]

[wait time=500]

どうせ次はお前だ。[l]
何も問題はない。[p]

[wait time=700]

拓海は自分の中で何かが変わったことを感じていた。[p]

力を手に入れたことで自信を取り戻し、[r][l]
以前よりもクラスメイトとコミュニケーションを取ることができるようになっていた。[p]

クラスメイトは、拓海が龍也たちと「つるんでいる」と思っているようで、[r][l]
彼がいじめられている事実には気付いていない。[p]

それでも、最近の拓海の雰囲気が少し明るくなったことに安心したのか、[r][l]
クラスメイトたちは以前よりも積極的に彼と話すようになっていた。[p]

[wait time=500]

この居心地、悪くないな……。[p]

[wait time=600]

拓海は一瞬、自分がこのままクラスでの居場所を確保できるような気がした。[p]

だが、すぐに冷静な自分がその考えを打ち消す。[p]

ぬるま湯に浸かっていてはダメだ。[p]

龍也が次に何をしてくるかわからない以上、先手を打つ必要がある。[p]

彼のことをもっと調べなければならない。[p]

しかし、龍也と接点がある生徒など、思い当たる人物はいない。[p]

どうしたものかと、休み時間に机に肘をついて考え込んでいたその時だった。[p]

[wait time=500]

[auto_chara name="恵" face="serious"]
「永山君、今日放課後少し時間ある？」[p]

声に驚いて顔を上げると、[r]
恵が緊張した面持ちで横に立っていた。[p]

[auto_chara name="拓海" face="level2_normal"]
「うん、大丈夫だけど」[p]

[auto_chara name="恵" face="serious"]
「そっか。ありがとう」[p]

[auto_chara name="拓海" face="level2_normal"]
「何か用事だった？」[l]
一体何の要件なんだろうか。[p]

[auto_chara name="恵" face="serious"]
「綾香の件で、聞きたいことがあるんだ」[p]
[fadeoutbgm time=4000]
彼女からはいつもの柔らかい雰囲気は消え、[r][l]
何かを決意しているような表情だ。[p]

「放課後、駅前のカラオケで待ち合わせしよう」[p]

[chara_hide_all time=300]
短い言葉を残して、恵はそのまま教室を出て行った。[p]

拓海はしばらくその場で呆然とした。[p]

胸の奥に不安が広がる。[p]

[playbgm storage="suspense.ogg" loop=true volume=35 fadein=true time=1000]
[wait time=700]

綾香の件？[l]
何を聞きたいんだ……？[p]

その後の授業は一切頭に入ってこなかった。[p]

何度も悪い想像が頭をよぎり、[r]
そのたびに冷や汗が背中を流れる。[p]

大丈夫だ。[l]
法には触れていない。[l]
何も証拠はない……。[p]

自分にそう言い聞かせても、[r]
不安は完全に拭い去れなかった。[p]

[stopbgm fadeout=4000]
[wait time=4000]

*ch3_karaoke

[bg storage="ch3_karaoke_talk.webp" time=800]
[playbgm storage="airconditioner.ogg" loop=true volume=35 fadein=true time=1000]
[playse storage=se/karaoke_sound.ogg loop=true volume=20 fadein=true time=500]

「実は、この前、綾香がバイトするコンビニに永山君が入っていくのを見かけたの」[p]

駅近くのカラオケの個室に入って席に着くなり、[r]
恵は拓海に向かって話し始めた。[p]

彼女の表情は、どこかいつもとは違う緊張感が漂っている。[p]
[bg storage="bg_karaoke.webp" time=800]
[auto_chara name="恵" face="serious"]
「私、そのすぐ近所に住んでて……[l]
永山君、変装してたでしょ？」[p]

[chara_hide_all time=300]
[wait time=700]

拓海は何も応えられず、ただ黙っていた。[p]

思いもよらない言葉が、頭の中でこだまする。[p]

[wait time=700]

見られていた……？[p]

[wait time=700]

[auto_chara name="恵" face="serious"]
「でも、すぐに歩き方でわかったよ。[l]
ちょっと猫背で下を見て歩く癖、あるもんね？」[p]

恵は、何の疑いもなく話を続けた。[p]

「外から見てたんだけど、永山君、全然気づかないんだもん」[p]

[chara_hide_all time=300]
確かに、その時、回りを気にする余裕などは無かった。[p]

拓海は心の中で恵の指摘を思い返す。[p]

彼女の言葉が鋭く響いた。[p]

[wait time=600]

[auto_chara name="恵" face="serious"]
「それで、永山君がコンビニから出た後、私も店に入ってみたの。[l]
そしたら、綾香が私を見るなり急に泣き出して……」[r][p]
[stopbgm]
[stopse]
[playbgm storage="suspense.ogg" loop=true volume=35 fadein=true time=1000]
[auto_chara name="恵" face="pain"]
[delay speed="90"]
「店長にレイプされたって言ったのよ」[p]
[resetdelay]
[chara_hide_all time=300]
[auto_chara name="拓海" face="level2_normal"]
「……。」[p]
[wait time=2000]
ここまでは計画通りだ……。[p]

拓海は冷静さを保とうと努めた。[p]

自分が作り出した幻覚の中で、[r]
綾香が店長に襲われる光景を描いていたのだから。[p]

[auto_chara name="恵" face="sad"]
「綾香、すごく震えてて……[l]
とにかく警察を呼ぶしかなかったの」[p]
[fadeoutbgm time=4000]
[chara_hide_all time=300]
[wait time=800]

警察……？[p]

[wait time=800]

; 追加した演出意図: 想定外の単語で鼓動を再投入し、音量は控えめにして焦燥だけを出す。
[playbgm storage="airconditioner.ogg" loop=true volume=35 fadein=true time=1000]
[playse storage=se/heartbeat.ogg loop=true volume=40 fadein=true time=500]
その言葉に、拓海は顔が青ざめた。[p]

心臓が鼓動を強め、体中に血が駆け巡る。[p]

警察を呼んだだって……。[p]

[auto_chara name="恵" face="serious"]
「店長は警察に事情聴取されたんだけど、[r][l]
監視カメラを確認してくれって言ってね」[p]

[chara_hide_all time=300]
くそっ……監視カメラか！[p]

[wait time=600]

拓海は胸の中で叫んだ。[p]

監視カメラの存在を忘れていたわけではないが、[r]
そこまで細かく確認されるとは思っていなかった。[p]

映像には、自分がレジで綾香に話しかけ、[r]
商品を買う様子が写っているはずだ。[p]

[auto_chara name="恵" face="serious"]
「でも、監視カメラには、[r][l]
綾香がいきなり泣き出すだけの映像しか残ってなかった。[l]
店長の疑いは晴れて……」[p]

[chara_hide_all time=300]
恵は淡々と話しているが、[r]
拓海は頭の中が真っ白になっていた。[p]

事態がここまで大きくなっているとは想像もしていなかった。[p]

[auto_chara name="恵" face="sad"]
「警察の人も、私たちが店長を陥れようとしたんじゃないかって少し疑ってたみたいだけど……[l]
結局はそれ以上何も聞かれなかった」[p]

[chara_hide_all time=300]
拓海は、恵の話に耳を傾けながら、ただ黙り込んでいた。[p]

彼女が何を知っているのか、[r][l]
どこまで理解しているのか、答えを見つけられない。[p]

[wait time=700]

[auto_chara name="恵" face="serious"]
「永山君、何か知ってるんじゃないの？」[p]

[chara_hide_all time=300]
彼女の真剣な視線に、拓海は無言で応じるしかなかった。[p]
[wait time=1000]
[fadeoutbgm time=1000]
[playse storage=se/knock_door.ogg volume=75] 
[wait time=500]
[playse storage=se/roof_door.ogg volume=75] 
[playbgm storage="airconditioner.ogg" loop=true volume=35 fadein=true time=1000]
その時、部屋のドアがノックされ、[r]
店員が注文していたアイスコーヒーをテーブルに置いていった。[p]

冷たいコーヒーは何だか味がしない感じがした。[p]

どこかの部屋から聞こえてくる下手な歌声が、[r][l]
静かな空間に響いている。[p]

[wait time=600]

[auto_chara name="恵" face="sad"]
「私、永山君が、綾香たちのグループにいいようにされていること、知ってたよ。」[p]
「北川龍也、佐田翔太、上田綾香の3人組でしょ。」[p]
「クラスのみんなも、きっと気付いていたけど、誰も触れたくなかったんだと思う」[p]

[auto_chara name="拓海" face="level2_normal"]
「……気付かれていたのか」[p]

久しぶりに口を開いた拓海の声は、[r]
どこかしら力なく響いた。[p]

[auto_chara name="恵" face="pain"]
「うん。何も力になれなくて、ごめんね」[p]

恵は申し訳なさそうに視線を下げたが、[r]
再び神妙な顔をして話を続けた。[p]

[auto_chara name="恵" face="serious"]
「それでね……[l]
あの日、コンビニで永山君を見かけた時、[r][l]
何かしようとしてるんじゃないかって思ったの」[p]

彼女は、ちらっと拓海の方を見てから言葉を続けた。[p]

「それに、佐田君がしばらく学校に来なくなったのも、[r]
ちょっと話題になったじゃない？」[p]
「彼が、『罰が当たった。酷い夢を見たんだ』って周りに言ってたらしくて……[r][l]
それを聞いて、綾香のことと重なって、永山君が何か知ってるに違いないって思ったの」[p]

[chara_hide_all time=300]
あの日見られていたことで、[r]
翔太の話まで繋がってしまったのかと拓海は驚いた。[p]

恵の話を聞きながらも、話の途中で拓海は観念していた。[p]

自分のいじめを理解している人間がいたという安堵が、[r]
彼を安心させていたのもあったし、[r][l]
もう言い逃れをするのも苦しくなってきていた。[p]

言って楽になってしまいたいという気持ちになっていた。[p]

[stopse fadeout=1000]
[wait time=900]

[auto_chara name="拓海" face="level2_depressed"]
「俺がやった。[l]想像の通りだよ」[p]

その言葉が口をついて出た瞬間、[r]
部屋の空気が静まり返った気がした。[p]

恵はすぐには何も言わなかった。[p]

唇に拳を当てたまま、[r]
じっと拓海を見つめている。[p]
[playbgm storage="airconditioner.ogg" loop=true volume=35 fadein=true time=1000]
繰り返し流れるカラオケの宣伝動画が、静かな部屋に響いている。[p]

[auto_chara name="恵" face="serious"]
「やっぱりそうなんだね……」[p]

責めるような口調ではなかった。[p]

むしろ、
何かを確かめるような声音だった。[p]

「でも、どうやって？」[p]

[chara_hide_all time=300]

至極まっとうな質問だった。[p]

拓海は少し俯き、
ゆっくりと口を開いた。[p]
[auto_chara name="拓海" face="level2_normal"]
「最初は、俺も何が起きたのかわからなかったんだ」[p]
[chara_hide_all time=300]
屋上で、自分自身に幻覚を見せてしまったこと。[p]

飛び降りて、
地面に叩きつけられる感覚まで、
はっきり体験したこと。[p]

そのあと、
翔太に触れた瞬間、
時間が止まったみたいになったこと。[p]

そして――。[p]

拓海は、
今まで自分に起きていたことを、
少しずつ話し始めた。[p]

屋上に呼び出されていたこと。[p]

殴られていたこと。[p]

金を取られていたこと。[p]

クラスの誰も助けてくれなかったこと。[p]
[auto_chara name="恵" face="pain"]
「そんな……」[p]

恵の小さな声が漏れる。[p]

「先生は？」[p]
[auto_chara name="拓海" face="level2_depressed"]
「気付いてたと思う」[p]

拓海は乾いた笑みを浮かべた。[p]

「でも、
面倒事に関わりたくなかったんじゃないかな」[p]

少し沈黙が流れる。[p]

カラオケのリモコンのランプだけが、
ぼんやりと光っていた。[p]

「なんていうか……」[p]

拓海は言葉を探すように、
テーブルへ視線を落とした。[p]

「毎日、
少しずつだったんだ」[p]

「だから、
途中から何が普通なのか、
よくわからなくなってた」[p]

自分でも驚くくらい、
言葉が自然に口から出ていた。[p]

今まで、
誰にも話したことがなかったからかもしれない。[p]

恵は途中で茶化すことも、
疑うこともしなかった。[p]

ただ静かに、
拓海の話を聞いていた。[p]

[auto_chara name="恵" face="pain"]
「本当に酷いことをされてたんだね……」[l]

恵は絶句した。[p]

[wait time=500]

[auto_chara name="恵" face="surprise"]
「あれ、じゃあ何で今、力を使わなかったの？」[p]

[auto_chara name="拓海" face="level2_surprise"]
「え？　どういうこと？」[p]

[auto_chara name="恵" face="serious"]
「私にその力を使って、この場を切り抜けることだってできそうじゃない」[r][l]
恵はさらっと恐ろしいことを言う。[p]

[auto_chara name="拓海" face="level2_panic"]
「いやいや。[l]
俺だって好き好んで人を傷付けたいわけじゃないんだよ。[r][l]
こんな目に遭ってなかったら、あいつらにだってきっと使ってなかったと思う」[p]

それにまだよくわからないこともあるんだ、と付け加える。[p]

[chara_hide_all time=300]
そのあと、二人はお互いに気になっていたことを質問し合い、[r]
会話が進む中で、拓海はとうとう核心を突いた。[p]

[auto_chara name="拓海" face="level2_normal"]
「それで……今日呼び出した目的は何なの？[l]
探偵ごっこが趣味ってわけじゃないでしょ？」[p]

[auto_chara name="恵" face="laugh"]
恵は「案外好きかもよ」と言って大袈裟に笑って見せた。[p]

[wait time=400]

[auto_chara name="恵" face="serious"]
そして、真っすぐ拓海を見て言った。[p]

「実は、永山君に助けてもらえるんじゃないかって思ったの」[p]

[auto_chara name="拓海" face="level2_surprise"]
「助ける？　誰を？」[p]

[auto_chara name="恵" face="sad"]
「うちのお母さん。」[l]

恵はそう言ってから、少しだけ言葉を止めた。[p]

「職場の上司から、ずっと酷いことされてるみたいで……」[p]

拓海は眉をひそめた。[p]
[auto_chara name="拓海" face="level2_normal"]
「酷いことって？」[p]
[chara_hide_all time=300]

恵はすぐには答えなかった。[p]

どこかの部屋から、
音程の外れたバラードが聞こえてくる。[p]

恵はアイスコーヒーのストローを指で弄びながら、
小さく息を吐いた。[p]

[auto_chara name="恵" face="sad"]
「身体の関係を迫られてるの」[p]
[playbgm storage="suspense.ogg" loop=true volume=35 fadein=true time=1000]
[auto_chara name="拓海" face="level2_surprise"]
拓海は言葉を失った。[p]

[auto_chara name="恵" face="serious"]
「断ってるんだけど、ずっとしつこくて……最近は脅すみたいなことまで言われてるみたい」[p]

[chara_hide_all time=300]
恵はスマホを取り出し、
テーブルの上にそっと置いた。[p]

画面には、高田隆二という名前と、
大量のメッセージが並んでいる。[p]

『また無視か？』[p]

『お前が困ることになるぞ』[p]

『そろそろ観念しろ』[p]

拓海は無言で画面を見つめた。[p]
[auto_chara name="拓海" face="level2_normal"]
「……警察とかには？」[p]
[auto_chara name="恵" face="serious"]
「多分無理だと思う」[p]

恵は首を横に振る。[p]

「会社の中でも立場がある人みたいだし、お母さんも騒ぎを大きくしたくないんだと思う」[p]
[auto_chara name="拓海" face="level2_normal"]
「なんで、そこまで我慢してるんだろ」[p]
[auto_chara name="恵" face="serious"]
「仕事辞められないから、かな……」[p]
[auto_chara name="恵" face="troubled_smile"]
そこで恵は少し困ったように笑った。[p]
[fadeoutbgm time=4000]
「うち、母子家庭なんだよね」[p]
[auto_chara name="拓海" face="level2_depressed"]
「……あ」[p]

拓海は思わず視線を逸らした。[p]

「ごめん」[p]
[auto_chara name="恵" face="normal"]
「ううん、気にしなくていいよ」[p]

恵は柔らかく笑った。[p]

「私が小さい頃に亡くなったの。だから、お母さん一人でずっと働いてきたんだ」[p]

[playse storage=se/iced_cofee.ogg volume=75 buf=1]

氷が、カランと小さく鳴った。[p]

「黒森に通えてるのも、お母さんのおかげだし。だから……無理してるのも、わかるんだよね」[p]

恵はスマホの画面を見つめながら呟いた。[p]
[auto_chara name="恵" face="sad"]
「でも、このままだと本当に壊れちゃいそうで……」[p]
[chara_hide_all time=300]
その声は、
今にも消えてしまいそうなくらい小さかった。[p]

拓海は再びスマホへ目を落とす。[p]

そこに並ぶ言葉には、
ただの嫌がらせでは済まない、
粘つくような悪意が滲んでいた。[p]
[auto_chara name="拓海" face="level2_normal"]
「それで、俺に何をしてほしいの？」[p]

恵は静かに顔を上げた。[p]
[auto_chara name="恵" face="serious"]
「高田を止めてほしいの」[p]

真っ直ぐな目だった。[p]

「お母さんを、助けたい」[p]

[chara_hide_all time=300]
拓海はその言葉を聞き、再び画面に目をやった。[p]

恵の母親を救うために自分ができることを考える。[p]

今までのように復讐心から力を使うのではなく、[r]
誰かを助けるために。[p]

[fadeoutbgm time=4000]
[wait time=1000]

しばらくの沈黙の後、拓海は深く息を吐いた。[p]

そして、ゆっくりと口を開いた。[p]

[wait time=500]

[auto_chara name="拓海" face="level2_normal"]
「よし、お母さんを助けよう」[p]

[chara_hide_all time=300]
その言葉が口をついて出た瞬間、[r]
拓海の胸の中に新たな感情が生まれた。[p]

自分の力が、ただ復讐だけでなく、[r]
人を救うためにも使えることに、初めて気付いたのだ。[p]

心の中で膨れ上がる新たな決意が、[r]
彼を静かに満たしていった。[p]

; 追加した演出意図: 重い会話の終わりに環境音だけを残し、日常へ戻る微かな救いを出す。
[wait time=700]

どこかの部屋から聞こえてくる下手くそな歌が、[r]
今度は不思議と心地よく響いていた。[p]

[wait time=800]

@jump storage="chapter4.ks" target="*chapter4"

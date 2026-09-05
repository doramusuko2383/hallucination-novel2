;第3章
;========================
; CHAPTER 3 演出版（chapter1,2準拠）
;========================

*ch3_start
*chapter3
[scene_title title="第3章"]

[cm]
[chara_hide_all]
[clearfix]
[start_keyconfig]
[showmenubutton]

[chapter_title number="第三章" title="邂逅"]
[font speed=50]

*ch3_convenience_store

; 追加した演出意図: 夜の外気と犯行前の緊張を、夜背景・虫の音・低いBGMで抑えて立ち上げる。
[bg storage="black.png" time=2000]
[wait time=500]
[bg storage="bg_station_night.webp" time=800]
[playse storage=se/traindoor.ogg volume=100]
[playbgm storage="tension_low.ogg" loop=true volume=100 fadein=true time=1200]
数日後の放課後、拓海は一度家に帰り、夕飯を済ませてから、[r]
「勉強をしてくる」と告げて外に出た。[p]

玄関の扉を閉める直前、明るい居間からテレビの笑い声が漏れてきた。[p]

いつもなら気にも留めない音だった。[l][r]
今夜の自分だけが、家の中の日常から切り離されていくように聞こえた。[p]

夜の空気はひんやりと冷たく、[r]
拓海の心臓は次第に高鳴っていく。[p]

[wait time=500]

自分がこれから行おうとしていることの重大さを、[r]
徐々に実感し始めていた。[p]

ポケットの中で、何度も右手を開いては握る。[l][r]
綾香へ触れるための手は、夜気に冷えているのに汗ばんでいた。[p]

[wait time=500]

[bg storage="bg_convenience_store_night.webp" time=800]
北口にある、綾香のバイト先のコンビニに着いた頃、[r][l]
時刻はすでに20時を過ぎていた。[p]

住宅街の小さなコンビニは、[r]
街灯の薄暗さと相まって、異様に目立って見えた。[p]

[wait time=500]
[auto_chara name="拓海" face="convenience"]
[playse storage=se/megane_and_hat.ogg volume=100]
用意してきた深めのバケットハットを被り、サングラスをかける。[p]

マスクまでするのは不自然かもしれない、と一瞬思ったが、[r][l]
状況に応じて調整するつもりだった。[p]

拓海はすぐに店内には入らず、スマホをいじるふりをして様子を窺う。[p]

コンビニのガラス越しに、[r]
綾香がレジの後ろに立っているのが見えた。[p]

「いたな……」[p]

ここまでは想定通り。[r][l]綾香のバイトのシフトを割り出すのは比較的簡単なことだった。[p]

綾香はいつも決まった曜日にバイトをしていたからだ。[p]

進学校でもある黒森学園では、アルバイトをしている生徒自体が珍しい。[r][l]
何か欲しいものでもあるのだろうか。[p]

[auto_chara name="綾香" face="convenience"]
綾香は無表情で、どこか気だるそうな様子だ。[p]

客に愛想を振りまくこともなく、淡々と袋詰めをしている。[p]
[wait time=500]
そういえば屋上以外で綾香が笑っているのを見たことがない気がする。[p]

ふとそんなことを考えた。[p]

屋上で人を見下ろしていた顔と、レジで疲れを隠そうともせず立つ顔。[l][r]
どちらが本当の綾香なのか、拓海には分からなかった。[p]

分からないままでいた方が、きっとやりやすい。[l][r]
拓海は雑誌へ視線を落とし、それ以上考えるのをやめた。[p]

何人か客が入っていくのを拓海は見送ったが、[r]
来店客には全く関心がない様子だ。[p]

拓海は安堵した。[p]

[wait time=500]

これならバレる心配はなさそうだ。[p]
[chara_hide_all time=300]
[playse storage=se/convenience_door.ogg volume=100]
[wait time=500]
[bg storage="bg_convenience_inside_night.webp" time=800]
拓海は店内に入り、商品棚を物色するふりをしながら、[r]
綾香の様子を窺った。[p]

店内には、拓海のほかにも何人か客がいたが、[r]
あまり長居しても不審がられて目立ってしまうかもしれない。[p]

レジから死角になる位置に移動して心を落ち着かせる。[p]
[wait time=1000]
目の前の雑誌コーナーで、さほど興味のない本に手を伸ばした。[p]
[wait time=1000]
ここで店内の客がいなくなるタイミングを見計らうことにする。[p]

[wait time=500]

その時、バックヤードから肥満体の中年男性が現れた。[p]

「来たな」[p]

拓海はその人物を知っていた。[p]

このコンビニの店長だ。[p]
店長は、ある意味で今回の作戦の重要人物であるため、特徴をしっかり把握しておく必要があった。[p]

拓海は綾香のシフトではない日に、何度かこのコンビニに下見に来ていたのだ。[p]

店長はカゴいっぱいの商品を持ち、補充を始めた。[p]

; 追加した演出意図: 嫌悪のきっかけは大きな音ではなく、短い間で不快感を強める。
[wait time=500]

強烈な汗の匂いが漂い、拓海は思わず眉をひそめた。[p]

マスクをしてこなかったことを後悔するほどだった。[p]

[wait time=500]

綾香が嫌悪する理由もわかってしまうな……。[p]

[wait time=500]

綾香が不潔な店長に悩まされている、[r]
と愚痴をこぼしていたことを思い出す。[p]

拓海はその店長をよく観察した。[p]

年齢は40代で、身長は170cmくらいだろうか。[p]

髪は短く、細く薄くなった毛の隙間から地肌が覗いていた。[p]

制服から覗く腕には、太い毛がびっしりと生えていた。[p]

[wait time=500]

このコンビニは「バイトが黒髪の女の子ばかりで不思議だ」と、[r][l]
噂になっていたらしい。[p]

それは不思議でも何でもない話で、[r][l]
ただ単純に店長の趣味なのだと綾香は言っていた。[p]

店長は、自分好みの大人しそうな女子だけをアルバイトに採用している。[p]

綾香は、店長が自分のシフトの日だけ、やたら店に出てくるのが気持ち悪いと漏らしていた。[p]

彼女はどうやら店長のお気に入りらしかった。[p]

拓海はその店長を目の端で捉えながら、[r][l]
頭の中で綾香へ見せる「幻」のイメージをさらに膨らませた。[p]

[wait time=500]

これは綾香にとって、最も不快で、おぞましい結果をもたらすだろう。[p]

[wait time=500]

*ch3_retry_context_convenience_timing
10分程度待っただろうか。[p]
店内の客も残り一人になった。[p]
[wait time=500]
スーツ姿の男が、缶チューハイを二本と、[r]
小さなショートケーキをレジに置いた。[p]
[wait time=500]
年齢は三十代前半くらいだろうか。[r][l]
疲れた顔をしているが、どこか足取りは軽い。[p]
[wait time=500]

恋人と酒でも飲むのだろうか。[p]

誰かと過ごす夜のために、酒とケーキを買って帰る。[l][r]
そんな当たり前の生活が、今の拓海には別の世界の出来事のようだった。[p]

男が財布をしまう間、拓海は商品棚の陰で自分の指先を見つめた。[l][r]
この客が出れば、もう言い訳はできない。[p]

[wait time=500]

綾香は無言でバーコードを通し、[r][l]
男は「どうも」とだけ言って店を出ていった。[p]
[playse storage=se/convenience_door.ogg volume=100]
[wait time=500]
自動ドアの開閉音が遠ざかる。[p]
[wait time=500]
店内が静かになる。[p]
[wait time=500]
今ならいける……。

*ch3_choice_convenience_counter
[choice_start count=2]
[choice name="choice_ch3_go_counter" text="レジに向かう" target="*ch3_go_counter"]
[choice name="choice_ch3_wait_longer" text="もう少し様子を見る" target="*ch3_wait_longer_bad"]
[s]

*ch3_choice_convenience_counter_retry
[playbgm storage="tension_low.ogg" loop=true volume=100 fadein=true time=1200]
@jump target="*ch3_retry_context_convenience_timing"

*ch3_go_counter
[cm]
[wait time=500]

; 追加した演出意図: 実行直前だけ鼓動SEを足し、生活音から内面音へ寄せる。
[fadeoutbgm time=3000]
[playse storage=se/heartbeat.ogg loop=true volume=100 fadein=true time=500]
拓海は小さく息を吸い込み、レジに向かった。[p]
@jump target="*ch3_counter_route"

*ch3_wait_longer_bad
[cm]
[wait time=500]

……。[p]

[wait time=500]

五分後――。[p]

「綾香」[p]

店長の声が、バックヤードの方から聞こえた。[p]

「さっきから、あのお客さん……何も買わずにずっといるよな」[p]

「ちょっと見てきてくれるか」[p]

[chara_hide_all time=300]
[wait time=500]

綾香は小さくため息をつき、ゆっくりとこちらへ歩いてくる。[p]

逃げるべきか――。[p]

そう思った時には、もう遅かった。[p]

[auto_chara name="綾香" face="convenience_angry"]
「……あんた」[p]

綾香の目が、拓海をまっすぐに捉える。[p]

「あんた、永山でしょ。何してんの？」[p]

[chara_hide_all time=300]
[wait time=500]
[auto_chara name="拓海" face="convenience"]
拓海は何も答えられなかった。[p]

慎重になり過ぎた。[p]

住宅街の小さなコンビニで、長時間店内をうろつく客は、[r]
それだけで不審者だった。[p]

もう二度と、同じ方法は使えない。[p]
[chara_hide_all time=300]

[bg storage="black.png" time=1000]
その日の夜、スマホが震えた。[p]

画面には、龍也からの短いメッセージが表示されていた。[p]

「明日、屋上に来い」[p]

拓海は、その一文を見た瞬間、[r]
すべてが終わったのだと理解した。[p]

[eval exp="f.bad_end_no = 'BAD END 03'"]
[eval exp="f.bad_end_title = '手遅れ'"]
[eval exp="f.bad_end_retry_storage = 'chapter3.ks'"]
[eval exp="f.bad_end_retry_target = '*ch3_choice_convenience_counter_retry'"]
[eval exp="f.bad_end_retry_bg = 'bg_convenience_inside_night.webp'"]
@jump storage="badend.ks" target="*bad_end"

*ch3_counter_route
[auto_chara name="綾香" face="convenience"]
綾香は依然として覇気のない様子で、[r]
店内の空気は重い。[p]

お茶と二個のおにぎりを手に、レジに並んだ。[p]

これも、別に必要なものではなかったが、[r][l]
一番印象に残らなさそうな商品を、拓海なりに考えて選んだのだ。[p]

おにぎりの一つは、綾香が以前教室で食べていたものと同じ具だった。[p]

無意識に選んだことへ気づき、別の商品へ戻そうとする。[l][r]
だが棚へ引き返せば不自然だと思い、そのままレジへ持っていった。[p]

綾香が細い腕で淡々と作業を続ける姿を見て、[r]
拓海は意を決した。[p]

[auto_chara name="拓海" face="convenience"]
「袋、一番小さいのでお願いします」[p]

彼はいつもより低い声で、静かに言った。[p]

[auto_chara name="綾香" face="convenience"]
「承知しました」[p]
[playse storage=se/in_plastic_bag.ogg volume=100]
[wait time=500]
綾香は無機質な声で答え、商品をビニール袋に詰め始めた。[p]
[wait time=500]
彼女の手が自然に動くたびに、拓海の心拍は速くなる。[p]

袋の口を整える細い指に、火傷を嘲笑ったときの面影はなかった。[l][r]
ただ仕事を終えようとしている、一人の疲れた高校生にしか見えない。[p]

拓海はレジ横の募金箱へ視線を逃がした。[l][r]
顔を見続ければ、決意が鈍る気がした。[p]

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

[wait time=1000]

[delay speed="110"]
やるしかない――。
[resetdelay]

[wait time=1000]
[choice_start count=1 y=360]
[choice name="choice_ch3_make_decision" text="力をつかう" target="*next"]
[s]

*next
[cm]

[wait time=1000]

拓海は全神経を集中させた。[p]

触れたあとに何が起きるかは分かっている。[l][r]
それでも、差し出された手までの数センチが、屋上のフェンスより遠く感じられた。[p]

[wait time=1000]

綾香が袋を差し出した時、[r][l]
拓海は意図的にその手へ軽く触れた。[p]

[stopse fadeout=1000]
[fadeoutbgm time=3000]
[playse storage=se/tinnitus.ogg volume=100 buf="0"]
[bg storage="white.png" time=80]
[wait time=300]
[playse storage=se/white_noise.ogg volume=100 buf="1"]
[bg storage="black.png" time=300]
[fadeoutbgm time=3000]
[delay speed="120"]
その瞬間、[l]世界が静まり返った。[p]
[resetdelay]
[wait time=1000]

やった……成功だ。[p]

[wait time=500]

拓海は翔太に見せたときと同じ感覚を覚え、成功を確信する。[p]

触れた指先にまだ感触が残っている。[p]
止まった綾香の向こうで店長だけが動く光景に、全身が熱くなった。[p]
[playbgm storage="ability_theme.ogg" loop=true volume=80 fadein=true time=1500]
[cg storage="ch3_convenience_touch.webp"]
[bg storage="ch3_convenience_touch.webp" time=900]
綾香は動きを止め、目を見開いたまま、[r][l]
時間が止まったように固まっている。[p]

[wait time=1000]

そして、その無音の世界の中で、[r][l]
店長がゆっくりと綾香の方へ近づき始める。[p]

ここは綾香と店長だけの世界だ。[p]

[wait time=1000]

店長は、じっと綾香を見つめながら、[r][l]
ゆっくりとその手を伸ばした。[p]

[bg storage="white.png" time=80]
[wait time=500]
[bg storage="black.png" time=300]
[wait time=1000]
拓海は、自分が作り出した無音の世界を見つめた。[p]

[wait time=1000]

これ以上、ここにいる必要はない。[p]

拓海は袋を受け取ると、[r][l]
綾香の顔をもう一度だけ確認した。[p]

彼女は目の前の拓海ではなく、[r]
そこに存在しない何かを見つめたまま、動こうとしない。[p]

拓海の手の中で、袋に入ったおにぎりがまだ温かかった。[p]

つい数秒前まで続いていた日常の温度だけが、無音の世界に取り残されている。[l][r]
その温かさを感じた途端、成功の高揚に細いひびが入った。[p]

[fadeoutbgm time=3000]
[chara_hide_all time=300]
[playse storage=se/convenience_door.ogg volume=60]
[wait time=500]

[playse storage=se/city_ambience.ogg volume=20 loop=true fadein=true time=2000]
[bg storage="bg_convenience_store_night.webp" time=800]

店を出た途端、冷たい夜風が頬を撫でた。[p]

胸の鼓動は、まだ速いままだった。[p]

自動ドアが閉じる寸前、店内から何かが倒れる音がした。[p]

足が止まりかける。[l][r]
それでも拓海は、振り返れば自分のしたことを認めてしまう気がして前を向いた。[p]

だが、店に入る前に感じていた恐怖は、[r]
いつの間にか別の感情へと変わっていた。[p]

成功した。[p]

今度は偶然ではない。[p]

自分の意思で、力を使うことができた。[p]

拓海は一度も振り返ることなく、[r]
明るいコンビニの前から歩き去った。[p]

[fadeoutse time=2000]
[bg storage="black.png" time=2000]
[wait time=500]

*ch3_classroom_after

; 追加した演出意図: 場面転換は黒を挟み、事件後の時間経過を淡々と示す。

[bg storage="bg_classroom_day.webp" time=800]
[playbgm storage="classroom_buzzing.ogg" loop=true volume=100 fadein=true time=1000]
それから数日が経ち、十月に入った。[p]

秋の冷たい風が、学校の校庭に吹き始めていた。[p]

朝晩は上着が必要なくらい涼しくなり、[r][l]
教室の窓から見える木々の葉も少しずつ色づいている。[p]

あの日以来、綾香は学校に姿を見せていない。[p]

[wait time=500]

だが、不思議なことに、大きな噂話にもなっていなかった。[p]

それが翔太の時とは違うところだ。[p]

[wait time=500]

龍也は相変わらず拓海を呼び出してはくるが、[r][l]
以前のような勢いはなく、どこか元気がないように見えた。[p]

綾香のことが影響しているのかもしれない。[p]

案の定、龍也は綾香が学校に来ない理由について拓海を問い詰めてきたが、[r][l]
もちろん証拠などあるはずがない。[p]

拓海は内心ほくそ笑んでいた。[p]

[wait time=500]

どうせ次はお前だ。[l]
何も問題はない。[p]

机の端に置いた左手が、小さく震えていた。[l][r]
拓海は右手でそれを押さえ、誰にも見られないよう膝の上へ隠した。[p]

問題がないのなら、震える理由もないはずだった。[p]

[wait time=500]

拓海は自分の中で何かが変わったことを感じていた。[p]

力を手に入れたことで自信を取り戻し、[r][l]
以前よりもクラスメイトとコミュニケーションを取ることができるようになっていた。[p]

クラスメイトは、拓海が龍也たちと「つるんでいる」と思っているようで、[r][l]
拓海がいじめられている事実には気づいていない。[p]

それでも、最近の拓海の雰囲気が少し明るくなったことに安心したのか、[r][l]
クラスメイトたちは以前よりも積極的に拓海と話すようになっていた。[p]

[wait time=500]

この居心地、悪くないな……。[p]

前の席から回ってきたプリントを受け取ると、クラスメイトが自然に「ありがとう」と言った。[p]

たったそれだけの言葉に返事が遅れた。[l][r]
屋上では一度も向けられなかったものが、教室には何気なく存在していた。[p]

[wait time=500]

拓海は一瞬、自分がこのままクラスでの居場所を確保できるような気がした。[p]

だが、すぐに冷静な自分がその考えを打ち消す。[p]

ぬるま湯に浸かっていてはダメだ。[p]

龍也が次に何をしてくるかわからない以上、先手を打つ必要がある。[p]

彼のことをもっと調べなければならない。[p]

しかし、龍也の事情を詳しく知っていそうな人物には、[r]
誰一人として心当たりがなかった。[p]

どうしたものかと、休み時間に机に肘をついて考え込んでいたその時だった。[p]

[wait time=500]

[auto_chara name="恵" face="serious" time=500]
「永山君、今日放課後少し時間ある？」[p]

声に驚いて顔を上げると、[r]
恵が緊張した面持ちで横に立っていた。[p]

[auto_chara name="拓海" face="level2_normal"]
「うん、大丈夫だけど」[p]

[auto_chara name="恵" face="serious"]
「そっか。ありがとう」[p]

[auto_chara name="拓海" face="level2_normal"]
「何か用事だった？」[p]

一体、何の用件だろう。[p]

[auto_chara name="恵" face="serious"]
「綾香の件で、聞きたいことがあるんだ」[p]

胸の奥で、先ほどまでの温かさが一気に冷えた。[p]

恵の視線が、机の上に出した左手へ一瞬落ちる。[l][r]
拓海は見られたものを隠すように、腕時計の位置を直した。[p]
[fadeoutbgm time=4000]
恵からはいつもの柔らかい雰囲気は消え、[r][l]
何かを決意しているような表情だ。[p]

「放課後、駅前のカラオケで待ち合わせしよう」[p]

[chara_hide_all time=300]
短い言葉を残して、恵はそのまま教室を出て行った。[p]

拓海はしばらくその場で呆然とした。[p]

恵が出ていった途端、教室のざわめきが遠のいた気がした。[p]

[playbgm storage="suspense.ogg" loop=true volume=80 fadein=true time=1000]
[wait time=500]

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

[fadeoutbgm time=4000]
[bg storage="black.png" time=1000]
[wait time=300]

*ch3_karaoke

[bg storage="bg_karaoke.webp" time=800]
[playbgm storage="airconditioner.ogg" loop=true volume=50 fadein=true time=1000]
[playse storage=se/karaoke_sound.ogg loop=true volume=20 fadein=true time=500]

駅近くのカラオケの個室に入り、[r]
二人は無言で席に着いた。[p]

曲を入れる様子もなく、[r]
恵は真剣な表情で拓海を見つめている。[p]

[auto_chara name="恵" face="serious"]
「実は、この前、綾香がバイトするコンビニに永山君が入っていくのを見かけたの」[p]

その声にも、普段とは違う緊張が滲んでいた。[p]

「私、そのすぐ近所に住んでて……[l]
永山君、変装してたでしょ？」[p]

[chara_hide_all time=300]
[wait time=500]

拓海は答えられず、黙り込んだ。[p]

思いもよらない言葉が、頭の中でこだまする。[p]

[wait time=500]

見られていた……？[p]

変装を見破られたことよりも、歩き方を覚えられていたことが怖かった。[p]

自分は誰の記憶にも残らない人間だと思っていた。[l][r]
その思い込みを、恵の何気ない一言が静かに崩していく。[p]

[wait time=500]

[auto_chara name="恵" face="serious"]
「あの日、なんとなく胸騒ぎがして、少しだけ後を追ったの」[p]

「でも、すぐに歩き方でわかったよ。[l]
ちょっと猫背で下を見て歩く癖、あるもんね？」[p]

恵は、何の疑いもなく話を続けた。[p]

「外から見てたんだけど、永山君、全然気づかないんだもん」[p]

[chara_hide_all time=300]
確かに、あの時は周りを気にする余裕などなかった。[p]

恵の指摘が、拓海の胸に鋭く突き刺さった。[p]

[wait time=500]

[auto_chara name="恵" face="serious"]
「それで、永山君がコンビニから出た後、私も店に入ってみたの。[l]
そしたら、綾香が私を見るなり急に泣き出して……」[r][p]
[stopbgm]
[stopse]
[playbgm storage="suspense.ogg" loop=true volume=80 fadein=true time=1000]
[auto_chara name="恵" face="pain"]
[delay speed="90"]
「店長にレイプされたって言ったのよ」[p]
[resetdelay]

拓海の指が、ソファの縫い目へ食い込んだ。[p]

自分が頭の中で選び、組み立てた言葉を、今度は恵の口から聞かされている。[l][r]
幻の中だけに閉じ込めたはずの出来事が、現実へ染み出したようだった。[p]
[chara_hide_all time=300]
[auto_chara name="拓海" face="level2_normal"]
「……」[p]
[wait time=1000]
ここまでは計画通りだ……。[p]

拓海は冷静さを保とうと努めた。[p]

自分が作り出した幻覚の中で、[r]
綾香が店長に襲われる光景を描いていたのだから。[p]

[auto_chara name="恵" face="sad"]
「綾香、すごく震えてて……[l]
とにかく警察を呼ぶしかなかったの」[p]
[fadeoutbgm time=4000]
[chara_hide_all time=300]
[wait time=1000]

*ch3_retry_context_megumi_suspicion
警察……？[p]

[wait time=1000]

; 追加した演出意図: 想定外の単語で鼓動を再投入し、音量は控えめにして焦燥だけを出す。
[playbgm storage="airconditioner.ogg" loop=true volume=50 fadein=true time=1000]
[playse storage=se/heartbeat.ogg loop=true volume=60 fadein=true time=500]
その言葉に、拓海の顔が青ざめた。[p]

鼓動が速まり、全身に血が駆け巡る。[p]

警察を呼んだだって……。[p]

テーブルの水滴が袖へ触れ、拓海の肩が跳ねた。[l][r]
冷たさに反応しただけだと分かるまで、一瞬、自分の手首を掴まれたのかと思った。[p]

[auto_chara name="恵" face="serious"]
「店長は警察に事情聴取されたんだけど、[r][l]
監視カメラを確認してくれって言ってね」[p]

[chara_hide_all time=300]
くそっ……監視カメラか！[p]

[wait time=500]

拓海は胸の中で叫んだ。[p]

監視カメラの存在を忘れていたわけではないが、[r]
そこまで細かく確認されるとは思っていなかった。[p]

映像には、自分がレジで綾香から[r]
商品を買う様子が写っているはずだ。[p]

[auto_chara name="恵" face="serious"]
「でも、監視カメラには、[r][l]
綾香がいきなり泣き出すだけの映像しか残ってなかった。[l]
店長の疑いは晴れて……」[p]

[chara_hide_all time=300]
恵は淡々と話しているが、[r]
拓海は頭の中が真っ白になっていた。[p]

事態がここまで大きくなっているとは想像もしていなかった。[p]

綾香を怖がらせれば、それで終わると思っていた。[l][r]
その向こうに店長の疑いも、警察も、恵の恐怖も続いているとは考えなかった。[p]

自分が見せたのは嘘でも、嘘によって動いた人間たちは現実にいる。[l][r]
その重さが、遅れて拓海の胸へ乗しかかった。[p]

[auto_chara name="恵" face="sad"]
「警察の人も、私たちが店長を陥れようとしたんじゃないかって少し疑ってたみたいだけど……[l]
結局はそれ以上何も聞かれなかった」[p]

[chara_hide_all time=300]
拓海は、恵の話に耳を傾けながら、ただ黙り込んでいた。[p]

恵が何を知り、[r][l]
どこまで事情を理解しているのか、判断がつかなかった。[p]

[wait time=500]

[auto_chara name="恵" face="serious"]
「永山君、何か知ってるんじゃないの？」

*ch3_choice_megumi_truth
[choice_start count=2]
[choice name="choice_ch3_stay_silent" text="黙る" target="*ch3_megumi_stay_silent"]
[choice name="choice_ch3_play_dumb" text="とぼける" target="*ch3_megumi_play_dumb_bad"]
[s]

*ch3_megumi_truth_retry
[cm]
[bg storage="bg_karaoke.webp" time=0]
[playbgm storage="airconditioner.ogg" loop=true volume=50 fadein=true time=1000]
[playse storage=se/karaoke_sound.ogg loop=true volume=20 fadein=true time=500]
[playse storage=se/heartbeat.ogg loop=true volume=100 fadein=true time=500]
@jump target="*ch3_retry_context_megumi_suspicion"

*ch3_megumi_play_dumb_bad
[cm]
[auto_chara name="拓海" face="level2_normal"]
「……何のこと？」[p]

拓海は、できるだけ平静を装って答えた。[p]

「コンビニなんて行ってないよ」[p]

[auto_chara name="恵" face="sad"]
恵は少しだけ目を伏せ、小さく頷いた。[p]

「……そっか」[p]

[chara_hide_all time=300]
それ以上、何も聞いてはこなかった。[p]

そのまま部屋には重い沈黙だけが流れる。[p]

やがて恵は静かに立ち上がった。[p]

[auto_chara name="恵" face="sad"]
「ごめんね。変なこと聞いちゃって」[p]

[chara_hide_all time=300]
そう言い残し、部屋を出ていく。[p]

拓海は引き止めることもできず、その背中を見送るしかなかった。[p]

[bg storage="black.png" time=1000]

あの日。[p]

唯一、自分を理解してくれようとしていた人に、嘘をついた。[p]

その結果、恵と協力することはなく、高田を止めることもできなかった。[p]

龍也の暴力も終わらない。[p]

何も変わらない毎日だけが続いていく。[p]

[eval exp="f.bad_end_no = 'BAD END 04'"]
[eval exp="f.bad_end_title = '孤立'"]
[eval exp="f.bad_end_retry_storage = 'chapter3.ks'"]
[eval exp="f.bad_end_retry_target = '*ch3_megumi_truth_retry'"]
[eval exp="f.bad_end_retry_bg = 'bg_karaoke.webp'"]
@jump storage="badend.ks" target="*bad_end"

*ch3_megumi_stay_silent
[cm]
[chara_hide_all time=300]
恵の真剣な視線に、拓海は無言で応じるしかなかった。[p]
[wait time=1000]
[fadeoutbgm time=3000]
[playse storage=se/knock_door.ogg volume=100]
[wait time=500]
[playse storage=se/roof_door.ogg volume=30]
[playbgm storage="airconditioner.ogg" loop=true volume=50 fadein=true time=1000]
その時、部屋のドアがノックされ、[r]
店員が注文していたアイスコーヒーをテーブルに置いていった。[p]

冷たいコーヒーは、まるで味がしなかった。[p]

どこかから聞こえる音程の外れたバラードが、[r][l]
静かな空間に響いている。[p]

[wait time=500]

[auto_chara name="恵" face="sad"]
「私、永山君が、綾香たちのグループにいいようにされていること、知ってたよ」[p]
「北川龍也、佐田翔太、上田綾香の三人組でしょ」[p]
「クラスのみんなも、きっと気づいていたけど、誰も触れたくなかったんだと思う」[p]

[auto_chara name="拓海" face="level2_normal"]
「……気づかれていたのか」[p]

久しぶりに口を開いた拓海の声は、[r]
どこか力なく響いた。[p]

[auto_chara name="恵" face="pain"]
「うん。何も力になれなくて、ごめんね」[p]

恵は申し訳なさそうに視線を下げたが、[r]
再び神妙な顔をして話を続けた。[p]

拓海は返事を探したが、責める言葉も、許す言葉も出てこなかった。[p]

代わりに、氷の溶けたグラスを指で回す。[p]

自分が必死で隠していたものを、この人はずっと見ないふりをしてくれていたのかもしれない。[l][r]
そう考えると、張りつめていた肩からわずかに力が抜けた。[p]

[auto_chara name="恵" face="serious"]
「それでね……[l]
あの日、コンビニで永山君を見かけたとき、[r][l]
何かしようとしてるんじゃないかって思ったの」[p]

恵は、ちらっと拓海の方を見てから言葉を続けた。[p]

「それに、佐田君がしばらく学校に来なくなったのも、[r]
ちょっと話題になったじゃない？」[p]
「彼が、『罰が当たった。酷い夢を見たんだ』って周りに言ってたらしくて……[r][l]
それを聞いて、綾香のことと重なって、永山君が何か知ってるに違いないって思ったの」[p]

[chara_hide_all time=300]

あの日見られていたことで、翔太の話まで繋がっていた。[p]
「驚いたな」と拓海はつぶやいた。[p]

拓海はすでに観念していた。[p]

自分のいじめを理解している人間がいた。[p]
その事実に彼の肩の力が抜けていく。[p]

もう言い逃れを続けるのも苦しかった。[p]

すべて話して、楽になりたかった。[p]

[stopse fadeout=1000]
[wait time=1000]

[auto_chara name="拓海" face="level2_depressed"]
「俺がやった。[l]想像の通りだよ」[p]

その言葉が口をついて出た瞬間、[r]
部屋の空気が静まり返った気がした。[p]

恵はすぐには何も言わなかった。[p]

否定も非難も返ってこない。[l][r]
その静けさがかえって怖くて、拓海は膝の上で両手を握った。[p]

秘密を明かして軽くなったはずの胸に、今度は彼女にどう見られるのかという重さが沈んでいく。[p]

唇に拳を当てたまま、[r]
じっと拓海を見つめている。[p]
繰り返し流れるカラオケの宣伝動画が、静かな部屋に響いている。[p]

[auto_chara name="恵" face="serious"]
「やっぱりそうなんだね……」[p]

責めるような口調ではなかった。[p]

恵の肩が、ほんの少し下がった。[l][r]
答えを聞いて安心したようにも、覚悟していた答えを確かめてしまったようにも見えた。[p]

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
「気づいてたと思う」[p]

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

拓海が言葉に詰まるたび、恵は続きを急かさず待った。[l][r]
その沈黙に支えられて、拓海は自分でも触れないようにしていた記憶を一つずつ口へ出した。[p]

[auto_chara name="恵" face="pain"]
「本当に酷いことをされてたんだね……」[l]

恵はそれ以上の言葉を失った。[p]

[wait time=500]

[auto_chara name="恵" face="surprise"]
「あれ、じゃあ何で今、力を使わなかったの？」[p]

[auto_chara name="拓海" face="level2_surprise"]
「え？　どういうこと？」[p]

[auto_chara name="恵" face="serious"]
「私にその力を使って、この場を切り抜けることだってできそうじゃない」[p]

拓海は反射的に、テーブルの上の自分の手を引いた。[p]

恵との距離は手を伸ばせば届くほどしかない。[l][r]
その近さを、初めて危険なものとして意識した。[p]

彼女はさらっと恐ろしいことを言う。[p]

[auto_chara name="拓海" face="level2_panic"]
「いやいや。[l]
俺だって好き好んで人を傷つけたいわけじゃないんだよ。[r][l]
こんな目に遭ってなかったら、あいつらにだってきっと使ってなかったと思う」[p]

それにまだよくわからないこともあるんだ、と付け加える。[p]

[chara_hide_all time=300]
そのあと、二人が互いの疑問を確かめ合う中で、[r]
拓海はとうとう核心を突いた。[p]

[auto_chara name="拓海" face="level2_normal"]
「それで……今日呼び出した目的は何なの？[l]
探偵ごっこが趣味ってわけじゃないでしょ？」[p]

[auto_chara name="恵" face="laugh"]
恵は「案外好きかもよ」と言って大袈裟に笑って見せた。[p]

[wait time=500]

[auto_chara name="恵" face="serious"]
そして、真っ直ぐ拓海を見て言った。[p]

「実は、永山君に助けてもらえるんじゃないかって思ったの」[p]

[auto_chara name="拓海" face="level2_surprise"]
「助ける？　誰を？」[p]

[auto_chara name="恵" face="sad"]
「うちのお母さん」[l]

恵はそう言ってから、少しだけ言葉を止めた。[p]

「職場の上司から、ずっと酷いことをされてるみたいで……」[p]

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
[playbgm storage="suspense.ogg" loop=true volume=80 fadein=true time=1000]
[auto_chara name="拓海" face="level2_surprise"]
拓海は言葉を失った。[p]

[auto_chara name="恵" face="serious"]
「断ってるんだけど、ずっとしつこくて……最近は脅すみたいなことまで言われてるみたい」[p]

[chara_hide_all time=300]
*ch3_retry_context_help_megumi
恵はスマホを取り出し、
テーブルの上にそっと置いた。[p]

拓海は画面に目を落とした。[p]
そこに並んでいた高田隆二の言葉は、ただの誘い文句ではなかった。[p]

『また無視か？』[p]

『お前が困ることになるぞ』[p]

『そろそろ観念しろ』[p]

相手の立場を利用し、逃げ道を塞いでいくような、[r]
粘ついた悪意だった。[p]

拓海は奥歯を噛み締めた。[p]
[auto_chara name="拓海" face="level2_normal"]
「……警察とかには？」[p]
[auto_chara name="恵" face="serious"]
「多分無理だと思う」[p]

恵は首を横に振る。[p]

「会社の中でも影響力のある人みたいだし、お母さんも騒ぎを大きくしたくないんだと思う」[p]
[auto_chara name="拓海" face="level2_normal"]
「なんで、そこまで我慢してるんだろ」[p]
[auto_chara name="恵" face="serious"]
「仕事辞められないから、かな……」[p]
[auto_chara name="恵" face="troubled_smile"]
そこで恵は少し困ったように笑った。[p]
[fadeoutbgm time=4000]
[playbgm storage="airconditioner.ogg" loop=true volume=50 fadein=true time=1000]
「うち、母子家庭なんだよね」[p]
[auto_chara name="拓海" face="level2_depressed"]
「……あ」[p]

拓海は思わず視線を逸らした。[p]

「ごめん」[p]
[auto_chara name="恵" face="normal"]
「ううん、気にしなくていいよ」[p]

恵は柔らかく笑った。[p]

「お父さんは、私が小さい頃に亡くなったの。だから、お母さん一人でずっと働いてきたんだ」[p]

[playse storage=se/iced_cofee.ogg volume=100 buf=1]

氷が、カランと小さく鳴った。[p]

「黒森に通えてるのも、お母さんのおかげだし。だから……無理してるのも、わかるんだよね」[p]

恵はスマホの画面を見つめながら呟いた。[p]
[auto_chara name="恵" face="sad"]
「でも、このままだと本当に壊れちゃいそうで……」[p]
[chara_hide_all time=300]
その声は、
今にも消えてしまいそうなくらい小さかった。[p]

拓海は再びスマホへ目を落とし、[r]
胸の奥に重い怒りが積もっていくのを感じた。[p]
[auto_chara name="拓海" face="level2_normal"]
「それで、俺に何をしてほしいの？」[p]

恵は静かに顔を上げた。[p]
[auto_chara name="恵" face="serious"]
「高田を止めてほしいの」[p]

拓海はすぐには答えず、恵と自分の間に置かれたスマホを見た。[p]

画面の黒い部分に、二人の顔が並んで映っている。[l][r]
頼る側と、頼られた側。その境目に、高田の言葉だけが残っていた。[p]

真っ直ぐな目だった。[p]

[delay speed="90"]
「お母さんを、助けたい」
[resetdelay]

言い切った恵の指が、消えたスマホの画面を強く押さえていた。[p]

拓海が見ていることに気づくと、恵は慌てて力を緩める。[l][r]
頼んだことの恐ろしさを、口にしてから自分でも悟ったようだった。[p]

「今のは忘れて」と恵が言うのではないか。[l][r]
拓海は一瞬だけそれを待ったが、恵は目を逸らさなかった。[p]

*ch3_choice_help_megumi
[choice_start count=2]
[choice name="choice_ch3_help_megumi" text="協力する" target="*ch3_help_megumi"]
[choice name="choice_ch3_refuse_megumi" text="断る" target="*ch3_refuse_megumi_bad"]
[s]

*ch3_help_megumi
[cm]
[chara_hide_all time=300]
拓海はその言葉を聞き、再び画面に目をやった。[p]

恵の母親を救うために自分ができることを考える。[p]

翔太の絶叫と、動かなくなった綾香の顔が続けて浮かんだ。[l][r]
自分の力が誰かを救ったことは、まだ一度もない。[p]

それでも恵は、ほかの誰でもなく自分へ助けを求めている。[l][r]
怖いからという理由だけで、差し出された手を振り払いたくはなかった。[p]
この力を恐れず、必要としてくれる人がいる。[l][r]
その事実に戸惑いながらも、胸の奥に熱が灯った。[p]

今までのように復讐心から力を使うのではなく、[r]
誰かを助けるために。[p]

[fadeoutbgm time=4000]
[wait time=1000]

しばらくの沈黙の後、拓海は深く息を吐いた。[p]

そして、ゆっくりと口を開いた。[p]

[wait time=500]

[cg storage="ch3_karaoke_determination.webp"]
[bg storage="ch3_karaoke_determination.webp" time=900]

[delay speed="110"]
「よし、[l]お母さんを助けよう」[p]
[resetdelay]

その言葉を口にした瞬間、[r]
自分の力は復讐だけでなく、人を救うためにも使えるのだと初めて気づいた。[p]

新たな決意が、拓海の胸を静かに満たしていった。[p]

向かいの恵が息を吐き、強張っていた指をようやくスマホから離した。[p]

その小さな変化を見て、拓海は自分の返事が初めて誰かを安心させたことを知った。[p]

@jump target="*ch3_help_megumi_continue"

*ch3_refuse_megumi_bad
[cm]
[auto_chara name="拓海" face="level2_depressed"]
「……ごめん」[p]

拓海は小さく首を振った。[p]

「俺には、もう無理だ」[p]

「誰かを傷つけるために、この力を使うのは……もう嫌なんだ」[p]

[auto_chara name="恵" face="surprise"]
恵は少し驚いた表情を浮かべたが、すぐに小さく微笑んだ。[p]

[auto_chara name="恵" face="troubled_smile"]
「……そっか」[p]

[chara_hide_all time=300]
その笑顔は、どこか寂しそうだった。[p]

[auto_chara name="恵" face="troubled_smile"]
「ごめんね。変なお願いしちゃって」[p]

[chara_hide_all time=300]
恵はスマホをしまい、静かに席を立つ。[p]

[auto_chara name="恵" face="troubled_smile"]
「今日はありがとう」[p]

[chara_hide_all time=300]
それだけ言って、部屋を出ていった。[p]

ドアが閉まる音だけが、やけに大きく響く。[p]

拓海は最後まで、その背中を見送ることしかできなかった。[p]

[bg storage="black.png" time=1000]
誰かを救うには、覚悟がいる。[p]

その覚悟を持てなかった。[p]

あの日、恵と出会った意味も。[p]

この力を手に入れた意味も。[p]

自ら手放してしまった。[p]

[eval exp="f.bad_end_no = 'BAD END 05'"]
[eval exp="f.bad_end_title = '見て見ぬふり'"]
[eval exp="f.bad_end_retry_storage = 'chapter3.ks'"]
[eval exp="f.bad_end_retry_target = '*ch3_help_megumi_retry'"]
[eval exp="f.bad_end_retry_bg = 'bg_karaoke.webp'"]
@jump storage="badend.ks" target="*bad_end"

*ch3_help_megumi_retry
[cm]
[bg storage="bg_karaoke.webp" time=0]
[playse storage=se/karaoke_sound.ogg loop=true volume=20 fadein=true time=500]
[playbgm storage="suspense.ogg" loop=true volume=80 fadein=true time=1000]
@jump target="*ch3_retry_context_help_megumi"

*ch3_help_megumi_continue
; 追加した演出意図: 重い会話の終わりに環境音だけを残し、日常へ戻る微かな救いを出す。
[wait time=500]

どこかの部屋から聞こえてくる下手くそな歌が、[r]
今度は不思議と心地よく響いていた。[p]

[wait time=1000]
[chara_hide_all time=300]

[wait time=500]

[bg storage="bg_station_front_night.webp" time=900]

[playse storage=se/city_ambience.ogg volume=50 loop=true fadein=true time=1000]

[wait time=500]

カラオケを出ると、外はすっかり暗くなっていた。[p]

駅前の店の明かりが、夜の歩道をぼんやりと照らしている。[p]

さっきまで狭い個室で重たい話をしていたせいか、[r]
外の冷たい空気が少し心地よく感じられた。[p]

[auto_chara name="恵" face="normal"]

「思ったより遅くなっちゃったね」[p]

[auto_chara name="拓海" face="level2_normal"]

「そうだね。[l]あんなに長く話すとは思わなかった」[p]

[auto_chara name="恵" face="smile"]

「私も」[p]

[wait time=500]

恵は少しだけ笑った。[p]

カラオケの中ではずっと真剣な顔をしていたので、[r]
その表情を見ると拓海も少し肩の力が抜けた。[p]

[auto_chara name="拓海" face="level2_smile"]

「でも、菊池さんって意外と大胆だよね」[p]

[auto_chara name="恵" face="surprise"]

「え、私？」[p]

[auto_chara name="拓海" face="level2_normal"]

「普通、クラスメイトにいきなり[r]
『その不思議な力で母親を助けて』なんて頼まないでしょ」[p]

[auto_chara name="恵" face="laugh"]

「あはは。[l]確かにそう言われると、ちょっと変な話だね」[p]

[auto_chara name="拓海" face="level2_smile"]

「しかも俺が嘘ついてる可能性だってあったのに」[p]

[auto_chara name="恵" face="normal"]

「うーん……でも、嘘をついてる感じはしなかったかな」[p]

[auto_chara name="拓海" face="level2_surprise"]

「そんなの分かるの？」[p]

[auto_chara name="恵" face="smile"]

「なんとなく」[p]

「それに、永山君って[r]
悪いことをして開き直れるタイプには見えなかったから」[p]

[wait time=500]

拓海は少しだけ返事に困った。[p]

褒められたような気もするし、[r]
そうでもないような気もする。[p]

[auto_chara name="拓海" face="level2_smile"]

「それ、褒めてる？」[p]

[auto_chara name="恵" face="laugh"]

「一応、褒めてるつもり」[p]

[wait time=500]

二人で少し笑った。[p]

それから駅の入口まで、ゆっくりと並んで歩いた。[p]

さっきまで話していた内容を考えれば、[r]
もっと気まずくなってもおかしくなかった。[p]

けれど、不思議とそんな感じはしなかった。[p]

[auto_chara name="恵" face="normal"]

「じゃあ、今日はここで」[p]

[auto_chara name="拓海" face="level2_normal"]

「うん」[p]

[auto_chara name="恵" face="smile"]

「また学校でね」[p]

[wait time=500]

「また学校で」[p]

[chara_hide name="恵" time=400]

[wait time=700]

恵は軽く手を振り、駅の中へ歩いていった。[p]

拓海はその後ろ姿を見送りながら、[r]
さっきの言葉を頭の中で繰り返した。[p]

また学校で。[p]

ただの挨拶だ。[p]

それなのに、何となく耳に残った。[p]

[wait time=700]

拓海も少し遅れて、駅へ向かって歩き出した。[p]

[chara_hide_all time=300]

[stopse fadeout=800]

[wait time=500]
[bg storage="black.png" time=1000]
; 章末整理: 第三章内で鳴らしたカラオケ等のループSEを次章へ持ち越さない。

@jump storage="chapter4.ks" target="*chapter4"

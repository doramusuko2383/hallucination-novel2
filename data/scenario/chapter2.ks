;第2章
;========================
; CHAPTER 2 演出版（chapter1準拠）
;========================

; ===== 現在テスト用（二章冒頭） =====
*ch2_debug_current
*ch2_start
*chapter2
[scene_title title="第2章"]

[cm]
[chara_hide_all]
[clearfix]
[start_keyconfig]
[showmenubutton]

[chapter_title number="第二章" title="報復"]
[font speed=50]

[bg storage="bg_station_morning.webp" time=800]
[playbgm storage="morning_city.ogg" loop=true volume=80 fadein=true time=300]
[playse storage=se/tukutukuboushi.ogg  loop=true volume=60 fadein=true time=300]
9月に入ったというのに、まだまだ暑い日が続いている。[p]
冷房の効いた電車から降りると、もわっとした空気が顔を撫でて思わず顔をしかめる。[p]
制服のシャツが汗で身体にまとわりついてくるようだ。[p]

[wait time=1000]

改札を出ると同じ制服を着た生徒たちでごった返していた。[p]
皆同じ方向に向かってきちんと歩いていく。[p]
拓海は、朝の眩しい日差しの中、[r]
校舎まで人目を避けるように進む。[p]

[wait time=500]
[fadeoutbgm time=3000]
[fadeoutse time=2000]
[bg storage="bg_classroom_day.webp" time=700]
[playbgm storage="classroom_buzzing.ogg" loop=true volume=100 fadein=true]
拓海の通う黒森学園高校は、県内でも中堅クラスの私立高校である。[p]

中高一貫校だが、[r]
高校から一般受験で入学することもできる。[p]

拓海は高校受験で入学したが、入学試験の成績が良かったため、[r]
特別進学クラスという、難関大学への入学を目指すクラスに在籍していた。[p]

[wait time=500]
[playse storage=se/black_board.ogg volume=100]
英語の授業中、隣の席をちらっと見ると、[r]
生徒がこっそり古文の問題集を開いている。[p]

彼は帰国子女で英語が完璧なので、[r]
苦手科目の勉強時間に充てているようだ。[p]

彼以外にもずば抜けて勉強のできる生徒が多く、[r]
各中学校から秀才が集まってきていた。[p]

とは言っても、普通科を含めた学校自体の進学実績はそこそこであった。[p]

[wait time=500]

しかし、制服を有名なデザイナーがデザインしたとかで定評があり、[r]
その人気が学校の倍率を実力以上に押し上げているようだった。[p]

拓海からしたら、他校と比べてそんなに優れているとも思えないような、[r]
普通のブレザーにシンプルなネクタイの制服だ。[p]

[wait time=500]
[fadeoutbgm time=3000]
*ch2_hallway

[bg storage="bg_hallway_day.webp" time=700]
[playse storage=se/hallway_ambience.ogg loop=true volume=100 fadein=true]
拓海は移動教室のために廊下を歩いている。[p]

校舎は古びたコンクリートの建物で、[r]
夏でも不思議なほど冷たさを感じる寒々しい空間だ。[p]

[wait time=500]

廊下から中庭を見ると、龍也と綾香の姿が見えた。[p]

[wait time=500]

綾香「翔太、今日も一人でいたよ」[p]

龍也「……知ってる」[p]

綾香「話しかけたの？」[p]

龍也「無視された」[p]

綾香「まだ避けられてんの？」[p]

龍也「知らねえよ。こっちが聞きてえくらいだ」[p]

龍也は苛立ったように答えた。[p]

あの日以来、翔太は二人と行動を共にしなくなった。[p]

学校には来るようになったものの、龍也や綾香を見かけると、露骨に距離を取っている。[p]

その理由を、二人は知らない。[p]

だが、拓海だけは知っていた。[p]

[wait time=700]

ほんの少し前まで、三人はいつも一緒だった。[p]

特に龍也と翔太の付き合いは長い。[r]
二人がつるむようになったのは、一年生の頃だったらしい。[p]

龍也も最初から問題児だったわけではない。[r]
入学当初はサッカー部でエース候補として、真面目に練習に打ち込んでいた。[p]

素行の悪さはあったが、[r]
不良と呼ばれるほどの生徒でもなかったらしい。[p]

恵まれた体格と、持ち前の運動神経の良さで、[r]
すぐにレギュラーを獲得した。[p]

だが、それをよく思わなかった上級生から嫌がらせをされるようになった。[p]

[fadeoutse time=2000]
[playbgm storage="tension_low.ogg" loop=true volume=100 fadein=true time=1200]
[wait time=500]
[cg storage="ch2_tatsuya_past.webp"]
[bg storage="ch2_tatsuya_past.webp" time=700]
あるとき、試合中にパスを寄こさなかった先輩に殴り掛かり、[r]
止めに入ったサッカー部員も含め、三人に怪我を負わせた。[p]
[bg storage="black.png" time=500]
;[playse storage=se/school_rumor.ogg volume=20] ; 提案: 噂が広がるざわめきSE
この噂は瞬く間に学校中を駆け巡った。[p]

きっと誰もが退学処分になるだろうと思った。[p]

確かに、退学処分になってもおかしくないほどの出来事ではあったが、[r]
龍也は運が良かった。[p]

先輩らの普段の嫌がらせの内容を告発して、[r]
龍也を庇った生徒がいた。[p]
[auto_chara name="翔太" face="normal" time=700]
それが同じサッカー部の翔太だった。[p]

翔太は元々サッカー部を辞めたいなと思っていたし、[r]
髪を染めたかったというのも大きな理由の一つである。[p]

最後に嫌いだった先輩達への嫌がらせをしたかったのだ。[p]
[chara_hide_all time=300]
結果的に、その嫌がらせの証拠が考慮され、[r]
龍也は退学を免れた。[p]

一か月の停学処分になり、サッカー部は退部になった。[p]
その頃から二人はよくつるむようになった。[p]

[wait time=500]
[fadeoutbgm time=3000]
[playse storage=se/hallway_ambience.ogg loop=true volume=100 fadein=true]
[bg storage="bg_hallway_day.webp" time=700]
黒森学園の特進クラスは、目立たない生徒が多い。[p]

その中でも、拓海は特に静かで目立たない存在だった。[p]

あまり他人と話すこともなく、友達も少なかったが、[r]
一人でいることに不満はなかった。[p]

むしろ、一人の時間は考え事をするのにちょうど良く、[r]
夢想にふけるのが心地よかった。[p]

[wait time=1000]

*ch2_flashback_toilet

[bg storage="black.png" time=500]
[wait time=500]
[font speed=45]
[fadeoutse time=2000]
[playbgm storage="suspense.ogg" loop=true volume=60 fadein=true time=1500]
そんな拓海の静かな日常が一変したのは、[r]
一年生の頃だった。[p]

[wait time=500]

*ch2_tatsuya_toilet_choice_retry
12月の寒い冬の放課後――。[p]
[playse storage=se/washroom.ogg volume=100]
[bg storage="bg_washroom_day.webp" time=800]
トイレに入ると、そこには二人の生徒が立っていた。[p]

片方は、背が高く黒髪の強面。[r]
どこかで見覚えがある顔だった。[p]

あとから分かったことだが、[r]
それが龍也だった。[p]

[auto_chara name="龍也" face="normal"]
もう片方は小柄で、明らかに怯えている様子の生徒。[p]

何か険悪な雰囲気が漂っていたが、[r]
拓海は目を合わせないように用を済ませることにした。[p]

便器に向かいながらも、二人の様子をうかがっている。[p]

[wait time=500]

すると――[p]

[wait time=500]

「もうこれで最後にしてよ」[p]

小さな声が聞こえてきた。[p]

気になって横を見ると、[r]
龍也が一万円札をチョキの指で挟んでいた。[p]

「いつもありがとうな」[p]

[chara_hide_all time=300]
[wait time=500]

[font speed=70]
金を巻き上げているんだ！[p]
[font speed=45]

その姿に、拓海の胸の奥で何かが沸き上がった。[p]

この生徒は、今後もずっとお金を奪われ続けるのだろう――[p]

そう思うと、抑えきれない怒りがこみ上げてきた。[p]

[jump target="*ch2_tatsuya_toilet_choice"]

[cm]
[chara_hide_all time=0]
どうする？
*ch2_tatsuya_toilet_choice
[choice_start count=2]
[choice name="choice_ch2_call_tatsuya" text="龍也に声をかける" target="*ch2_call_tatsuya"]
[choice name="choice_ch2_ignore_tatsuya" text="見なかったことにする" target="*ch2_ignore_tatsuya"]
[s]

*ch2_call_tatsuya
[cm]

そして、気がつくと、[r]
自分でも驚くほど静かに言葉が出ていた。[p]

[auto_chara name="拓海" face="level1_normal"]
「お前……お金返してやれよ」[p]

[chara_hide_all time=300]
[wait time=500]

その一言が、場の空気を一変させた。[p]

龍也は一瞬、目を細めて拓海を見た。[p]

[auto_chara name="龍也" face="angry"]
「はあ？お前、何か言ったか？」[p]

彼の表情が固まり、眉間にしわが寄る。[p]

[chara_hide_all time=300]
拓海はその質問にどう答えればよいのか分からなかった。[p]

ただ、その生徒の姿がどうしても放っておけなかった。[p]

[auto_chara name="拓海" face="level1_normal"]
「嫌がってるだろ」[p]

自然に口から出た言葉は、[r]
冷静に事実を伝えただけだった。[p]

[auto_chara name="龍也" face="smile"]
「こいつは自分から進んで俺に金を貸してんだよ」[p]

龍也は隣の生徒を親指で指し、[r]
軽口を叩くように言った。[p]

[auto_chara name="拓海" face="level1_normal"]
「そうは……見えないけど」[p]

拓海は視線を外し、声を落とした。[p]

[wait time=500]

[playse storage=se/hold_down.ogg volume=80]
[quake time=250 hmax=4 vmax=12]
その瞬間、龍也が数歩近づき、拓海の胸ぐらを掴んだ。[p]

拓海の心臓が一瞬止まり、[r]
言葉を飲み込んでしまった。[p]

[auto_chara name="龍也" face="angry"]
「お前、メンドクセーやつ。[l]あとで覚えてろよ」[p]

龍也はそう言い残し、トイレを出ていった。[p]

[playse storage=se/leather_shoes_walk.ogg volume=100]
[chara_hide_all time=300]
[wait time=500]

拓海はその場から動けず、[r]
体が凍りついたように感じた。[p]
[playse storage=se/run.ogg volume=100]
気がつくと、もう一人の生徒もその場を逃げ出していた。[p]

目を合わせることさえ避けるように、無言で去っていった。[p]

拓海は、余計なことをしてしまったのだろうかと思った。[p]

[wait time=1000]

[bg storage="black.png" time=700]
そして、それ以来、いじめの矛先はあの生徒から拓海へと移った。[p]

自分の正義感で行動に出た結果、[r]
身を犠牲にして他人を救うことになったのだ。[p]

[fadeoutbgm time=4000]
[wait time=1000]

[jump target="*ch2_after_rooftop"]

*ch2_ignore_tatsuya
[cm]
[chara_hide_all time=300]
拓海は何も言わず、その場をあとにした。[p]

自分には関係のないことだ。[r]
わざわざ面倒事に首を突っ込む必要なんてない。[p]

それからも、龍也が拓海に絡んでくることはなかった。[p]

当然だ。[p]

拓海と龍也は、関わり合うことのない他人なのだから。[p]

[wait time=1000]
[fadeoutbgm time=1000]

そうだ。[p]

[wait time=700]

あの日、何も起きなかった。[p]

俺は何もしなかった。[p]

[wait time=1200]

……。[p]

[wait time=1500]

あれ？[p]

[delay speed="130"]
じゃあ、[p]
今の僕はなんだ？[p]
[resetdelay]
[wait time=350]
[playse storage=se/short_glitch.ogg volume=80]
[quake time=180 hmax=12 vmax=5]
[playse storage=se/white_noise.ogg volume=65]
[bg storage="white.png" time=60]
[quake time=260 hmax=5 vmax=16]
[bg storage="bg_washroom_day.webp" time=80]
[playse storage=se/short_glitch.ogg volume=100]
[quake time=180 hmax=18 vmax=8]
[fadeoutbgm time=250]
[fadeoutse time=250]
[bg storage="black.png" time=300]
[wait time=300]

[eval exp="f.bad_end_no = 'BAD END 01'"]
[eval exp="f.bad_end_title = '俺は縺薙％'"]
[eval exp="f.bad_end_retry_storage = 'chapter2.ks'"]
[eval exp="f.bad_end_retry_target = '*ch2_tatsuya_toilet_choice_retry'"]
[eval exp="f.bad_end_retry_bg = 'bg_washroom_day.webp'"]
@jump storage="badend.ks" target="*bad_end"

*ch2_after_rooftop

[bg storage="bg_classroom_day2.webp" time=800]
[playse storage=se/heartbeat.ogg loop=true volume=100]

腕時計をつけるたびに、タバコの火傷の跡が擦れて痛む。[p]

そして、その痛みと一緒に思い出す。[r]
翔太が二人を避けるようになった理由を。[p]

あの日、翔太に見せた幻覚。[r]
あれ以来、三人の関係は元には戻っていない。[p]

[stopse fadeout=3000]
[wait time=1000]

[playbgm storage="classroom_buzzing.ogg" loop=true volume=100 fadein=true]
翔太はしばらく学校に姿を見せなかった。[p]

ただでさえ茶髪で目立つ生徒だ。[p]

友達も多い翔太が突然いなくなったことで、クラスではさまざまな噂が飛び交った。[p]

しばらくして翔太は登校を再開したが、龍也や綾香とつるむことはなくなった。[p]
むしろ、二人を避けているように見える。[p]

[wait time=500]

拓海は内心、少しだけほっとしていた。[p]
自分を痛めつける人間が一人減ったことで、心が軽くなったのだ。[p]

これでいじめが終わるのではないか――。[p]

そんな淡い希望も抱いた。[p]

[wait time=1000]
[fadeoutbgm time=3000]
[playbgm storage="tension_high.ogg" loop=true volume=60 fadein=true time=1200]
だが、それはすぐに打ち砕かれた。[p]

*ch2_rooftop_accusation

[bg storage="bg_rooftop_day.webp" time=700]
[playse storage=se/wind_rooftop.ogg volume=20]
[wait time=500]

[auto_chara name="龍也" face="angry"]
「お前……翔太に何をしたんだよ」[p]

いつもの昼下がりの屋上。[p]

龍也の指が、拓海の制服の襟に食い込む。[p]

噛みしめた奥歯が、かすかに鳴った。[p]

[auto_chara name="綾香" face="angry"]
「翔太、屋上に来なくなったじゃない！」[p]

綾香が眉を吊り上げ、後ろから詰め寄る。[p]

[auto_chara name="拓海" face="level1_pain"]
「何度も言ってるけど、俺は何もしてない」[p]

拓海は冷静を装いながら弁明する。[p]

しかし、胸倉を掴まれる感触が、拓海の心を揺らしていた。[p]

[auto_chara name="龍也" face="angry"]
「何もなくて、あんな風になるわけないだろ！」[p]

[playse storage=se/punch1.ogg volume=100]
[quake time=300 hmax=4 vmax=18]
龍也が叫び、拓海の胸にパンチを浴びせる。[p]

その衝撃に、拓海は息を飲んだ。[p]

[wait time=500]

屋上の風の音が、一瞬だけ遠のいた。[p]

[auto_chara name="拓海" face="level1_pain"]
「あの時は、押さえつけられてて、動けなかっただろ……」[p]

[auto_chara name="龍也" face="angry"]
「知らねえよ！」[p]

[playse storage=se/punch2.ogg volume=100]
[quake time=220 hmax=2 vmax=8]
龍也はその言葉を遮るように膝蹴りを見舞う。[p]

息が詰まる。[p]

[wait time=400]

「翔太はおかしくなった。[l]俺たちを避けてる」[p]

一瞬、龍也は寂しげな表情になり、目を伏せた。[p]

「お前が何かやったに決まってるだろ！」[p]

再び龍也の手に力がこもる。[p]

[auto_chara name="拓海" face="level1_pain"]
「ちがう……本当に何もやってない」[p]

拓海は必死に息を整える。[p]

「証拠はあるのか？」[p]

[auto_chara name="龍也" face="angry"]
「お前がやった証拠もねぇけど、[l]やってねぇ証拠もねぇだろ！」[p]

[playse storage=se/punch3.ogg volume=100]
[quake time=260 hmax=2 vmax=10]
そう言うと、龍也は拳を振り上げ、[r]
拓海の腹に深くめり込ませた。[p]

声が出ない。[p]

[wait time=600]

拓海は痛みに耐え、[r]
うずくまりながら思考を巡らせる。[p]

[chara_hide_all time=300]
[wait time=500]

やっていないことを証明するのは難しい。[p]

これが「悪魔の証明」というやつだ。[p]

何もしていないことをどう証明すればいい？[p]

そして、ここで真実を話したところで、[r]
もっと酷い目に遭うだけだ――。[p]

拓海はただ嵐が過ぎるのをじっと待つことしかできなかった。[p]

[auto_chara name="龍也" face="normal"]
「お前以外に動機がねえんだよ」[p]

龍也はさらに詰め寄るが、どこか躊躇いがあった。[p]

自分でも確信が持てないのだ。[p]

あの時、確かに自分の手で拓海を押さえつけていた。[p]

身動きひとつ取れない状態の拓海が、[r]
どうやって翔太に何かを仕掛けたというのか？[p]

その方法が、どうしてもわからない。[p]

ただ、あの瞬間、[r]
タバコを拓海の腕に近づけようとした翔太が、突然気が触れたようになった。[p]

それが全てだった。[p]

「何か変なクスリでもやってたのか……？」[p]

龍也は考え込む。[p]

しかし、翔太と行動を共にしていた限りでは、[r]
そんな兆候は感じたことがなかった。[p]

[auto_chara name="綾香" face="anxiety"]
「翔太、本当にどうしちゃったんだろう……」[p]

綾香は、小さな声で足元を見つめてつぶやいた。[p]

その声には、不安と戸惑いが滲んでいた。[p]
[auto_chara name="綾香" face="angry"]
「あんた、何か知ってんじゃないの？」[p]

綾香は顔を上げ、怪訝そうな表情で拓海を睨みつけた。[p]

[chara_hide_all time=300]
[fadeoutbgm time=4000]
[wait time=1000]

*ch2_planning

[bg storage="bg_takumiroom_night.webp" time=900]
[playse storage=se/room_noise.ogg loop=true volume=70 fadein=true time=1200]
家に帰ると、拓海は静かに机に向かい、パソコンを開いた。[p]

マウスを動かすと、今日殴られた場所が鈍く痛む。[p]

画面を見つめながら、[r]
拓海は心の中であの日の出来事を再び反芻していた。[p]

翔太に見せたあの「幻覚」は、[r]
拓海自身だけでなく、他人にも効果があることを示していた。[p]

それは、単なる偶然ではなく、明確な力。[p]

しかもその力は、[r]
自分の想像や知識である程度コントロールできることも分かっていた。[p]
[fadeoutbgm time=3000]
[wait time=500]
[playbgm storage="psycho.ogg" loop=true volume=50 fadein=true time=1500]

強い憎悪と恐ろしい幻。[p]

恐怖で壊れたような翔太の顔を思い出す。[p]

自分の力で人の心を壊せると悟った瞬間の恐怖と興奮が、[r]
今も心の中に渦巻いている。[p]

そして、この力には一つの大きな利点があった。[p]

[wait time=1000]

[delay speed="100"]
――証拠が残らない、ということだ。[p]
[resetdelay]

[auto_chara name="拓海" face="level1_normal"]
「擬似的とはいえ、傷つけることができる……[l]しかも、法には触れないで済む」[p]

そう自分に言い聞かせるが、[r]
心のどこかでその考えに寒気がした。[p]

[chara_hide_all time=300]
能力の痕跡は残らなくても、誰かが見ている場所で使えば、[r]
自分が何かをしたと疑われるだろう。[p]

相手の行動パターンをじっくりと観察し、[r]
誰にも見られない状況を作らなければならない。[p]

さらに、どのような幻覚を見せるかも重要な課題だ。[p]

現実味がなさすぎると、[r]
ただの夢として片づけられる恐れがある。[p]

ある程度、リアルでなければならない――[p]

敵の考えていることや弱点を探し出すことも必要だろう。[p]

[auto_chara name="拓海" face="level1_smile"]
「皮肉だな……[l]知りたくもない相手のことをよく調べなきゃいけないなんて」[p]

拓海は自嘲気味に笑う。[p]

[chara_hide_all time=300]
問題なのは、既に龍也と綾香の二人は、[r]
翔太が突然おかしくなった理由に疑問を抱いていることだ。[p]

拷問やリンチで問い詰められたら、[r]
耐えられる自信もない。[p]

[auto_chara name="拓海" face="level1_normal"]
「こちらから仕掛けるしかない」[p]

拓海は拳を強く握りしめながら考える。[p]

あの力で二人を追い詰める。[p]

[delay speed="90"]
それによって、日常を取り戻すんだ――[p]
[resetdelay]

そう決意するが、[r]
心のどこかで、ためらいが完全に消えない。[p]

[chara_hide_all time=300]
[wait time=500]

人を傷つけるのは正しいことだろうか？[p]

[wait time=500]

その言葉が浮かんできて邪魔をする。[p]

拓海は目を閉じて深呼吸をした。[p]

龍也たちが自分を傷つけたことを思い返し、感情を抑え込む。[p]

この決意が、揺るがないように。[p]
[fadeoutbgm time=4000]
[wait time=1000]

[playse storage=se/room_noise.ogg loop=true volume=70 fadein=true time=1200 buf="0"]
[playse storage=se/crickets.ogg volume=20 buf="1"]
鈴虫の鳴く声が遠くから響いている。[p]

[wait time=1000]

本当に傷つけるわけじゃない。[p]

ただ、残酷な嘘を見せるだけだ。[p]

[wait time=500]

その時、拓海は思い出した。[p]

AIの黎明期、回答が事実とは異なる内容を、[r]
まるで正解のように返す現象があった。[p]

それを「ハルシネーション」と呼んでいた。[p]

幻覚――拓海が見せるものも、[r]
拓海の知識と想像に基づく“ハルシネーション”なのだ。[p]

鈴虫の声だけが、夜の静けさに細く残っている。[p]

[wait time=600]
[playse storage=se/keyboard_typing.ogg volume=100 buf="2"]
拓海はパソコンのメモのタイトルに、[r]
「ハルシネーション」と打ち込んだ。[p]

画面の白い文字をしばらく見つめ、[r]
静かにパソコンを閉じた。[p]

[fadeoutbgm time=3000]
[fadeoutse time=3000]
[wait time=1000]

*ch2_target_ayaka

[bg storage="bg_classroom_day.webp" time=800]
[playbgm storage="tension_low.ogg" loop=true volume=100 fadein=true time=1200]
次のターゲットは綾香だ。[p]

拓海は毎日、そのことばかり考えていた。[p]

中間試験まであと一か月を切ったというのに、[r]
授業に集中ができない。[p]

綾香をどう追い詰めるか。[p]

何度も頭の中でシミュレーションを繰り返すが、[r]
決定的な方法が見つからなかった。[p]

[wait time=500]

ある日、綾香の情報を整理しているとき、ふと思い出した。[p]

綾香がコンビニで働いているということを。[p]

翔太のタバコは、綾香がバイト先で工面していたのだった。[p]

[auto_chara name="拓海" face="level2_normal"]
「もし、どこのコンビニで働いているか分かれば……」[p]

拓海は手を握りしめた。[p]

店の場所がわかれば、待ち伏せができる。[p]

学校の人間の目を避け、[r]
狙ったタイミングで動けるはずだ。[p]

だが、それにはまず、[r]
綾香のシフトや勤務先を探り出す必要があった。[p]

[chara_hide_all time=300]
しかし、ここで手詰まりになった。[p]

拓海は舌打ちをする。[p]

綾香に直接聞くわけにはいかない。[p]

そんなことをすれば、不自然すぎるし、疑いを招いてしまう。[p]

尾行することも考えたが、素人の自分にそんなことができるのか？[p]

実際に尾行するとなれば、[r]
緊張で失敗するのが目に見えていた。[p]

[auto_chara name="拓海" face="level2_normal"]
「せめて、住所や最寄り駅がわかれば……」[p]

拓海は深くため息をつく。[p]

最寄り駅さえ分かれば、[r]
その周辺のコンビニを調べて回ることができる。[p]

しかし、情報は手に入らない。[p]

綾香がどこに住んでいるのか、[r]
誰も教えてくれるはずがない。[p]

[chara_hide_all time=300]
もっと友達がいれば、こんな苦労はしなかったはずだ。[p]

拓海は一人でいることには慣れていたが、[r]
こういう時ばかりは孤立が痛かった。[p]

クラスの噂話に加わるだけで、[r]
綾香のことも簡単に聞き出せただろう。[p]

だが、今は自分の力だけで何とかするしかない。[p]

[wait time=500]

[bg storage="bg_hallway_day.webp" time=700]
そんな中、ある日の放課後、[r]
拓海は廊下の先に見えた二人の姿に足を止めた。[p]
[cg storage="ch2_ayaka_and_megumi.webp"]
[bg storage="ch2_ayaka_and_megumi.webp" time=700]
綾香が、同じクラスの菊池恵と一緒に帰っている姿を見かけたのだ。[p]

恵は特に親しいわけでもないが、クラスメイトだ。[p]

しめた、と拓海は思った。[p]

恵なら、綾香が働く店についてさりげなく聞き出せそうだ。[p]

[wait time=500]
[bg storage="black.png" time=500]
これだ……これで計画が動き出す。[p]

拓海は、無意識に頬を緩めた。[p]

ようやく、手詰まりだった計画に糸口が見えた。[p]

[fadeoutbgm time=4000]
[wait time=1000]

*ch2_retry_context_megumi_approach
*ch2_megumi_conversation

[bg storage="bg_classroom_day2.webp" time=800]
[playbgm storage="classroom_buzzing.ogg" volume=100 fadein=true]
早速、動き出すことに決めた翌日のことだ。[p]

拓海は教室の後ろで机に座り、[r]
窓の外にぼんやりと視線を向けていた。[p]

拓海の心とは裏腹に、鮮やかな太陽が雲の隙間から今にも抜け出さんとしている。[p]

心の中で何度も計画を確認しながら、[r]
視線を恵の方に移した。[p]

恵は三時限目の授業開始前、[r]
黙々と数学の教科書を広げていた。[p]

[wait time=500]

今がチャンスだ。[p]

[playse storage=se/chair.ogg volume=100]
[wait time=500]
拓海は心の中でそう決意し、ゆっくりと席を立つ。[p]

[playse storage=se/heartbeat.ogg loop=true volume=100]
心臓がやけに早く脈打つのを感じながら、[r]
静かに恵の方へと歩み寄る。[p]

*ch2_choice_megumi_approach
[cm]
どうやって話し掛けようか。
[free layer="fix" name="bad_end_number"]
[free layer="fix" name="bad_end_title"]
[choice_start count=2]
[choice name="choice_ch2_megumi_good" text="塾の話から切り出す" target="*ch2_megumi_approach_good"]
[choice name="choice_ch2_megumi_bad" text="いきなり綾香のことを聞く" target="*ch2_megumi_approach_bad"]
[s]

*ch2_megumi_approach_good
[cm]
[auto_chara name="拓海" face="level2_smile"]
「菊池さん、ちょっといいかな」[p]

[auto_chara name="恵" face="normal" time=500]
恵は顔を上げ、明るい笑顔を浮かべた。[p]

拓海は、そのほほ笑みに少し面食らった。[p]

恵は特に目立つタイプではないが、[r]
男子たちの間で人気があることは知っていた。[p]

「うん。どうしたの？」[p]

[auto_chara name="拓海" face="level2_normal"]
一瞬動揺しながらも、拓海はすぐに頭を切り替える。[p]
[auto_chara name="拓海" face="level2_smile"]
「菊池さん、塾とか行ってるのかなと思ってさ」[p]

勉強の話題なら、高校生同士であれば自然だ。[p]

自分の声が少し硬いのを感じたが、[r]
顔には出さないように努めた。[p]

[auto_chara name="恵" face="normal"]
「塾行ってるよ。[l]二年生になってから、そろそろ本格的に準備しないとって思って、[r]
4月から通い始めたの」[p]

恵は穏やかに答える。[p]

[auto_chara name="拓海" face="level2_smile"]
「へえ、準備が早いね」[p]

拓海は、軽く頷きながら続けた。[p]

恵の塾の話が本当に気になっているわけではない。[p]

ただ、話を続けるための布石だ。[p]

[auto_chara name="恵" face="normal"]
「そんなことないよ。[l]早い子は一年生から行ってるし」[p]

[auto_chara name="拓海" face="level2_surprise"]
「そうなんだ！」[p]

拓海は少し驚いた表情を見せ、軽く後ろにのけぞった。[p]

わざとらしく見えないよう頷きながら、[r]
本題を切り出す機会をうかがう。[p]
[auto_chara name="拓海" face="level2_smile"]
「最近、勉強に集中できなくて、[l]そろそろ塾でも行こうかなって思ってたんだ」[p]

前半部分だけは本当だ。[p]

[auto_chara name="恵" face="normal"]
「永山くんは塾も行かずに、[l]あの成績をキープしてるなんて、すごいよ」[p]

恵は感心したように言う。[p]

永山というのは、拓海の名字だ。[p]

恵の素直な褒め言葉に、拓海は少し居心地の悪さを感じた。[p]

普段、クラスメイトからこんな風に褒められることはほとんどない。[p]

[wait time=400]

[auto_chara name="拓海" face="level2_smile"]
「いやいや、そんなことないよ。[l]毎回テスト前に焦って、徹夜で何とかしてるだけだよ」[p]

[auto_chara name="恵" face="surprise"]
「ええ！[l]全然そんな焦ってる感じ出さないのに」[p]

[auto_chara name="拓海" face="level2_smile"]
「必死なのがバレると恥ずかしいから、隠してるだけ」[p]

[auto_chara name="恵" face="laugh"]
「あはは、何それ」[p]

恵が楽しそうに笑った。[p]

[auto_chara name="恵" face="normal"]
「でも、ちょっと意外かも。[l]永山くんって、何でも一人で淡々とやってるイメージだったから」[p]

[auto_chara name="拓海" face="level2_normal"]
「そんな風に見えてたんだ」[p]

「うん。[l]あんまり人に頼ったりしなさそう」[p]

その言葉に、拓海は少しだけ返事に詰まった。[p]

別に好きで一人でいるわけじゃない。[p]

そう言いかけて、やめた。[p]

[wait time=500]

[auto_chara name="拓海" face="level2_smile"]
「まあ、塾に行こうとしてる時点で、そろそろ一人じゃ限界なのかもね」[p]

[auto_chara name="恵" face="laugh"]
「ふふ、塾に行くのは悪いことじゃないからね？」[p]

[stopse fadeout=700]
[chara_hide_all time=300]

会話は思いのほかスムーズに進んでいる。[p]

綾香のことを聞き出すために話しかけただけだったが、[r]
恵とは思っていたより話しやすかった。[p]

[wait time=500]

[auto_chara name="拓海" face="level2_smile"]
「それでさ、いつも優秀な菊池さんが[r]
どんな塾に通ってるのかなって思って」[p]

[auto_chara name="恵" face="laugh"]
「ええ～、そんな風に言われるとちょっと照れちゃうな」[p]

恵は照れくさそうに笑い、塾の名前を教えてくれた。[p]

それはフランチャイズ系の塾で、[r]
どこの駅にもあるようなものだった。[p]

[chara_hide_all time=300]
[wait time=500]
[fadeoutbgm time=4000]
拓海は話を聞きながら、[r]
ついに本題に入る決意を固めた。[p]

[playbgm storage="suspense.ogg" loop=true volume=60 fadein=true time=1000]
[auto_chara name="拓海" face="level2_normal"]
「ところでさ……」[p]

できるだけ自然な口調を心がける。[p]

「五組の上田さんと友達なの？[l]
昨日、一緒に帰っているのを見かけたんだけど」[p]

[auto_chara name="恵" face="normal"]
「綾香？うん、昨日はたまたま一緒に帰ったんだよ。[l]
中学の時、塾が一緒だったから」[p]

[auto_chara name="拓海" face="level2_normal"]
「そうなんだ。[l]顔見知りだから、ちょっと気になってさ」[p]

拓海は逸る気持ちを抑え、[r]
慎重に言葉を選んだ。[p]

「あれ、菊池さんって上田さんと同じ中学じゃなかったんだ？」[p]

[auto_chara name="恵" face="normal"]
「うん、私は青葉中で、綾香は桜木中だったと思うよ」[p]

[chara_hide_all time=300]
[wait time=500]

どちらも拓海の聞いたことのある公立の中学校の名前だった。[p]

拓海はそのとき、[r]
「これは有力な情報が聞けたぞ」と思った。[p]

バイト先は聞けなかったが、手掛かりは手に入れた。[p]

拓海は微かに口角を上げながら、[r]
塾の話へ戻して会話を切り上げる機会を探した。[p]

これ以上欲張れば、きっと怪しまれる。[p]

[auto_chara name="拓海" face="level2_smile"]
「そっか、ありがと。[l]塾のこと、参考にしてみるよ」[p]

[chara_hide_all time=300]
[fadeoutbgm time=4000]
拓海は逸る気持ちを隠し、何食わぬ顔で自分の席へ戻った。[p]

しかし、その内心では計画が大きく一歩前進した感覚があった。[p]

[wait time=1000]

*ch2_mapping

[bg storage="bg_takumiroom_night.webp" time=900]
[playbgm storage="tension_low.ogg" loop=true volume=100 fadein=true time=1200]
[playse storage=se/keyboard_typing.ogg volume=100]
家に帰ると、拓海は早速パソコンを開き、[r]
桜木中学の学区を調べ始めた。[p]

部屋は静まり返り、時計の針の音だけが響いている。[p]

外はすでに暗く、[r]
窓の外からは車の走る音がかすかに聞こえてくる。[p]

拓海は画面に映る地図を見つめながら、[r]
綾香の自宅の大まかな位置と最寄り駅を割り出した。[p]

[wait time=500]

次はバイト先だ……。[p]

拓海は高校の最寄り駅から綾香の自宅までのルートに沿って、[r]
近くのコンビニをマッピングしていく。[p]

薄暗い部屋の中で、キーボードを叩く音が響く。[p]

結果、五件のコンビニが表示された。[p]

しかし、そのうちいくつかは、[r]
綾香がバイトする可能性は低いとすぐに判断できた。[p]

途中下車してまで、他の駅でバイトするとは考えづらいからだ。[p]

[wait time=500]

そう頭の中で整理しながら、[r]
最寄り駅の北口と南口にある二件のコンビニに絞り込んだ。[p]

綾香の自宅は南口側だ。[p]

普通に考えれば、[r]
南口のコンビニで働いていると考えるのが自然だった。[p]

[wait time=500]

だが、決めつけるのはまだ早い。[p]

まずは、どちらのコンビニを調べるべきだろうか。

[choice_start count=2]
[choice name="choice_ch2_store_north" text="北口のコンビニを調べる" target="*ch2_store_north"]
[choice name="choice_ch2_store_south" text="南口のコンビニを調べる" target="*ch2_store_south"]
[s]

*ch2_store_north
[cm]
拓海は北口のコンビニの情報を開いた。[p]

自宅とは反対側だが、[r]
だからこそ知り合いに会う可能性は低い。[p]

もし自分が綾香の立場なら――。[p]

人目を避けられる店を選ぶ。[p]

その方が自然な気がした。[p]

推理が形を取るにつれ、意識が画面の地図へ吸い込まれていく。[p]

[wait time=500]

北口周辺の地図を目で追ううちに、[r]
頭の中で点と点が一本の線になっていく。[p]

@jump target="*ch2_store_common_route"

*ch2_store_south
[cm]
拓海は南口のコンビニを開いた。[p]

やはり自宅から近い。[p]

通勤時間を考えれば、[r]
この店が一番有力に思える。[p]

近さというわかりやすい根拠が、拓海の判断を後押しする。[p]

[wait time=500]

このまま南口を調べればいい。[p]

そう結論づけかけたところで、[r]
拓海は手を止めた。[p]

画面をじっと見つめる。[p]

本当に、ここでいいのか。[p]

違和感が胸にわき上がってくる。[p]

*ch2_store_common_route
[fadeoutbgm time=3000]
[wait time=500]

南口のコンビニは桜木中の学区のど真ん中にある。[p]

中学時代の知り合いがたくさん来るコンビニでバイトするだろうか？[p]

自分だったら願い下げだ。[p]

そんな場所で働くのは気が散るし、気まず過ぎる。[p]

[wait time=1000]
[playbgm storage="suspense.ogg" loop=true volume=60 fadein=true time=1000]

じゃあ、反対方向にある北口のコンビニか……。[p]

一度は南口だと考えた推理を、[r]
拓海は頭の中で組み直した。[p]

彼はさらに地図を拡大しながら、[r]
綾香がバイトしているコンビニがその店であると仮説を立てた。[p]

画面上の地図と頭の中の推理がぴったりと合致した瞬間、[r]
拓海の胸の奥で小さな達成感が広がった。[p]

[wait time=500]

[font speed=70]
これでいける。[p]
[font speed=50]

拓海は仮説が正しいことを確信し、[r]
次の行動へと気持ちを固めた。[p]

実際、その仮説は見事に当たっていたのだ。[p]

[fadeoutbgm time=4000]
[wait time=1000]

@jump storage="chapter3.ks" target="*chapter3"

*ch2_megumi_approach_bad
[cm]
[auto_chara name="拓海" face="level2_normal"]
「五組の上田さんと友達だよね？」[p]

[auto_chara name="恵" face="normal"]
恵は、少しだけ不思議そうに目を丸くした。[p]

「え……急にどうしたの？」[p]

[auto_chara name="拓海" face="level2_surprise"]
しまった。[p]

早すぎた。[p]

まだ普通に話せる関係ですらない相手に、[r]
いきなり綾香の名前を出すべきではなかった。[p]

[auto_chara name="拓海" face="level2_normal"]
「いや……なんでもない」[p]

[auto_chara name="恵" face="normal"]
「そう……？」[p]

恵はそれ以上追及しなかった。[r]
けれど、その表情には小さな警戒が残っていた。[p]

[chara_hide_all]

その後、拓海は自然に会話を続けることができなかった。[p]

綾香の中学も、住んでいる地域も、バイト先の手がかりも。[r]
何ひとつ掴めないまま、時間だけが過ぎていった。[p]

復讐の計画は、そこで止まった。[p]

龍也たちのいじめは終わらない。[p]

明日も、明後日も、[r]
変わらない日常が続いていく――[p]

*ch2_megumi_approach_continue
[eval exp="f.bad_end_no = 'BAD END 02'"]
[eval exp="f.bad_end_title = '変えられなかった日常'"]
[eval exp="f.bad_end_retry_storage = 'chapter2.ks'"]
[eval exp="f.bad_end_retry_target = '*ch2_retry_context_megumi_approach'"]
[eval exp="f.bad_end_retry_bg = 'bg_classroom_day2.webp'"]
@jump storage="badend.ks" target="*bad_end"

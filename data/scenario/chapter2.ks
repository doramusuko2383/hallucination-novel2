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

[chapter_title number="第二章" title="報復"]
[font speed=50]

[bg storage="bg_station_morning.webp" time=800]
[playbgm storage="morning_city.ogg" loop=true volume=45 fadein=true time=300]
[playse storage=se/tukutukuboushi.ogg  loop=true volume=45 fadein=true time=300]
9月に入ったというのに、まだまだ暑い日が続いている。[l][r]
シャツの中に着た下着に汗が染み込んでいく。[p]

[wait time=500]

朝の強い日差しの中、[r]
校舎まで人目を避けるように歩く。[p]

[wait time=500]
[fadeoutbgm time=3000]
[fadeoutse time=800]
[bg storage="bg_classroom_day.webp" time=700]
[playbgm storage="classroom_buzzing.ogg" loop=true volume=50 fadein=true]
拓海の通う黒森学園高校は、県内でも中堅クラスの私立高校である。[p]

中高一貫校だが、[r]
高校から一般受験で入学することもできる。[p]

拓海は高校受験で入学したが、入学試験の成績が良かったため、[r]
特別進学クラスという、難関大学への入学を目指すクラスに在籍していた。[p]

[wait time=500]
[playse storage=se/black_board.ogg volume=50]
英語の授業中、隣の席をちらっと見ると、[r]
生徒がこっそり古文の問題集を開いている。[p]

彼は帰国子女で英語が完璧なので、[r]
苦手科目の勉強時間に充てているようだ。[p]

彼以外にもずば抜けて勉強の出来る生徒が多く、[r]
各中学校から秀才が集まってきていた。[p]

とは言っても、普通科を含めた学校自体の進学実績はそこそこであった。[p]

[wait time=500]

しかし、制服を有名なデザイナーがデザインしたとかで定評があり、[r]
その人気が学校の倍率を実力以上に押し上げている様だった。[p]

拓海からしたら、他校と比べてそんなに優れているとも思えない様な、[r]
普通のブレザーにシンプルなネクタイの制服だ。[p]

[wait time=500]
[fadeoutbgm time=3000]
*ch2_hallway

[bg storage="bg_hallway_day.webp" time=700]
[playse storage=se/hallway_ambience.ogg loop=true volume=50 fadein=true]
拓海は移動教室のために廊下を歩いている。[p]

校舎は古びたコンクリートの建物で、[r]
夏でも不思議なほど冷たさを感じる寒々しい空間だ。[p]

[wait time=500]

廊下から中庭を見ると、[r]
龍也と翔太が談笑している姿が見えた。[p]

[wait time=500]
[fadeoutse time=800]
[playbgm storage="tension_low.ogg" loop=true volume=45 fadein=true time=1200]
あいつらがまだ学校にいるのが、奇跡なんだ。[p]

拓海はそう思った。[p]

生徒の大半は、大学進学を目指して日々の授業やクラブ活動に勤しんでいるが、[r]
学年に何人かは問題を起こす生徒もいた。[p]

[wait time=500]

龍也もそんな生徒のうちの一人だった。[p]

もっとも、彼は最初から問題児だったわけではない。[p]

入学当初はサッカー部でエース候補として、[r]
真面目に練習に打ち込んでいた。[p]

素行の悪さはあったが、[r]
不良と呼ばれるほどの生徒でもなかったらしい。[p]

恵まれた体格と、持ち前の運動神経の良さで、[r]
すぐにレギュラーを獲得した。[p]

だが、それをよく思わなかった上級生から嫌がらせをされるようになった。[p]

[wait time=500]
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
[auto_chara name="翔太" face="normal"]
それが同じサッカー部の翔太だった。[p]

翔太は元々サッカー部を辞めたいなと思っていたし、[r]
髪を染めたかったというのも大きな理由の一つである。[p]

最後に嫌いだった先輩達への嫌がらせをしたかったのだ。[p]
[chara_hide_all time=300]
結果的に、その嫌がらせの証拠が考慮され、[r]
龍也は退学を免れた。[p]

1ヶ月の停学処分になり、サッカー部は退部になった。[p]
その頃から二人はよくつるむようになった。[p]

[wait time=500]
[fadeoutbgm time=3000]
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
[playbgm storage="suspense.ogg" loop=true volume=55 fadein=true time=1500]
そんな拓海の静かな日常が一変したのは、[r]
一年生の頃だった。[p]

[wait time=500]

12月の寒い冬の放課後――。[p]
[playse storage=se/washroom.ogg volume=50]
[bg storage="bg_washroom_day.webp" time=800]
トイレに入ると、そこには二人の生徒が立っていた。[p]

片方は、背が高く黒髪の強面。[r]
どこかで見覚えがある顔だった。[p]

あとから分かったことだが、[r]
それが龍也だった。[p]

[auto_chara name="龍也" face="normal"]
もう片方は小柄で、明らかに怯えている様子の生徒。[p]

何か険悪な雰囲気が漂っていたが、[r]
拓海は目を合わせない様に用を済ませることにした。[p]

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

そして、気がつくと、[r]
自分でも驚くほど静かに言葉が出ていた。[p]

[auto_chara name="拓海" face="level1_normal"]
「お前……お金返してやれよ」[p]

[chara_hide_all time=300]
[wait time=500]

その一言が、場の空気を一変させた。[p]

龍也は一瞬、目を細めて拓海を見た。[p]

[auto_chara name="龍也" face="angry"]
「はあ？　お前、何か言ったか？」[p]

龍也の表情が固まり、眉間にしわが寄る。[p]

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

[playse storage=se/hold_down.ogg volume=35]
[quake time=250 hmax=4 vmax=12]
その瞬間、龍也が数歩近づき、拓海の胸ぐらを掴んだ。[p]

拓海の心臓が一瞬止まり、[r]
言葉を飲み込んでしまった。[p]

[auto_chara name="龍也" face="angry"]
「お前、メンドクセーやつ。[l]あとで覚えてろよ」[p]

龍也はそう言い残し、トイレを出ていった。[p]

[playse storage=se/leather_shoes_walk.ogg volume=50]
[chara_hide_all time=300]
[wait time=500]

拓海はその場から動けず、[r]
体が凍りついたように感じた。[p]
[playse storage=se/run.ogg volume=35]
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

*ch2_after_rooftop

[bg storage="bg_classroom_day2.webp" time=800]
[playse storage=se/heartbeat.ogg loop=true volume=18]
腕時計をつけるたびに、タバコの火傷の跡が擦れて痛む。[p]

それを見ると、あの日の出来事が鮮明に蘇る。[p]

屋上での事件を境に、[r]
三人の関係は大きく変わっていった。[p]

[stopse fadeout=800]
[wait time=500]

翔太はしばらく学校に姿を見せなかった。[p]

ただでさえ茶髪で目立つ生徒だ。[p]

友達も多い彼が突然いなくなったことで、[r]
クラスではさまざまな噂が飛び交った。[p]

それでも、しばらくしてから翔太は元気に登校を再開した。[p]

だが、以前のように龍也や綾香とつるむことはなくなっていた。[p]

むしろ、二人を避けているように見えた。[p]

[wait time=500]

拓海は内心、少しだけほっとしていた。[p]

自分を痛めつける人間が一人減ったことで、[r]
心が軽くなったのだ。[p]

これでいじめが終わるのではないか――。[p]

そんな淡い希望も抱いた。[p]

[wait time=1000]

[playbgm storage="tension_high.ogg" loop=true volume=50 fadein=true time=1200]
だが、それはすぐに打ち砕かれた。[p]

*ch2_rooftop_accusation

[bg storage="bg_rooftop_day.webp" time=700]
[playse storage=se/wind_rooftop.ogg volume=18]
[wait time=500]

[auto_chara name="龍也" face="angry"]
「お前……翔太に何をしたんだよ」[p]

いつもの昼下がりの屋上。[p]

龍也が拓海の胸倉を掴み、怒りを露わにする。[p]

その目には、激しい感情が宿っていた。[p]

[auto_chara name="綾香" face="angry"]
「翔太、屋上に来なくなったじゃない！」[p]

綾香が後ろから声を上げる。[r]
彼女の声には苛立ちが含まれていた。[p]

[auto_chara name="拓海" face="level1_pain"]
「何度も言ってるけど、俺は何もしてない」[p]

拓海は冷静を装いながら弁明する。[p]

しかし、胸倉を掴まれる感触が、彼の心を揺らしていた。[p]

[auto_chara name="龍也" face="angry"]
「何もなくて、あんな風になるわけないだろ！」[p]

[playse storage=se/punch1.ogg volume=35]
[quake time=300 hmax=4 vmax=18]
龍也が叫び、拓海の胸にパンチを浴びせる。[p]

その衝撃に、拓海は息を飲んだ。[p]

[auto_chara name="拓海" face="level1_pain"]
「あの時は、押さえつけられてて、動けなかっただろ……」[p]

[auto_chara name="龍也" face="angry"]
「知らねえよ！」[p]

[playse storage=se/punch2.ogg volume=35]
[quake time=350 hmax=5 vmax=20]
龍也はその言葉を遮るように膝蹴りを見舞う。[p]

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

[playse storage=se/punch3.ogg volume=40]
[quake time=450 hmax=6 vmax=24]
そう言うと、龍也は拳を振り上げ、[r]
拓海の腹に深くめり込ませた。[p]

拓海は痛みに耐え、[r]
うずくまりながら思考を巡らせる。[p]

[chara_hide_all time=300]
[wait time=500]

やっていないことを証明するのは難しい。[p]

これが「悪魔の証明」というやつだ。[p]

何もしていないことをどう証明すればいい？[p]

そして、ここで真実を話したところで、[r]
もっと酷い目に遭うだけだ――。[p]

拓海はただ嵐が過ぎるのをじっと待つことしか出来なかった。[p]

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
[playse storage=se/room_noise.ogg loop=true volume=50 fadein=true time=1200]
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
[playbgm storage="psycho.ogg" loop=true volume=45 fadein=true time=1500]

強い憎悪と恐ろしい幻。[p]

恐怖で壊れたような翔太の顔を思い出す。[p]

「人を傷つけることができる」と理解した瞬間の恐怖と興奮が、[r]
今も心の中に渦巻いている。[p]

そして、この力には一つの大きな利点があった。[p]

[wait time=1000]

――証拠が残らない、ということだ。[p]

[auto_chara name="拓海" face="level1_normal"]
「擬似的とはいえ、傷つけることができる……[l]しかも、法には触れないで済む」[p]

そう自分に言い聞かせるが、[r]
心のどこかでその考えに寒気がした。[p]

[chara_hide_all time=300]
証拠が残らないとはいえ、誰かが見ている場所では、[r]
何かをやったことがすぐにバレるだろう。[p]

相手の行動パターンをじっくりと観察し、[r]
誰にも見られない状況を作らなければならない。[p]

さらに、どのような幻覚を見せるかも重要な課題だ。[p]

現実味がなさすぎると、[r]
ただの夢だと思われてしまうかもしれない。[p]

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

それによって、日常を取り戻すんだ――[p]

そう決意するが、[r]
心のどこかで、ためらいが完全に消えない。[p]

[chara_hide_all time=300]
[wait time=500]

人を傷つけるのは正しいことだろうか？[p]

[wait time=500]

その言葉が浮かんできて邪魔をする。[p]

拓海は目を閉じて深呼吸をした。[p]

彼らが自分を傷つけたことを思い返し、感情を抑え込む。[p]

この決意が、揺るがないように。[p]
[fadeoutbgm time=4000]
[wait time=1000]

[playse storage=se/crickets.ogg volume=10]
鈴虫の鳴く声が遠くから響いている。[p]

[wait time=1000]

本当に傷つけるわけじゃない。[p]

ただ、残酷な嘘を見せるだけだ。[p]

[wait time=500]

その時、拓海は思い出した。[p]

AIの黎明期、まだ回答の精度が低かった頃、[r]
事実とは異なる答えをまるで正解のように返す現象があった。[p]

それを「ハルシネーション」と呼んでいた。[p]

それは医学用語の「幻覚」と同じ意味だ。[p]

そして、拓海が見せる幻もまた、[r]
彼の知識と想像に基づく“ハルシネーション”なのだ。[p]

[playse storage=se/keyboard_typing.ogg volume=50]
彼はパソコンのメモのタイトルに、[r]
「ハルシネーション」と打ち込み、静かにパソコンを閉じた。[p]

[fadeoutbgm time=3000]
[wait time=1000]

*ch2_target_ayaka

[bg storage="bg_classroom_day.webp" time=800]
[playbgm storage="tension_low.ogg" loop=true volume=100 fadein=true time=1200]
次のターゲットは綾香だ。[p]

拓海は毎日、そのことばかり考えていた。[p]

中間試験まであと1か月を切ったというのに、[r]
授業に集中が出来ない。[p]

彼女をどう追い詰めるか。[p]

何度も頭の中でシミュレーションを繰り返すが、[r]
決定的な方法が見つからなかった。[p]

[wait time=500]

ある日、綾香の情報を整理している時、ふと思い出した。[p]

彼女がコンビニでアルバイトをしているということを。[p]

翔太のタバコは、綾香がバイト先で工面していたのだった。[p]

[auto_chara name="拓海" face="level2_normal"]
「もし、どこのコンビニで働いているか分かれば……」[p]

拓海は手を握りしめた。[p]

バイト先がわかれば、待ち伏せができる。[p]

学校の誰にも見つからないように、[r]
完璧なタイミングで動けるかもしれない。[p]

だが、それにはまず、[r]
綾香のシフトやバイト先を探り出す必要があった。[p]

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

彼女がどこに住んでいるのか、[r]
誰も教えてくれるはずがない。[p]

[chara_hide_all time=300]
もっと友達がいれば、こんな苦労はしなかったはずだ。[p]

拓海は一人でいることには慣れていたが、[r]
こういう時ばかりは孤立が痛かった。[p]

友達がいれば、[r]
噂話から綾香のことを簡単に引き出せただろう。[p]

だが、今は自分の力だけで何とかするしかない。[p]

[wait time=500]

[bg storage="bg_hallway_day.webp" time=700]
そんな中、ある日、放課後ふと目に入った光景が、[r]
拓海の胸を騒がせた。[p]
[bg storage="ch2_ayaka_and_megumi.webp" time=700]
綾香が、同じクラスの菊池恵と一緒に帰っている姿を見かけたのだ。[p]

恵は特に親しいわけでもないが、クラスメイトだ。[p]

しめた、と拓海は思った。[p]

彼女なら、自然な流れで綾香のバイト先について聞き出せるかもしれない。[p]

[wait time=500]
[bg storage="black.png" time=500]
これだ……これで計画が動き出す。[p]

拓海は、無意識に頬を緩めた。[p]

今度こそ、次の一手が見つかったのだ。[p]

[fadeoutbgm time=4000]
[wait time=1000]

*ch2_megumi_conversation

[bg storage="bg_classroom_day2.webp" time=800]
[playbgm storage="classroom_buzzing.ogg" volume=70 fadein=true]
早速、動き出すことに決めた翌日のことだ。[p]

拓海は教室の後ろで机に座り、[r]
窓の外にぼんやりと視線を向けていた。[p]

拓海の心とは裏腹に、鮮やかな太陽が雲の隙間から今にも抜け出さんとしている。[p]

心の中で何度も計画を確認しながら、[r]
視線を恵の方に移した。[p]

彼女は三時限目の授業開始前、[r]
黙々と数学の教科書を広げていた。[p]

[wait time=500]

今がチャンスだ。[p]

[playse storage=se/chair.ogg volume=50]
[wait time=500]
拓海は心の中でそう決意し、ゆっくりと席を立つ。[p]

[playse storage=se/heartbeat.ogg loop=true volume=40]
心臓がやけに早く脈打つのを感じながら、[r]
静かに恵の方へと歩み寄る。[p]

[auto_chara name="拓海" face="level2_smile"]
「菊池さん、ちょっといいかな」[p]

[auto_chara name="恵" face="normal"]
彼女は顔を上げ、明るい笑顔を浮かべた。[p]

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

彼女の塾の話が本当に気になっているわけではない。[p]

ただ、話を続けるための布石だ。[p]

[auto_chara name="恵" face="normal"]
「そんな事ないよ。[l]早い子は一年生から行ってるし」[p]

[auto_chara name="拓海" face="level2_surprise"]
「そうなんだ！」[p]

拓海は少し驚いた表情を見せ、軽く後ろにのけぞった。[p]

わざとらしくないリアクションを心がけながら、[r]
次の一手を考える。[p]
[auto_chara name="拓海" face="level2_smile"]
「最近、勉強に集中できなくて、[l]そろそろ塾でも行こうかなって思ってたんだ」[p]

前半部分だけは本当だ。[p]

[auto_chara name="恵" face="normal"]
「永山くんは塾も行かずに、[l]あの成績をキープしてるなんて、すごいよ」[p]

恵は感心したように言う。[p]

永山というのは、拓海の名字だ。[p]

彼女の素直な褒め言葉に、拓海は少し居心地の悪さを感じた。[p]

だが、これも計画の一部だ。[p]

[auto_chara name="拓海" face="level2_smile"]
「いやいや、そんなことないよ」[p]

拓海は手を振りながら謙遜した。[p]

「毎回テスト前に焦って徹夜で何とかしてるだけだよ」[p]

[auto_chara name="恵" face="surprise"]
「ええ！　全然そんな焦ってる感じ出さないのに」[p]

[stopse fadeout=700]
[chara_hide_all time=300]
会話は思いのほかスムーズに進んでいる。[p]

[auto_chara name="拓海" face="level2_smile"]
「それでさ、いつも優秀な菊池さんが[r]
どんな塾に通ってるのかなって思って」[p]

[auto_chara name="恵" face="laugh"]
「あはは、そんな風に言われるとちょっと照れちゃうな」[p]

恵は照れくさそうに笑い、塾の名前を教えてくれた。[p]

それはフランチャイズ系の塾で、[r]
どこの駅にもあるようなものだった。[p]

[chara_hide_all time=300]
[wait time=500]

拓海は話を聞きながら、[r]
ついに本題に入る決意を固めた。[p]

[playbgm storage="suspense.ogg" loop=true volume=35 fadein=true time=1000]
[auto_chara name="拓海" face="level2_normal"]
「ところでさ……」[p]

できるだけ自然な口調を心がける。[p]

「五組の上田さんと友達なの？[l]
昨日、一緒に帰っているのを見かけたんだけど」[p]

[auto_chara name="恵" face="normal"]
「綾香？　うん、昨日はたまたま一緒に帰ったんだよ。[l]
中学の時、塾が一緒だったから」[p]

[auto_chara name="拓海" face="level2_normal"]
「そうなんだ。[l]顔見知りだから、ちょっと気になってさ」[p]

拓海は、何でもない会話を装いながら、[r]
慎重に言葉を選んでいた。[p]

「あれ、菊池さんって上田さんと同じ中学じゃなかったんだ？」[p]

[auto_chara name="恵" face="normal"]
「うん、私は青葉中で、綾香は桜木中だったと思うよ」[p]

[chara_hide_all time=300]
[wait time=500]

どちらも拓海の聞いたことのある公立の中学校の名前だった。[p]

彼はそのとき、[r]
「これは有力な情報が聞けたぞ」と思った。[p]

バイト先は聞けなかったが、手掛かりは手に入れた。[p]

彼は微かに口角を上げながら、[r]
自然な流れで会話を終わらせる方法を探した。[p]

これ以上長引かせると、何か怪しまれるかもしれない。[p]

[auto_chara name="拓海" face="level2_smile"]
「そっか、ありがと。[l]塾のこと、参考にしてみるよ」[p]

[chara_hide_all time=300]
[fadeoutbgm time=4000]
拓海は静かに席に戻り、机に戻った後も冷静を装っていた。[p]

しかし、その内心では計画が大きく一歩前進した感覚があった。[p]

[wait time=1000]

*ch2_mapping

[bg storage="bg_takumiroom_night.webp" time=900]
[playbgm storage="tension_low.ogg" loop=true volume=40 fadein=true time=1200]
[playse storage=se/keyboard_typing.ogg volume=40]
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

結果、5件のコンビニが表示された。[p]

しかし、そのうちいくつかは、[r]
綾香がバイトする可能性は低いとすぐに判断できた。[p]

途中下車してまで、他の駅でバイトするとは考えづらいからだ。[p]

[wait time=500]

そう頭の中で整理しながら、[r]
最寄り駅の北口と南口にある2件のコンビニに絞り込んだ。[p]

綾香の自宅は南口側だ。[p]

普通に考えれば、[r]
南口のコンビニで働いていると考えるのが自然だった。[p]

部屋の静けさが、彼の集中力を研ぎ澄ませる。[p]

[wait time=500]

だが、そこで拓海は手を止め、画面をじっと見つめた。[p]

違和感が胸にわき上がってくる。[p]

[fadeoutbgm time=3000]
[wait time=500]

南口のコンビニは桜木中の学区のど真ん中にある。[p]

中学時代の知り合いがたくさん来るコンビニでバイトするだろうか？[p]

自分だったら願い下げだ。[p]

そんな場所で働くのは気が散るし、気まず過ぎる。[p]

[wait time=1000]
[playbgm storage="suspense.ogg" loop=true volume=40 fadein=true time=1000]

じゃあ、反対方向にある北口のコンビニか……。[p]

拓海はさらに地図を拡大しながら、[r]
彼女がバイトしているコンビニがその店であると仮説を立てた。[p]

画面上の地図と頭の中の推理がぴったりと合致した瞬間、[r]
拓海の胸の奥で小さな達成感が広がった。[p]

[wait time=500]

[font speed=70]
これでいける。[p]
[font speed=50]

彼は仮説が正しいことを確信し、[r]
次の行動へと気持ちを固めた。[p]

実際、その仮説は見事に当たっていたのだ。[p]

[fadeoutbgm time=4000]
[wait time=1000]

@jump storage="chapter3.ks" target="*chapter3"

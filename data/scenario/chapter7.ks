;第7章

*ch7_start
*chapter7
[scene_title title="第7章"]

[cm]
[chara_hide_all]
[clearfix]
[start_keyconfig]
[showmenubutton]
[chapter_title number="第七章" title="未来"]
[font speed=50]
; chapter_title が再表示したメッセージ枠を、雷鳴後の背景が出るまで隠しておく。
; ここで隠さないと、章タイトル直後の黒画面にメッセージ枠だけが一瞬描画される。
[layopt layer=message0 visible=false]
[playse storage=se/thunder.ogg volume=100 buf="0"]
[wait time=3000]
[bg storage="bg_takumiroom_night.webp" time=800]
[layopt layer=message0 visible=true]

[playse storage=se/smartphone_vibrate.ogg volume=100 buf="1"]
ワックスで髪を整えていた、その時だった。[p]

スマホが震えた。[p]

恵だ。[p]

『家に高田が来た』[p]

[wait time=1000]

拓海はバッグに園芸バサミを放り込んだ。[p]

[playse storage=se/smartphone_vibrate.ogg volume=100]
[wait time=1000]

今度は着信。[p]

恵だった。[p]

「……」[p]

耳に届くのは、食器の音。[p]

水道の音。[p]

誰かの足音だけだった。[p]

「……」[p]

そういうことか。[p]
[playse storage=se/run.ogg volume=100]
[wait time=1000]
[cg storage="ch7_hurrying_bicycle.webp"]
[bg storage="ch7_hurrying_bicycle.webp" time=700]
[wait time=500]
[playbgm storage="chase.ogg" loop=true volume=40 fadein=true time=1000]

間に合え――。[p]
自転車で急げば5分程度の距離だ。[p]
車を追い越す勢いでペダルを漕いだ。[p]

その間も、ずっと会話のやりとりを聞いていた。[p]
[bg storage="bg_megumi_mansion_back.webp" time=700]
会話の内容を聞いて、陳腐なドラマみたいだな、と拓海は思った。[p]

詐欺師の常套手段だ。[p]
相手を不安にさせて心を揺さぶり、自分が救いの手を差し伸べる。[p]

しかも会社の不正が発覚した場合、それは個人レベルで処理できる問題ではない。[p]
法律の問題になれば、外部の監査や警察が関与するのが通常だ。[p]

上司であるだけの高田がそれを抑えることができるとは思えなかった。[p]

[wait time=1000]
しかし、高田があからさまに恵を思い通りにしようとし始めたため、拓海は焦った。[p]

拓海はこのやりとりを客観的な立場から聞くことができるが、恵はどうだろう。[p]

母親の話を出されて、その場の雰囲気で正常な判断ができなくなっている可能性がある。[p]

そうなってくると高田の思う通りになってしまうかもしれない。[p]
[wait time=1000]
それだけは防がなければ！[p]

[bg storage="bg_megumi_mansion_back_entrance.webp" time=500]

[playse storage=se/bicycle_brake.ogg volume=100]
[wait time=2000]
[playse storage=se/bicycle_stand.ogg volume=100]
拓海は恵のマンションの駐輪場に自転車を乗り捨て、壁をよじ登り、裏からマンションに侵入した。[p]

人目を気にしている場合ではない。[p]
そのまま階段を駆け上がる。[p]
[playse storage=se/run.ogg volume=100]
[wait time=1000]
五階にある恵の部屋の玄関に着くと、拓海はドアノブに手をかけた。[p]

[bg storage="black.png" time=0]
[wait time=80]
[playse storage=se/door_open_suddenly.ogg volume=100]
[bg storage="white.png" time=0]
[wait time=1000]
[bg storage="bg_megumi_living_night.webp" time=1000]

拓海はドアを勢いよく開けた。[p]

幸いカギはされていなかった。[p]
玄関からリビングを見渡すが誰もいない！[p]
[playse storage=se/dush.ogg volume=100]
拓海は靴を脱ぎ捨てて家に上がる。[r]
恵はどこだ？[p]
[fadeoutbgm time=4000]
[playbgm storage="tension_high.ogg" loop=true volume=50 fadein=true time=600]
[wait time=500]
[auto_chara name="拓海" face="private2_shout" time=150]
「菊池さん！」[p]
[chara_hide_all]
;[auto_chara name="恵" face="private_help"]
「永山君！助けて！」[p]

恵の部屋からだ。[p]

[cg storage="ch7_battle.webp"]
[bg storage="ch7_battle.webp" time=800]
[playse storage=se/door_open_suddenly.ogg volume=100]
玄関のすぐ隣の部屋のドアを開けた。[p]
恵は部屋の隅に座り込んで、何かを手に持って構えている。[p]

拓海が渡したクマ撃退用スプレーだ。[p]
そのスプレーを下ろさせようと、高田が恵に向き合っていた。[p]

「誰だお前は！」[p]

[bg storage="bg_megumi_room_night_dark.webp" time=500]
[auto_chara name="拓海" face="private2_anxiety"]
「菊池さん、いったんそれを下ろそうか」[p]

拓海は高田を無視して恵に駆け寄り、スプレーを引き受けた。[p]
「何があったのか教えて」[p]

[auto_chara name="恵" face="private_cry"]
「えっと、急に、襲われそうになって……それで」[p]

恵はかろうじて声を出した。[p]
[auto_chara name="拓海" face="private2_anxiety"]
「怪我はない？何かされた？」[p]
[auto_chara name="恵" face="private_cry"]
「服は脱がされそうになったけど……大丈夫だった」[p]

[wait time=500]
[auto_chara name="拓海" face="private2_angry" time=80]
恵のかすれた声に、スプレーを握る手が軋んだ。[p]
「どういうことだ」[p]

高田に詰め寄る。[p]

[auto_chara name="高田" face="anxious"]
「ちょっと待て、俺は何もしていない」[p]

高田は手を前に突き出して否定した。[p]
[auto_chara name="拓海" face="private2_angry"]
「聞いてたぞ」[p]

[auto_chara name="高田" face="confuse"]
「何だって？」[p]
[auto_chara name="拓海" face="private2_angry"]
「お前が嘘出任せで、『協力』しろとか言ってたのも聞いていた」[p]

[auto_chara name="高田" face="badmood"]
「何の話だそれは」[p]

彼はシラを切り通すつもりだ。[p]

[playse storage=se/writer.ogg volume=100]
[auto_chara name="拓海" face="private2_angry"]
「響子さんだけじゃなく、菊池さんにも……」[p]

拓海はカバンからハサミを出して高田に向けた。[p]

[wait time=1000]
;後ずさる音
[auto_chara name="高田" face="pale"]
「なっ……やめろ！」[p]

高田は叫んで後ずさった。[p]

[auto_chara name="拓海" face="private2_angry"]
「刺したりはしない」[p]
「これは俺のお気に入りの園芸バサミだ」[p]
「ご覧の通り刃渡りも短いし、刺すのには向いていない」[p]

「枝とか幹をちょん切るのは、得意なんだがな」[p]

[auto_chara name="恵" face="private_scream"]
「永山君……やめてっ」[p]

恵の悲痛な叫びが部屋にじんわり響いた。[p]

[wait time=1000]
[auto_chara name="拓海" face="private2_normal"]
「このハサミ、こんなに気に入っているのに、残念だな」[p]
[wait time=1000]
「汚れてしまうなんて」[p]

[auto_chara name="高田" face="angry"]
「おまえっ！」[p]
[auto_chara name="拓海" face="private2_normal"]
「おっと、動くな」[p]

高田が動こうとしたので、スプレーを顔に向ける。[p]
「これは、クマ撃退用スプレーだ」[p]
「人に使うものじゃないから、どうなるか保証できない」[p]

[auto_chara name="高田" face="anxious"]
「くっ……」[p]

彼は動くのを諦めた。[p]
「どうして欲しいんだ」[p]

[auto_chara name="拓海" face="private2_normal"]
[wait time=1000]
「今後一切、菊池家に関わるのをやめろ」[p]
「それから、響子さんの仕事にも一切影響が出ないようにしろ。[r]いいな」[p]

[auto_chara name="高田" face="sad"]
「わかった。約束しよう」[p]

高田はうなだれた。[p]

恵の方をちらっと見ると、まだ恐怖に脅えた顔をしている。[p]

[auto_chara name="拓海" face="private2_normal"]
拓海は怒りのやり場を失っていた。[p]
徹底的に、やらないといけない。[p]
[chara_hide_all]
[playse storage=se/heartbeat.ogg loop=true volume=100 fadein=true time=400]
これも計画通りだ。[p]

[wait time=800]

拓海はハサミを握る手に力を込めた。[p]
[wait time=700]

そして――[p]

[wait time=1000]
[stopse]
[stopbgm]
拓海は、その手を思いきり振りかぶった。[p]

[wait time=500]
[bg storage="black.png" time=400]
[wait time=3000]

「まったく、最後まで迷惑かけやがって」[p]

拓海は雑巾を固く絞りながら言った。[p]

[playse storage=se/dust_cloth.ogg volume=100 buf="0"]
[wait time=1000]
[playse storage=se/wipe.ogg volume=100 buf="1"]
[wait time=1000]

[bg storage="bg_megumi_room_night.webp" time=700]
[playse storage=se/room_noise.ogg loop=true volume=30]
[auto_chara name="恵" face="private_normal"]
「永山君、手袋した方がいいよ」[p]
[auto_chara name="拓海" face="private2_normal"]
「いいって、すぐ終わるから。[l]汚さないようにやるし」[p]

二人はフローリングを掃除している。[p]
失禁した高田の後片付けをしているのだ。[p]

その高田は、逃げるように帰っていった。[p]

恵は床にアルコールスプレーを吹きかけた。[p]

[auto_chara name="恵" face="private_normal"]
「永山君、その雑巾貸して」[p]

拓海は黙って雑巾を手渡した。[p]

[auto_chara name="恵" face="private_anxiety"]
「本当にこれで良かったのかな」[p]

恵がポツリと漏らす。[p]

[auto_chara name="拓海" face="private2_normal"]
「ああ……いいんだよこれで。[r]
あいつが約束を守る保証もどこにもなかったし」[p]

拓海は雑巾をバケツですすぐ。[p]

濁った水がゆっくり揺れた。[p]

恵は新しい水へ入れ替えた。[p]

雑巾を固く絞り、再び床を拭き始める。[p]

[auto_chara name="恵" face="private_anxiety"]
「そうだけど……見せたんでしょ？」[p]

[auto_chara name="拓海" face="private2_normal"]
「うん。見せたよ」[p]
[auto_chara name="恵" face="private_anxiety"]
「大丈夫かな」[p]

[auto_chara name="拓海" face="private2_smile"]
「大丈夫だよ。今回は違うから」[p]
[auto_chara name="恵" face="private_anxiety"]
「違う？」[p]
[auto_chara name="拓海" face="private2_normal"]
「綾香の時みたいに、精神的に追い詰めるようなことはしてない」[p]
[auto_chara name="恵" face="private_question"]
「そうなの？」[p]
[auto_chara name="拓海" face="private2_smile"]
「うん。もう二度と『こんなこと』ができないようにしただけ」[p]
拓海は言いながら、チョキで挟むジェスチャーをした。[p]

[auto_chara name="恵" face="private_confuse"]
「うわあ」[p]

恵は眉をひそめた。[p]
[auto_chara name="拓海" face="private2_angry"]
「あいつは菊池さんに酷いことをした」[p]
[auto_chara name="恵" face="private_anxiety"]
「そうね」[p]
[auto_chara name="拓海" face="private2_normal"]
「本当は、あんな残酷な幻を見せたくはなかったけど……[p]
あのときは冷静じゃなかったのかもしれない」[p]
[auto_chara name="恵" face="private_angry"]
「もう……本当に怖かった」[p]

「永山君まで壊れちゃったのかと思った」[p]

恵は拭き終えた雑巾を静かにバケツへ戻した。[p]

[auto_chara name="拓海" face="private2_normal"]
「……」[p]

「あれは演技だよ」[p]

拓海は片手を上げる。[p]
「直接対峙することもあるだろうと思って、シミュレーションしてたから」[p]
[auto_chara name="恵" face="private_question"]
「え？ああなるって予想してたの？」[p]

恵が目を丸くする。[p]
[auto_chara name="拓海" face="private2_normal"]
拓海は頷く。[p]
[auto_chara name="拓海" face="private2_smile"]
「確率はかなり低いと思ってたけど。一応脅しのセリフとかも考えてた」[p]

拓海は悪い顔をした。[p]
「想定通りにいくもんで驚いたよ」[p]
[auto_chara name="恵" face="private_surprise"]
「それは……驚いたな」[p]

恵は言葉を失う。[p]
[auto_chara name="拓海" face="private2_normal"]
「前から嫌な予感はしてた」[p]
[auto_chara name="恵" face="private_surprise"]
「そういえば前に言ってたね。あの時は……冗談だと思ってた」[p]
[auto_chara name="拓海" face="private2_sorry"]
[wait time=500]
「それに関してなんだけど……本当にごめん」[p]
[auto_chara name="恵" face="private_question"]
「何が？」[p]
[auto_chara name="拓海" face="private2_sorry"]
「高田が最初に家に来た日だよ」[p]
「響子さんは外に出てろって言ったでしょ」[p]
「だけど、俺が家にあがって高田に会うことを提案した」[p]
[auto_chara name="恵" face="private_question"]
「うん」[p]
[auto_chara name="拓海" face="private2_sorry"]
「それで高田が菊池さんの存在を知ったから、今回みたいな危険な目にあったんだよ」[p]
「だから俺のせいなんだ」[p]

[auto_chara name="恵" face="private_normal"]
「いいよ、そんなこと。結局色々上手くいったし」[p]
[auto_chara name="拓海" face="private2_sorry"]
「まあ……ね。一度失敗してるから上手くいくかわからなかったけど」[p]

二人は掃除を終え、並んで洗面所で手を洗った。[p]

拓海は蛇口を閉めながら言った。[p]

[auto_chara name="拓海" face="private_surprise"]
「あれ？」[p]

[auto_chara name="恵" face="private_question"]
「どうかした？」[p]
[auto_chara name="拓海" face="private2_smile"]
「そういえば……力、使えたなと思って。」[p]
「ほら、『他人事』じゃなかった」[p]
[auto_chara name="恵" face="private_laugh"]
「それ……まだ気にしてたんだ」[p]

恵が呆れて笑う。[p]
[auto_chara name="拓海" face="private2_normal"]
「今は、他人だなんて思ってないよ」[p]

拓海が真剣な顔をする。[p]

[auto_chara name="恵" face="private_happy"]
「うん、分かってるよ……守ってくれてありがとう」[p]

恵がタオルで手を拭きながら恥ずかしそうに言う。[p]

[auto_chara name="拓海" face="private2_smile"]
何となく照れくさくなった拓海は、間を埋めるように口を開いた。[p]
「なんかお腹空いてきたな」[p]

[fadeoutbgm time=3000]
[auto_chara name="恵" face="private_normal"]
「ほんとだね。でも今から出掛けるとちょっと遅いよね」[p]

時計の針は20時を過ぎたところだった。[p]
[auto_chara name="拓海" face="private2_smile"]
「そうだね」[p]
[auto_chara name="恵" face="private_normal"]
「冷蔵庫にあるもので何か作れるかもしれない」[p]
[auto_chara name="拓海" face="private2_smile"]
「え、菊池さん料理できたんだ」[p]
[auto_chara name="恵" face="private_normal"]
「実は……そうなんです」[p]

恵は得意気だ。[p]
「食べてく？」[p]
[auto_chara name="拓海" face="private2_smile"]
「そうだね。お言葉に甘えて」[p]
[chara_hide_all]
[bg storage="bg_megumi_living_night.webp" time=2000]
[playse storage=se/cooking.ogg volume=100]
[wait time=3000]
[playse storage=se/dinner.ogg volume=100]
[wait time=3000]
いつものファミレス以外のところで一緒に食事をしたのは、初めてのことだった。[p]

目の前では、恵が何かを話している。[p]
その内容はほとんど頭に入ってこなかった。[p]

食器の触れ合う音。[p]
時折聞こえる恵の笑い声。[p]
湯気の立つ料理を口に運ぶたび、張り詰めていた身体から少しずつ力が抜けていく。[p]

さっきまでのことが、ずいぶん遠くに感じられた。[p]

[wait time=500]

ふと顔を上げると、恵と目が合った。[p]

[auto_chara name="恵" face="private_normal"]
「どうしたの？」[p]

[auto_chara name="拓海" face="private2_smile"]
「いや、何でもない」[p]
[chara_hide_all]
拓海はもう一口、料理を口に運んだ。[p]

[wait time=500]

ただ二人で食事をしている。[p]
それだけのことが、今は妙にありがたかった。[p]
[fadeoutse time=2000]
[bg storage="black.png" time=3000]
[wait time=500]

高田の一件から、数日が過ぎた。[p]

放課後、拓海は恵と並んで駅へ向かっていた。[p]

[playbgm storage="likeadate.ogg" loop=true volume=80 fadein=true time=1000]
[bg storage="bg_school_gate_evening.webp" time=700]

冬の低い日差しが、通学路を斜めに照らしている。[p]
風が吹くたび、制服の隙間から冷たい空気が入り込んできた。[p]

[wait time=500]

[auto_chara name="恵" face="pain"]
「寒っ……」[p]

恵はそう呟くと、マフラーに顔を埋めるようにして肩をすくめた。[p]
朝よりも風が強くなっている。日が傾いてから、さらに気温が下がった気がした。[p]

[auto_chara name="拓海" face="level3_normal"]
「朝の天気予報で、今年一番の寒さって言ってたよ」[p]

[auto_chara name="恵" face="pain"]
「もうそんな時期かあ」[p]

少し歩いたところで、恵が通り沿いのコンビニを指差した。[p]

[auto_chara name="恵" face="normal"]
「何か温かいの買っていかない？」[p]

[auto_chara name="拓海" face="level3_smile"]
「いいね」[p]
[chara_hide_all]
二人で店に入り、それぞれ温かい飲み物を買った。[p]

[wait time=500]

店を出ると、恵は買ったばかりのココアを両手で包んだ。[p]
温かいカップに指先を押しつけながら、ほっとしたように息を吐く。[p]

[auto_chara name="恵" face="happy"]
「あったかい……」[p]
[wait time=500]
[chara_hide_all]

二人は再び駅へ向かって歩き始めた。[p]
道沿いの店にはリースや小さなツリーが飾られ、少し先の街路樹にもイルミネーションが取り付けられている。[p]
まだ空が明るいため灯りは点いていないが、街はすっかり年末の装いになっていた。[p]

[auto_chara name="恵" face="normal"]
「もうすぐクリスマスだね」[p]

[auto_chara name="拓海" face="level3_normal"]
「もうそんな時期か。」[p]
「今年はサンタさん来るかな」[p]

真面目な顔で言ったせいか、恵が吹き出した。[p]

[auto_chara name="恵" face="laugh"]
「急に面白いこと言わないでよ」[p]

[auto_chara name="拓海" face="level3_smile"]
「いや、本当に来るかもしれないよ」[p]

もちろん、そんなことは思っていない。[p]
ただ、サンタという言葉で、昔のことを一つ思い出した。[p]

[auto_chara name="拓海" face="level3_question"]
「ところで菊池さんって、いつまでサンタクロース信じてた？」[p]

[auto_chara name="恵" face="normal"]
「私？　結構遅かったよ。小学校の高学年くらいまで」[p]

[auto_chara name="拓海" face="level3_surprise"]
「へえ、結構信じてたんだ」[p]

[auto_chara name="恵" face="troubled_smile"]
「そうなの。周りの子に話したら、まだ信じてるのって驚かれて。それで初めて、もしかして私だけなのかなって」[p]

思い出したのか、恵は少し恥ずかしそうに笑った。[p]

「あれは恥ずかしかったなあ」[p]

[auto_chara name="拓海" face="level3_smile"]
「なんか菊池さんらしい話だね」[p]

[auto_chara name="恵" face="troubled_smile"]
「何それ。どういう意味？」[p]

[auto_chara name="拓海" face="level3_smile"]
「ピュアでいいなあと思って」[p]

[auto_chara name="恵" face="tease"]
「……一応、お礼は言っとくわね」[p]

褒めたつもりなのだが、微妙な反応だった。[p]

[wait time=500]

[auto_chara name="拓海" face="level3_normal"]
「俺は小学一年生のときに、サンタがいるのか確かめようとしたことがあってさ」[p]

[auto_chara name="恵" face="surprise"]
「一年生で？」[p]

[auto_chara name="拓海" face="level3_normal"]
「クリスマスの日に、サンタにサインをお願いしたんだよ。プレゼントと一緒に置いておいてくださいって」[p]

[auto_chara name="恵" face="laugh"]
「何その永山君らしいエピソード」[p]

さっきと同じことを言い返された。[p]
恵はすっかり興味を引かれたらしく、ココアを持ったままこちらを見ている。[p]

[auto_chara name="拓海" face="level3_smile"]
「そしたら次の日、本当に書いてあったんだよ。すごく綺麗な筆記体で」[p]

小学一年生の拓海には、それが何と書いてあるのかまでは読めなかった。[p]
ただ、自分には絶対に書けない文字だった。それだけで十分だった。[p]

[auto_chara name="拓海" face="level3_smile2"]
「本当にサンタが来たんだと思って、めちゃくちゃ喜んだ」[p]

[auto_chara name="恵" face="happy"]
「ええ、素敵な話じゃん」[p]

[auto_chara name="拓海" face="level3_normal"]
「俺もそう思ってたんだけどね」[p]

[auto_chara name="恵" face="surprise"]
「……けど？」[p]

[auto_chara name="拓海" face="level3_normal"]
「隣の家に中学生のお兄ちゃんが住んでてさ。何て書いてあるのか気になったから、そのサイン持って見せに行ったんだよ」[p]

[auto_chara name="恵" face="troubled_smile"]
「わざわざ？」[p]

[auto_chara name="拓海" face="level3_question"]
「だって気になるじゃん」[p]

[auto_chara name="恵" face="laugh"]
「そういうところは昔から変わらないんだね」[p]

否定はできなかった。[p]
分からないものをそのままにしておくのが、昔からあまり得意ではなかったらしい。[p]

[auto_chara name="拓海" face="level3_normal"]
「それで読んでもらったら、『これ、拓海のお父さんの名前じゃない？』って」[p]

一瞬、恵の足が止まりかけた。[p]

[auto_chara name="恵" face="happy"]
「ちょっと。お父さん、なんで自分の名前書いちゃったのよ」[p]

恵は手を叩いて笑っている。[p]
そこまで笑われるとは思っていなかった。[p]

[auto_chara name="拓海" face="level3_smile"]
「俺が英語読めないと思ったんだろうね」[p]

[auto_chara name="恵" face="laugh"]
「そこまで綺麗に書いたのに、最後だけ適当すぎるでしょ」[p]

[auto_chara name="拓海" face="level3_smile"]
「隣に読める人がいるとは思わなかったんじゃない？」[p]

[auto_chara name="恵" face="laugh"]
「お父さんも惜しかったね」[p]
[chara_hide_all]
確かに、もう少しだった。[p]
あの日、隣の家に持っていかなければ、もう一年くらいは信じていたかもしれない。[p]

[wait time=500]

笑いが収まった恵が、ココアを一口飲んだ。[p]

[auto_chara name="恵" face="normal"]
「でも、ショックじゃなかった？」[p]

[auto_chara name="拓海" face="level3_normal"]
「ショックだったよ。サンタいないんだって」[p]

あのときのことは、今でも意外なほどよく覚えている。[p]
正体を知ってしまった寂しさと、綺麗な筆記体で書かれたサイン。[p]

[auto_chara name="拓海" face="level3_smile"]
「でも、その字を父親が書いたんだって分かったら、それはそれで嬉しかったんだよね」[p]

[auto_chara name="恵" face="normal"]
「嬉しかった？」[p]

[auto_chara name="拓海" face="level3_normal"]
「うん。俺のために、わざわざあんな綺麗な字で書いてくれたんだなって」[p]

サンタはいなかった。[p]
けれど、自分を喜ばせようとしてくれた人はちゃんといた。[p]
子供のころには、そこまでうまく言葉にできなかったと思う。[p]

恵は少しだけ目を細めた。[p]

[auto_chara name="恵" face="happy"]
「いい思い出だね」[p]

[auto_chara name="拓海" face="level3_smile"]
「うん」[p]

しばらくして、拓海はふと思った。[p]

[auto_chara name="拓海" face="level3_smile2"]
「まあ、サンタのサインだから嘘は書いてないよね」[p]

[auto_chara name="恵" face="surprise"]
「え？」[p]

[auto_chara name="拓海" face="level3_normal"]
「その年のサンタ、父親だったんだから」[p]

恵は一瞬ぽかんとして、それからまた笑った。[p]

[auto_chara name="恵" face="laugh"]
「せっかくいい話だったのに」[p]

[auto_chara name="拓海" face="level3_question"]
「いい話のままでしょ？」[p]

[auto_chara name="恵" face="laugh"]
「まあ、永山君らしくていいんじゃない？」[p]

結局また、それを言われた。[p]

[wait time=500]

少し歩いたところで、恵が思い出したように口を開いた。[p]

[auto_chara name="恵" face="happy"]
「そういえば、お母さんなんだけど。最近、すごく元気なんだ」[p]

その言葉に、拓海は少し安心した。[p]
以前の恵から母親の話を聞くときは、いつもどこか身構えていた気がする。[p]

[auto_chara name="拓海" face="level3_smile"]
「そっか。よかった」[p]

[auto_chara name="恵" face="laugh"]
「昨日なんて、帰ってきてからずっと会社の愚痴言ってた」[p]

[auto_chara name="拓海" face="level3_question"]
「……それ、元気なの？」[p]

[auto_chara name="恵" face="happy"]
「元気なの。前は何を聞いても『大丈夫』しか言わなかったから」[p]

言われて、ようやく意味が分かった。[p]
不満を口にできるということは、それだけ誰かに聞いてもらう余裕が戻ったということなのかもしれない。[p]

[auto_chara name="拓海" face="level3_normal"]
「じゃあ、いい愚痴なんだ」[p]

[auto_chara name="恵" face="laugh"]
「そう。聞いてる方は大変だけどね」[p]

そう言いながらも、恵は嬉しそうだった。[p]

[auto_chara name="恵" face="normal"]
「それでね。今年は久しぶりにちゃんとクリスマスやろうって言ってて」[p]

[auto_chara name="拓海" face="level3_normal"]
「家で？」[p]

[auto_chara name="恵" face="happy"]
「うん。ケーキ買って、料理も作って。昔は毎年やってたんだけどね」[p]

恵は懐かしそうに言った。[p]
母親が元気になったという話が、さっきよりも少し実感を伴って聞こえた。[p]

[auto_chara name="拓海" face="level3_smile"]
「いいじゃん。久しぶりなら楽しみだね」[p]

[auto_chara name="恵" face="troubled_smile"]
「ただ、お母さん張り切ると料理作りすぎるんだよね。二人しかいないのに」[p]

[auto_chara name="拓海" face="level3_smile"]
「余ったら俺が食べるよ」[p]

口にしてから、拓海は少し笑った。[p]
もちろん、他人の家のクリスマス料理をどうやって食べるのかまでは考えていない。[p]

恵は何か言いかけて、それから少し考えるように拓海を見た。[p]

[auto_chara name="恵" face="normal"]
「……じゃあ、来る？」[p]

[auto_chara name="拓海" face="level3_surprise"]
「え？」[p]

[auto_chara name="恵" face="troubled_smile"]
「クリスマス。うちに来る？」[p]

思っていなかった誘いに、拓海は一瞬返事に迷った。[p]
さっきまで昔のサンタクロースの話をしていただけなのに、いつの間にか今年のクリスマスの話になっている。[p]

[auto_chara name="恵" face="normal"]
「どうせ二人だし、一人増えてもそんなに変わらないから。お母さんも、その方が張り切りがいあると思うし」[p]

[auto_chara name="拓海" face="level3_normal"]
「俺が行っても大丈夫なの？」[p]

[auto_chara name="恵" face="happy"]
「大丈夫だよ。永山君のこと知ってるし」[p]

そういえば、恵の家には以前にも何度か上がっている。[p]
今さら自分が行ったところで、驚かれることもないだろう。[p]

[auto_chara name="拓海" face="level3_smile"]
「じゃあ、お邪魔しようかな」[p]

[auto_chara name="恵" face="happy"]
「うん。じゃあ、お母さんに聞いてみるね」[p]

まだ決まったわけでもないのに、恵は少し嬉しそうだった。[p]

[auto_chara name="拓海" face="level3_normal"]
「でも俺が増えたら、今度は料理足りなくならない？」[p]

恵は一瞬考えてから、首を横に振った。[p]

[auto_chara name="恵" face="laugh"]
「それは絶対大丈夫」[p]

[auto_chara name="拓海" face="level3_question"]
「そんなに作るの？」[p]

[auto_chara name="恵" face="troubled_smile"]
「去年なんて、次の日も同じもの食べてたから」[p]
[chara_hide_all]
それなら確かに、一人増えたところで問題はなさそうだった。[p]

[wait time=500]

高田の名前は出なかった。[p]
もう、出す必要もないのかもしれない。[p]

以前は恵の母親の話をするだけで、自然とそこへ行き着いていた。[p]
今は会社の愚痴を言うようになったとか、クリスマスに料理を作りすぎそうだとか、そんな話をしている。[p]

それだけで、母親が少しずつ元の生活を取り戻していることが分かった。[p]

[wait time=500]

[auto_chara name="恵" face="normal"]
「永山君、何か食べたいものある？」[p]

[auto_chara name="拓海" face="level3_question"]
「もう俺が行く前提になってない？」[p]

[auto_chara name="恵" face="surprise"]
「あ」[p]

恵はそこで初めて気づいたようだった。[p]
まだ母親に聞いてみると言っただけで、何も決まってはいない。[p]

[auto_chara name="恵" face="troubled_smile"]
「……まあ、お母さんならたぶん大丈夫だと思う」[p]

[auto_chara name="拓海" face="level3_smile"]
「じゃあ、決まってから考えるよ」[p]

[auto_chara name="恵" face="happy"]
「そうだね」[p]
[chara_hide_all]
そう言って、恵はまたココアを口にした。[p]
もうだいぶ冷めているのか、今度は長めに飲んでいる。[p]

拓海も自分の缶を傾けた。[p]
こちらはいつの間にか空になっていた。[p]

[wait time=500]

駅が見えてきた。[p]
話しながら歩いていると、いつもより早く着いたような気がする。[p]

少し前まで、クリスマスなんて自分にはあまり関係のない行事だった。[p]
街が飾られて、テレビが騒がしくなって、気づけば終わっている。[p]
今年も、たぶんそうなると思っていた。[p]

けれど、どうやら今年は少し違うらしい。[p]

[wait time=500]

[auto_chara name="恵" face="happy"]
「じゃあ、お母さんに聞いたら連絡するね」[p]

[auto_chara name="拓海" face="level3_smile"]
「うん」[p]

[auto_chara name="恵" face="happy"]
「じゃあ、また明日」[p]

[auto_chara name="拓海" face="level3_smile"]
「また明日」[p]

恵は軽く手を振り、改札へ向かっていった。[p]

[chara_hide_all]

拓海はその背中を少しだけ見送ってから、自分も歩き出す。[p]

[wait time=500]

今年のクリスマスは、菊池さんの家で過ごすことになるかもしれない。[p]

ほんの少し前までなら、想像もしなかったことだ。[p]

事件のことでもない。[p]
能力のことでもない。[p]
誰かをどうするかという相談でもない。[p]

昔のサンタクロースの話をして、笑って、今年のクリスマスの予定を話す。[p]
そんな時間が、いつの間にか自分の日常になっていた。[p]

[wait time=500]

「また明日」[p]

そんな言葉を交わして別れることも、もう珍しいことではない。[p]

少し前までなら、こんな毎日を退屈だと思っていたかもしれない。[p]
けれど今は違う。[p]

明日も学校へ行く。[p]
その次の日も、そのまた次の日も。[p]
そうしているうちにクリスマスが来て、冬休みが来て、今年が終わる。[p]

何かが起きなくても、時間はちゃんと先へ進んでいく。[p]

[wait time=1000]

それが、今の拓海にはたまらなく心地よかった。[p]

[bg storage="black.png" time=3000]
[wait time=1000]

拓海は、自分の「超能力」に振り回された三か月間から解放されたが、新しい試練が待っていた。[p]
受験勉強である。[p]

正直に言って、この三か月は勉強どころではなかった。[p]
机に向かっても集中できない日が続き、成績も以前より落ちている。[p]

対して、恵は相変わらず上位を維持していた。[p]
そのことを言うと、「私だって結構大変なんだから」と怒られた。[p]

[wait time=1000]

十二月は、あっという間に過ぎていった。[p]

クリスマスには恵の家に招かれ、本当に食べきれないほどの料理が並んだ。[p]
恵が言っていたことは、少しも大げさではなかったらしい。[p]

年が明けると、学校の空気も変わった。[p]
休み時間に参考書を開く生徒が増え、放課後の自習室はいつも席が埋まっていた。[p]

拓海も遅れを取り戻すように勉強した。[p]
恵とは互いに励まし合ったが、一緒に勉強することはほとんどなかった。[p]
一度試してみて、二人とも話してしまうことが分かったからだ。[p]

そんな日々を繰り返しているうちに、季節は過ぎていった。[p]
[fadeoutbgm time=3000]
[wait time=2000]
[bg storage="bg_classroom_graduation_evening.webp" time=1000]
[playse storage=se/school_chime.mp3 volume=80]

制服の左胸に白い花を付けているのが、少し照れくさい。[p]
でも不思議と嫌な気持ちはしなかった。[p]

拓海はふと、入学式の日を思い出した。[p]

あの日は酷く冷たい雨が降っていた。[p]
「これからの学園生活は、あまり良いことがないのかもしれない」と漠然と思ったものだ。[p]

けれど、今こうして迎えた卒業式の日。[p]
空は青く澄み、心を満たすような陽射しが降り注いでいる。[p]

悪いことばかりじゃなかった。[p]
苦しみもあれば、救いもあった。[p]
まるで、神様が最終的にバランスを取ってくれたかのようだ。[p]

今日の晴れ間を、有終の美を飾るためのご褒美として、素直に受け入れようと拓海は思った。[p]

[bg storage="bg_graduation_hall_day.webp" time=1000]
体育館に入ると、紅白の幕で飾られた広い空間が、ひんやりとした空気に包まれていた。[p]

正装をした教師たちが、普段とは違う厳粛な雰囲気を漂わせていた。[p]
生徒たちは、きれいに並べられたパイプ椅子に腰を下ろしていく。[p]

拓海も席に着くと、斜め前方の恵の姿が目に入った。[p]
恵は自分の列から少し離れた右側に座っている。[p]

こんな時でも、拓海はつい「龍也たち」の姿を探してしまう。[p]
これまでに何度も苦しめられたが、今はただ、龍也たちもまたここで卒業を迎えているという事実を、静かに受け止めたかった。[p]

右前方に茶色い頭が見えた。[p]
翔太のトレードマークの茶髪は相変わらずで、卒業式でも自分の信念を貫き通したようだ。[p]

[auto_chara name="翔太" face="normal"]
彼は要領の良いタイプで、勉強もそこそこできた。[p]
中堅の私立大学への進学を決めた。[p]
翔太らしい選択だ、と拓海は静かに納得する。[p]

[chara_hide_all]

目を左に移すと、小柄でセミロングの後ろ姿が見えた。[p]
綾香だ。[p]

[auto_chara name="綾香" face="normal"]
左胸に白い花を付けたその後ろ姿を見つけ、拓海はようやく息をついた。[p]
綾香は一時、学校に通うことすら難しい状態だったが、少しずつ前を向けるようになった。[p]

そして、あれから再び絵を描き始めた。[p]

卒業後は絵の専門学校に通い、その先で美大を目指すことに決めたようだ。[p]
当然、親は猛反対しているそうだ。[p]

それでも、今度はやめなかった。[p]
[chara_hide_all]

生徒会長が卒業生代表として壇上に立ち、卒業証書を受け取った。[r]
その後、校長の式辞が始まる。[p]

拓海は話の内容をなんとなく頭の片隅で聞き流しつつ、脳内AIに要約させた。[p]
「仲間と一緒に学んだ三年間を誇りに思いましょう」[p]

……まあ、そんなことを言っていた。[p]

周りには涙ぐむ生徒の姿もあったが、拓海はどこか冷静にそれを眺めていた。[p]

「自分はどうなんだろう？」と、ふと自分に問いかける。[p]
卒業に対して、涙を流せるほどの特別な気持ちは無いかもしれない。[p]

それでも、ひねくれるほど嫌な思い出ばかりだったわけでもない。[p]
色んなことがあった――そう思うと、自然と胸が温かくなるのを感じた。[p]

[wait time=2000]
[bg storage="bg_classroom_graduation_evening.webp" time=1000]
[playbgm storage="classroom_buzzing.ogg" loop=true volume=100 fadein=true]
卒業式が終わり、教室に戻ると、どこかそわそわした雰囲気が漂っていた。[p]

最後の担任の話に耳を傾ける生徒たちからは、別れの空気が感じられる。[p]
そんな中、スマホが震えた。[p]
[playse storage=se/smartphone_vibrate.ogg volume=100]
「このあと屋上に来れるか」[p]

龍也からだった。[p]
この既視感が少し懐かしい。[p]
これは流石に拒否することはできないだろう。[p]

教室では、別れを惜しんで、思い出話があちらこちらから聞こえてくる。[p]
「卒業おめでとう」「元気でな」[p]

なんて恥ずかしいセリフをお互い言い合ったりしている。[p]

拓海もそんな空気に包まれながら、席を立とうとすると、ふと背後から恵の声がした。[p]

[auto_chara name="恵" face="normal"]
「どこにいくの？」[p]

[auto_chara name="拓海" face="level3_shysmile"]
拓海は振り返り、恵に少し困ったような笑みを浮かべた。[p]
「龍也に屋上に呼び出された」[p]
[auto_chara name="恵" face="surprise"]
恵は一瞬驚いた表情を見せるが、すぐに小さく微笑んで、[p]
[auto_chara name="恵" face="normal"]
「じゃあ、私も一緒に行ってもいい？」[p]

と静かに尋ねた。[p]
[chara_hide_all]

[fadeoutbgm time=3000]
[bg storage="bg_rooftop_day2.webp" time=900]
[playse storage=se/wind_rooftop.ogg volume=20]
拓海は屋上へと続く階段を一歩一歩上がっていた。[p]
「もう久しくここを登ってないな」と思いながら、ふと懐かしさが込み上げてくる。[p]

この場所は、拓海にとっても、龍也にとっても様々な思いが交錯する場所だった。[p]

扉を押し開けると、風がわずかに髪をなびかせ、少し先に立っている龍也の姿が見えた。[p]

[auto_chara name="龍也" face="normal"]

「よう。来たか」[p]

龍也が手を上げて挨拶する。[p]
「……なんだお前、彼女も連れてきたのか？」[p]

[auto_chara name="恵" face="normal"]
「ごめんね、龍也君」[p]

恵が微笑んで応える。[p]
「邪魔しないようにするから」[p]

[auto_chara name="拓海" face="level3_shysmile"]
「彼女……っていうか、なんというか」[p]

拓海は少し照れたように視線を逸らす。[p]
好きだとか、付き合っているとか、一度も言葉にしたことが無かった。[p]
[auto_chara name="龍也" face="smile"]
「あれ、お前らって付き合ってるわけじゃなかったの？」[p]

龍也が不思議そうに尋ねると、恵は隣で吹き出している。[p]
[auto_chara name="恵" face="laugh"]
「うーん、どうなんだろうね」[p]

恵が言いながら、少し楽しそうに笑う。[p]
[auto_chara name="龍也" face="smile"]
「なんだよそれ」[p]

龍也は少し呆れたように肩をすくめたが、どこかホッとした表情を浮かべる。[p]
そして、真剣な顔に戻ると、ゆっくりと言葉を紡いだ。[p]
[auto_chara name="龍也" face="normal"]
「今日で卒業だからな。この場所で、ケジメをつけておきたいと思って」[p]
[fadeoutse time=2000]

[auto_chara name="拓海" face="level3_question"]
「ケジメ……？」[p]

拓海が不思議そうに聞き返すと、龍也は視線を落とし、深く頭を下げた。[p]
[auto_chara name="龍也" face="apologize" time=700]
[wait time=1000]
「これまでお前にしてきたこと、許されるものじゃないって思ってる」[p]
[delay speed="95"]
「本当に、すまなかった」[p]
[resetdelay]

拓海は言葉を失った。[p]
かつて見上げることしかできなかった龍也の頭が、今は目の前で深く下がっている。[p]
その姿は、どの記憶の中の龍也とも重ならなかった。[p]
[chara_hide_all]
[wait time=2000]

やがて、拓海は少しぎこちない笑顔を浮かべ、静かに言った。[p]
[auto_chara name="拓海" face="level3_smile"]
「なんだ、そんなこと。いいよ、もう気にしてないから」[p]
[auto_chara name="龍也" face="smile"]
「ありがとう……お前、本当に雰囲気変わったよな」[p]

龍也が拓海をじっと見つめ、ぽつりと言う。[p]
[auto_chara name="拓海" face="level3_smile"]
「そうだね。……一回、死んだからかな」[p]
[auto_chara name="龍也" face="smile"]
龍也は一瞬、沈黙したが、やがて「はは」と笑い、そのあと二人で笑った。[p]
「お前がそんな冗談を言えるなんてな」[p]
[auto_chara name="拓海" face="level3_smile2"]
「謝ってくれて、嬉しいよ」[p]

胸の奥に残っていた固いものが、ようやくほどけていく気がした。[p]
[auto_chara name="龍也" face="smile"]
「そうか」

龍也も少し照れくさそうに笑みを浮かべた。[p]

[chara_hide_all]

[wait time=2000]

[playse storage=se/wind_rooftop.ogg volume=20]

二人とも何も言わなかった。[p]

ただ、春の風だけが静かに屋上を吹き抜けていく。[p]

[auto_chara name="拓海" face="level3_smile"]

ふと、拓海の口から[p]
「卒業おめでとう」[p]
という言葉がこぼれた。[p]
自分でも驚いたが、それが本心だと思えた。[p]
[auto_chara name="龍也" face="smile"]
「おお、ありがとうな。お前も、卒業おめでとう」[p]

龍也もぎこちない笑顔を返した。[p]

しばらく拓海を見つめる。[p]

そして、ゆっくり右手を差し出した。[p]

[chara_hide_all]
拓海はその手を見つめる。[p]

[wait time=1000]

[cg storage="ch7_shakehands.webp"]
[bg storage="ch7_shakehands.webp" time=500]

拓海も手を差し出し、二人は固く手を握り合った。[p]
[delay speed="90"]
あのとき、[l]できなかった握手。[p]
[resetdelay]
今度こそ、二人の間にあったわだかまりが消えていくようだった。[p]
「じゃあ……お前もケジメつけないとな」[p]

龍也が小声で拓海に耳打ちした。[p]
恵に聞こえないように配慮しているのが分かる。[p]
[bg storage="bg_rooftop_day2.webp" time=900]
[auto_chara name="拓海" face="level3_question"]
「何を？」[p]

拓海が思わず問い返す。[p]
[auto_chara name="龍也" face="smile"]
「お前らの関係性だよ」[p]

龍也はニヤリと笑った。[p]
[auto_chara name="拓海" face="level3_surprise"]
「ええ！」[p]

拓海は思わず驚き、恵の方をチラリと見た。[p]
何も知らない様子の恵は不思議そうにこちらを見返してくる。[p]
[auto_chara name="龍也" face="smile"]
龍也は照れくさそうに片手を上げた。[p]
「じゃあ、またな。大学で会おうぜ」[p]
[playse storage=se/leather_shoes.ogg volume=100]
[wait time=2000]
[chara_hide_all]
彼はそう言い残し、手を軽く振って去っていった。[p]
拓海はその背中を、静かに見送った。[p]

[stopse fadeout=800]
[fadeoutbgm time=3000]
[bg storage="black.png" time=1500]
[wait time=500]
[bg storage="bg_family_restaurant_night.webp" time=900]
[playbgm storage="restaurant_ambience.ogg" loop=true volume=30 fadein=true time=1000]

[playse storage=se/kanpai.ogg volume=100]
「卒業おめでとう！」[p]

卒業式の夜、拓海と恵はいつものファミレスに集まり、ドリンクバーのグラスで軽く乾杯を交わした。[p]

[auto_chara name="拓海" face="level3_smile"]
「とは言っても、まだ全然実感が湧かないな」[p]

拓海は笑いながら呟く。[p]

[auto_chara name="恵" face="normal"]
「そうね……もう、この制服を着ることもないんだなって思うと、不思議な感じ」[p]

恵は擦れて少しくたびれたブレザーの袖を眺めながら、懐かしそうに微笑んだ。[p]
[auto_chara name="拓海" face="level3_smile"]
「そうだね。もう、あのクラスで一緒に授業を受けることもなくなる」[p]
[auto_chara name="恵" face="happy"]
「うん……そう考えると少し寂しいかもね」[p]

彼女はふと目を伏せ、しみじみと三年間の出来事に思いを馳せるようだった。[p]
[chara_hide_all]
[wait time=2000]
二人とも、何度も行き交った校舎や教室、そしてクラスメイトたちとの思い出が頭に浮かび、しばらく黙っていた。[p]
[auto_chara name="恵" face="normal"]
「さっき龍也くん、大学で会おうって言ってたよね」[p]

「同じ大学なんだ？」[p]

恵が思い出したように話題を変える。[p]
[auto_chara name="拓海" face="level3_smile"]
「そうなんだよ。また腐れ縁になりそうだけどね」[p]
[auto_chara name="恵" face="laugh"]
「ふふっ。そういう関係も、悪くないね」[p]

彼女が微笑んだ。[p]
[auto_chara name="拓海" face="level3_smile"]
「恵はJ大学なんて、本当に頑張ったんだなって思うよ」[p]
[auto_chara name="恵" face="normal"]
「ありがとう。必死に勉強した甲斐があったよ」[p]

彼女は少し照れくさそうに笑みを浮かべた。[p]
[auto_chara name="拓海" face="level3_smile"]
「しかも法学部なんてさ」[p]

拓海は感心したように続ける。[p]

恵が法学部を目指すと話し始めたのは、高田の事件が一段落してからのことだった。[p]
母親を守るために、そして大切な人たちを守るために、自分には法律の知識が必要だと強く思ったのだろう。[p]

拓海は、そんな恵の決意に密かに尊敬の念を抱いていた。[p]
[auto_chara name="恵" face="normal"]
「そうだ、拓海はどうして教育学部を選んだの？単位を取るのも大変そうだけど」[p]
[auto_chara name="拓海" face="level3_question"]
「やっぱり、発展途上国における貧困問題の根本的な解決には教育の水準をあげるのが必要不可欠であり……」[p]
[auto_chara name="恵" face="laugh"]
「はいはい……いいからそういうのは。本当は？」[p]

恵に軽く流されてしまった。[p]
[auto_chara name="拓海" face="level3_normal"]
[delay speed="90"]
「気づいてあげたい、[l]と思ったんだよね」[p]
[resetdelay]

[wait time=1000]

拓海は少し言葉を探すように視線を落とした。[p]

[auto_chara name="恵" face="happy"]
「……誰に？」[p]

[auto_chara name="拓海" face="level3_normal"]
「恵とか、俺みたいに辛い目にあってる生徒や、クラスで孤立してる生徒って、きっといると思うんだ。[p]
そういう子たちに気づいて、少しでも力になれる先生になれたらなって」[p]
[auto_chara name="恵" face="happy"]
「そっか……拓海なら、本当にいい先生になれると思う」[p]

恵は優しい笑顔を浮かべ、しっかりと拓海を見つめて言った。[p]
[auto_chara name="拓海" face="level3_smile2"]
「ありがとう。なんか、そう言ってもらえると自信が出てくるよ」[p]

拓海も自然と笑顔がこぼれ、恵に感謝の気持ちを込めた視線を送った。[p]

[auto_chara name="恵" face="normal"]
「ところで……今日、龍也くんに謝ってもらえたね」[p]

恵が静かに切り出した。[p]
[auto_chara name="拓海" face="level3_smile"]
「うん。高校生活の最後に、ケジメをつけるってさ」[p]

拓海は、ふとあの時の龍也の真剣な表情を思い返し、少し微笑んだ。[p]
[auto_chara name="恵" face="normal"]
「スッキリ終われて、本当に良かったね」[p]
[auto_chara name="拓海" face="level3_smile2"]
「ほんとにね」[p]

彼は恵の言葉で、今まで辛かったことが、綺麗に洗い流されたように思った。[p]
その瞬間、卒業の寂しさが不意に込み上げ、胸が締めつけられた。[p]
[auto_chara name="拓海" face="level3_question"]
「あれ……何かいま急に卒業の実感湧いてきた」[p]
[auto_chara name="恵" face="laugh"]
「何それ、急に湧いてくるものなの？」[p]

恵がくすっと笑うと、その笑い声が人も少なくなった店内に心地よく響いた。[p]
しばらくして、恵が少し思わせぶりに尋ねた。[p]
[auto_chara name="恵" face="tease"]
「ねえ、最後に龍也くんと何か話してなかった？」[p]
[auto_chara name="拓海" face="level3_shysmile"]
「ああ……聞こえてた？」[p]

拓海が少し驚いて尋ねる。[p]
[auto_chara name="恵" face="tease"]
「いや、ケジメがどうとか言ってたような気がしたんだけど」[p]

恵がいたずらっぽい顔で見つめる。[p]
[auto_chara name="拓海" face="level3_smile"]
（聞こえてるじゃないか）と拓海は心の中で苦笑するが、やがて少し照れくさそうに口を開いた。[p]
「あはは……お前もケジメつけろって言われたんだよ」[p]

[auto_chara name="恵" face="laugh"]
「何それ、どういう意味？教えてよ」[p]

彼女は目を輝かせ、ますます興味津々の様子だった。[p]
[auto_chara name="拓海" face="level3_shysmile"]
「ちょっと……ファミレスでは恥ずかしいかな。人も見てるし」[p]

拓海がモゴモゴと言葉を濁すと、恵は冗談めかして拗ねた顔をする。[p]

[auto_chara name="恵" face="tease"]
「なんだ、そんなことじゃ私の卒業の実感、まだ湧いてこないわね」[p]
[auto_chara name="拓海" face="level3_smile2"]
「うーん……」[p]

拓海は少し考え込み、やがて決意したように顔を上げた。[p]
[auto_chara name="拓海" face="level3_smile"]
「実は……一つ、試したくても試せなかったことがあって」[p]

[auto_chara name="恵" face="laugh"]
「え、何？」[p]

恵が少し身を乗り出す。[p]

[wait time=500]
拓海は一度だけ恵の手元へ視線を落とした。[p]
[fadeoutbgm time=3000]
[auto_chara name="拓海" face="level3_normal"]
「俺のあの力。強い憎しみを抱いた相手にしか使えなかったじゃん」[p]
[auto_chara name="恵" face="normal"]
「そうね。高田のときに使えなかったもんね」[p]
[auto_chara name="拓海" face="level3_normal"]
「うん……でも、[l]
[delay speed="90"]
相手を強く想ったときにも使えるのかなって」[p]
[resetdelay]

彼はそっと恵を見つめた。[p]

恵も不思議そうに見つめ返す。

[chara_hide_all]
[wait time=1000]
[choice_start count=1]
[choice name="choice_ch7_next" text="前へ進む" target="*next"]
[s]

*next
[cm]
[wait time=1000]
[fadeoutbgm time=3000]
拓海はそっと恵の手を両手で包み込むように握った。[p]

[cg storage="ch7_last1.webp"]
[bg storage="ch7_last1.webp" time=900]

その瞬間、[l]
[delay speed="110"]
二人の周囲だけ、時間がゆっくりと止まっていく。[p]
[resetdelay]
店内のBGMが遠のいていく。[p]
そこには、拓海と恵だけの静かな空間が広がっていった。[p]

視界に浮かんでくるのは、拓海の記憶の中に刻まれた恵の姿だ。[p]

（……これは、私の顔？）[p]
恵は戸惑いながらも、その記憶の中の自分をじっと見つめる。[p]

初めて拓海に話しかけられたときの、少しぎこちない笑顔を浮かべる自分。[p]
西日が差し込む教室で、真剣に授業を受けているときの横顔。[p]
通学路で不意に振り返った瞬間の、はにかむような表情……。[p]

駅のホームで、そしていつものファミレスで、拓海がそっと見つめていた自分の姿が、次々に映し出される。[p]

拓海の思い出に映る自分が、こんなに「いい顔」をしているだなんて……[p]
恵はそのことに驚き、拓海の真意を悟ると、胸の奥が温かくなるのを感じた。[p]

現実に戻ったとき、涙がこみ上げ、視界がぼやけていた。[p]
拓海が穏やかな笑みを浮かべ、静かにこちらを見つめている。[p]
恵は、涙をぬぐいながら小さく微笑み返し、静かに呟いた。[p]
[cg storage="ch7_last2.webp"]
[bg storage="ch7_last2.webp" time=900]
[delay speed="100"]
「ありがとう……[l]拓海」[p]
[resetdelay]

[jump storage="ending.ks"]

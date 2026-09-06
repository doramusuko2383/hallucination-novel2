
*ch1_start
*chapter1
[scene_title title="第1章"]

;第1章

[cm]
[clearfix]
[start_keyconfig]
[showmenubutton]

; [bg] は time 省略時に3秒フェード待ちになるため、黒背景は即時切替にする
[bg storage="black.png" time=0 wait=true]
[iscript]
// NEW GAME の暗転を、第1章の黒背景が準備できるまで保持する。
$("#new-game-opening-fade").stop(true, true).remove();
[endscript]

[font speed=80]
「こんな奴、飛び降りて死んでしまえばいい」
[p]

[wait time=2000]

[font speed=50]
それは――
[p]

[wait time=500]

自分自身に対して思う。
[p]

[wait time=1000]

[font speed=40]

[bg storage="bg_classroom_day_ch1.webp" time=800]
[playbgm storage="classroom_buzzing.ogg" loop=true volume=100 fadein=true]
教室の窓から見上げる空は、
重く、禍々しく、
[p]

拓海の心をゆっくりと押し潰していく。
[p]

[wait time=1000]

高校二年になった頃から、
いつの間にか始まったいじめ。
[p]

[font speed=60]

現状を変えられない心の弱さ、[r]
不甲斐なさに何度も辟易した。
[p]

[wait time=500]

[font speed=80]
一体――
[p]

[wait time=500]

いつまでこんな苦しみが続くのか――。
[p]

[wait time=1000]

[font speed=40]

逃れられない現実に、[r]
胸が張り裂けそうだった。
[p]
[wait time=1000]

[playse storage=se/school_chime.mp3 volume=80]
[wait time=2000]

[wait time=1000]

お昼を知らせる、憂鬱なチャイム。
[p]

[wait time=500]

昼休みになると、校舎の屋上に来るように命じられている。[p]

教師にもクラスメイトにも見えないところで行われるこの「日課」を、[r]誰にも相談することができない。[p]
[wait time=1000]

……[p]

行くしかない。
[fadeoutbgm time=3000]
[wait time=1000]
[choice_start count=1 y=360]
[choice name="choice_ch1_go_rooftop" text="屋上へ向かう" target="*next"]
[s]

*next
[cm]

[bg storage="bg_rooftop_door.webp" time=600]
[wait time=500]
[playse storage=se/footstep_stairs.ogg volume=100]
[wait time=3000]
屋上までの暗い階段を上がる。[p]
[wait time=500]
[bg storage="black.png" time=600]
[wait time=500]
; 章タイトルは無音で表示し、屋上の環境音は次の屋上シーン開始時にだけ再生する。
[chapter_title number="第一章" title="覚醒"]
[playse storage=se/roof_door.ogg volume=30]
[wait time=500]
*ch1_rooftop

;------------------------
; 屋上
;------------------------
[bg storage="bg_rooftop_day_ch1.webp" time=600]

[playse storage=se/wind_rooftop.ogg volume=30]
[playbgm storage="tension_low.ogg" loop=true volume=100 fadein=true time=1500]
[wait time=2000]
九月だというのに外は蒸し暑い。
[p]

屋上のコンクリートには朝方の雨が染み込み、まだ少し湿っていた。[p]

[wait time=1000]

いつもの三人は、今日は地面に座らず、フェンスにもたれかかっている。[l]

雨が染みて濡れるのを嫌がったのだろう。[p]

*ch1_training

[cg storage="ch01_sc01_rooftop_wait.webp"]
[bg storage="ch01_sc01_rooftop_wait.webp" time=600]

[playse storage=se/foot.ogg volume=100]

[wait time=1000]
「来たか」[p]

三人の中でも一番背の高い、リーダー格の龍也が拓海を見て言う。[p]

声は淡々としているが、その視線は鋭い。[p]

名前を呼ばれたわけでもないのに、拓海の足はそこで止まった。[p]

返事をすれば声が震える。[l][r]
黙っていれば、それを理由に機嫌を損ねるかもしれない。[p]

迷った末に小さく頭を下げる。[l][r]
いつからか、それが三人の前での返事になっていた。[p]

[wait time=500]

[bg storage="bg_rooftop_day_ch1.webp" time=600]
[auto_chara name="龍也" face="normal" left=50 time=700]
「じゃあ、いつものやつやろうぜ」[p]

龍也は、どこから手に入れたのかわからないボクシンググローブを手にはめながら言った。[p]

それで拓海をサンドバッグにするのが、龍也たちの「トレーニング」だった。[p]

[wait time=500]

拓海は無言のまま、用意されたグローブを手に取る。[p]

[wait time=500]

これが日常になってしまっている自分が情けない。[p]

[auto_chara name="翔太" face="nastysmile" left=180 time=500]
「三分で次、俺に交代してよ」[l]

悪友の翔太がニヤニヤと笑いながら言う。[p]

[auto_chara name="綾香" face="normal" left=300 time=500]
「やめなよ、かわいそうじゃーん」[l]

仲間の綾香が、薄ら笑いを浮かべながら口にする。[p]

[chara_hide name="綾香"]

綾香はこの「遊び」には参加しなかった。[l]
それは、拓海を憐れんでいるわけではない。[p]

[wait time=500]

自分が汗をかくのも嫌だし、何かあったときに責任を負いたくないからだ。[p]

それでも一瞬だけ、拓海の指はグローブの留め具の上で止まった。[p]

「かわいそう」という言葉に、体が勝手に反応してしまったのだ。[p]

綾香の薄い笑いを見て、喉元まで出かかった助けを求める声が萎む。[l][r]
ここには、自分の痛みを痛みとして受け取る人間はいない。[p]

「トレーニング」と称されたこのボクシングの真似事のルールはこうだ。[p]

[wait time=500]

一ラウンド三分[l][r]
顔は殴らない[l][r]
グローブを着用すること[p]
こんな体裁が整えられている。[p]

だが、ルールは都合よく変わるものだ。[p]

[wait time=500]

以前、拓海が余りに何も打ち返さないので、[l]
龍也が「少しは打ってこいよ」と煽ってくることがあった。[p]

そのとき言われるがまま打ったパンチは、運が悪いことに龍也のみぞおちに、[r]
吸い込まれるように入っていった。[p]

[wait time=500]

思わぬ痛みに顔を歪めた龍也は、それがよっぽど気に食わなかったのか、[l][r]
脚を大きく振り上げ、拓海の腹を蹴りつけた。[p]

[wait time=1000]

こんな調子だから、ルールなどあってないようなものだ。[p]

[auto_chara name="龍也" face="normal" left=50]
今日の「トレーニング」も一方的なものだった。[p]

[playse storage=se/punch1.ogg volume=100]
[wait time=500]
[playse storage=se/punch2.ogg volume=100]
[wait time=500]
[playse storage=se/punch1.ogg volume=100]
[wait time=500]
[chara_hide_all time=300]
打ち返すとさらにやり返されることがわかってからは、[l]
拓海は避けたり、ガードを固めたりすることに徹していた。[p]

[wait time=500]

痛みには決して慣れなかった。[p]

蓄積していく痛みは、いつだって拓海の気持ちをへし折っていく。[p]

三分経った。[p]
[auto_chara name="翔太" face="normal" left=180]
龍也からグローブを受けとった翔太が、パーマのかかった茶髪を揺らしながら、
その場でトントンと軽くジャンプをする。[p]

[wait time=500]

ボクサーの真似事だ。[l]翔太のパンチは龍也ほど重くはない。[p]

[wait time=500]

だが、こちらのガードのタイミングをずらすようなフェイントを入れて来たり、[l][r]
的確に急所を狙ってきたりと、とにかく意地が悪い。[p]
翔太のずる賢い性格を反映したような立ち回りだった。[p]

[wait time=500]

[playse storage=se/punch2.ogg volume=100]
[wait time=1000]
[playse storage=se/punch1.ogg volume=100]
[wait time=500]
[playse storage=se/punch2.ogg volume=100]
[wait time=500]

人を三分間殴り続けるのも、かなり疲れるものなのだろう。[p]

時間が経つにつれて、大振りになって打撃が雑になるのがわかる。[p]
もう……そろそろ三分経つのだろうか。[p]

[wait time=1000]

[auto_chara name="翔太" face="nastysmile" left=180]
「おっと、もう三分だ。これで終わりだ……よっと！」[l][r]
[playse storage=se/punch3.ogg volume=100]
[wait time=500]

最後にフェイントを交えた一撃を放ってきた。[l]
これが油断していた拓海の腹に炸裂する。[p]

[wait time=1000]
「くっ――」[l]
[playse storage=se/fall_down.ogg volume=100]
拓海は体をくの字に曲げて、膝を着いた。[p]

[wait time=500]

[auto_chara name="綾香" face="serious" left=300]
「あんた弱いねえ。私でも勝てちゃいそう」[l][r]

綾香が黒髪のロングヘアを指でいじりながら吐き捨てる。[p]

拓海は腹を押さえたまま、屋上の扉へ目を向けた。[p]

授業へ戻る生徒が、誰か一人でも扉を開けてくれないか。[l][r]
そんな期待をした自分が、ひどく惨めだった。[p]

扉は閉じたまま、湿った風に蝶番を鳴らすだけだった。[p]

[wait time=500]

[auto_chara name="龍也" face="normal" left=50]
「明日も昼休み来いよ」[l]

と龍也が言って屋上から出ようとすると、[r]残りの二人もぞろぞろと従っていく。[p]
[playse storage=se/three_walk.ogg volume=100]
[wait time=500]

「グローブ……いつものとこにしまっとけ」[p]

そう言い残して、三人は去っていった。[p]
[fadeoutbgm time=3000]
[chara_hide_all time=300]

[wait time=2000]

[playse storage=se/throw_globe.ogg volume=100]
一人取り残された拓海は、グローブを乱暴に外して傍らに放った。[p]

[wait time=500]
[playse storage=se/heartbeat.ogg loop=true volume=100]
自分が受けた仕打ちへの怒りが、急速に膨らんでいく。[l][r]
そしてそれは、自分自身の無力さに対する怒りでもあった。[p]

[wait time=1000]

だが、ぶつける相手はもうここにいない。[p]

[wait time=1000]

三人の足音が消えると、風と自分の心音だけが残った。[p]
行き場を失った怒りが、今度は自分へ刃を向ける。[p]

[wait time=1000]

ふと、フェンスへ視線を向ける。[l][r]
転落を防ぐための、最低限の高さしかないフェンスだ。[p]

[wait time=500]

自らよじ登ろうとする人間まで阻む造りではなく、[l][r]
その気になれば簡単に越えられる。[p]

[wait time=1000]
*ch1_jump

拓海は以前から、屋上から飛び降りたらどうなるのか気になっていた。[p]

[wait time=500]

実際に調べたこともある。[p]

[wait time=500]

この屋上は地上から約十メートルあり、[l]
ここから固い地面に衝突すれば、高い確率で助からないだろう。[p]

[wait time=500]

仮に助かったとしても、重度の障害が残り、[l]
死ぬより苦しい地獄が待っているかもしれない。[p]

[wait time=1000]

気づくと拓海はフェンスに手をかけてよじ登っていた。[p]
[playse storage=se/fence_creak.ogg volume=100]
[wait time=500]

そしてフェンスをまたぎ、[l]
屋上のふちにゆっくりと足を降ろした。[p]

[wait time=500]
[playse storage=se/wind_rooftop.ogg volume=20]
[cg storage="ch01_sc01_jumping_off.webp"]
[bg storage="ch01_sc01_jumping_off.webp" time=600]
雨で少し滑りやすくなった足場を、風が制服ごと揺さぶる。[p]
視線を下へ向けると、色鮮やかに花が咲く正門前の花壇が見える。[p]

[wait time=500]

もうすぐ昼休みも終わり、[l]
5限目が始まる。[p]

[wait time=500]

生徒たちは皆教室に戻ったようで人の気配はない。[p]

[wait time=500]
拓海は、[l]まるで子供が親の胸に飛び込むような自然な動作で、[l]両足をそろえて[p]
[delay speed="130"]
跳んだ――。[p]
[resetdelay]
[bg storage="black.png" time=0 wait=false]
[stopse]
[stopbgm]
[wait time=1000]
[delay speed="90"]
ジェットコースターのような浮遊感が一瞬あり、[p]

[wait time=500]

すぐにものすごい勢いで地面に向かって加速する――[l]はずだった。[p]

[wait time=1000]

しかし、[p]

[wait time=500]

周りの景色がスローモーションになって、[l]
ゆっくりと落ちていくように感じる。[p]

[wait time=1000]
[playbgm storage="tension_low.ogg" loop=true volume=100 fadein=true time=1500]

これが走馬灯か。[p]
拓海は冷静に受け止めていた。[p]

[wait time=1000]

足から地面に衝突する。[p]
衝撃という言葉では、まったく足りなかった。[p]

[wait time=1000]

足の裏から、嫌な音が響いた。[p]
自分の脚ではないみたいに、[l]
膝から下が崩れていく。[p]

[wait time=1000]

まだ、止まらない。[p]

[wait time=700]

折れた太ももの奥から、[l]
体の内側を突き破られる感覚が走った。[p]

[wait time=1000]

腹の奥で、何かが潰れた。[p]
熱いものが喉まで込み上げてくる。[p]

[wait time=1000]

胸が折り畳まれる。[p]
息を吸おうとしても、[l]
体がもう、その動きを忘れていた。[p]

[wait time=1000]

すると、[l]地面がどんどん近づいてくるように感じた。[p]

[wait time=500]

そう、[l]顔面が地面に激突しようとしていた。[p]

[wait time=1000]

顎が砕ける。[p]
歯が散る。[p]

[wait time=700]

視界いっぱいに、[l]
濡れたコンクリートが広がった。[p]

[wait time=700]

――そこで、[l]
衝撃は終わった。[p]

[fadeoutbgm time=1000]
[stopse fadeout=1000]
[wait time=1800]

世界が、[l]
[resetdelay]
[delay speed="120"]
切れた。[p]
[resetdelay]
[delay speed="90"]

[wait time=1200]

「これが死というものか」と拓海は思った――。[p]

[wait time=2000]

……。[p]

[resetdelay]
[playse storage=se/wind_rooftop.ogg volume=20]
[bg storage="bg_rooftop_day.webp"]
風が聞こえた。[p]

眩しい。[p]

視界が戻る。[p]

拓海は自分の体を確認した。[p]

血もついていなければ、壊れてもいない。[p]

隣を見ると放り投げたグローブが見える。[p]

[wait time=500]
[playbgm storage="tension_low.ogg" loop=true volume=100 fadein=true time=1500]
さっきいた屋上から一歩も動いていないのだ。[p]

[wait time=500]

時計の針を見る限り、時間は経っていないようだった。[p]

夢を見て寝ていたわけでもないらしい。[p]

[wait time=500]

「幻」を見たのだろうかと思考を巡らせているうちに、
混乱が少し和らいできた。[p]

[wait time=500]

無傷の脚へ目を落とした瞬間、砕けた感触だけが鮮明に蘇った。[p]
[fadeoutbgm time=1000]
[playse storage=se/heartbeat.ogg loop=true volume=100]
[wait time=1000]

体がガタガタと震えだす。[l]
額から汗が流れ出る。[p]

[wait time=1000]

脚が崩れていく感覚や、[l]
腹の奥が潰れるような痛みを、[l]
体が知っているように感じた。[p]

[wait time=1000]

本当に体験してきたかのようだった。[p]
[stopse fadeout=3000]
[wait time=1000]
[bg storage="black.png"]
そのあとのことはよく覚えていない。[p]

気づけば学校を飛び出していた。[p]

誰とすれ違ったのか、どうやって駅まで歩いたのかも思い出せない。[p]

靴を脱いだ記憶さえ曖昧だった。[p]

[playse storage=se/room_noise.ogg loop=true volume=70 fadein=true time=2000]
[wait time=1000]

次に意識がはっきりした時には、[l]
自宅のベッドに座り込んでいた。[p]

制服も脱がないまま、何時間も動けなかった。[p]

何度も膝に手を伸ばしては、途中で止めた。[p]

傷一つない。[l][r]
それなのに、あの時の感覚だけが、まだ体に残っている気がした。[p]

階下で食器の触れ合う音がした。[l][r]
いつもと同じ夕食の時間を知らせる音だった。[p]

呼びかける家族の声に返事をしようとして、喉が塞がる。[p]

今ここにいる自分と、[l]
あの屋上で見たものの、どちらを信じればいいのかわからなかった。[p]

夢だったとは思えない。[p]

何度も自分の腕をつねった。[p]

鏡で顔を見た。[p]

心臓の鼓動を確かめた。[p]

それでも――。[p]

自分が本当に生きているのか。[p]

その答えだけは、最後までわからなかった。[p]

その夜は、朝まで部屋の明かりを消すことができなかった。[p]

[stopse fadeout=3000]
[wait time=1500]

*ch1_return
[playse storage=se/school_chime.mp3 volume=80]
[wait time=3000]

「お前、なに学校休んでんだよっ！」[p]

[playse storage=se/kabedon.ogg volume=100]
[cg storage="ch1_rooftop_shota_threat.webp"]
[bg storage="ch1_rooftop_shota_threat.webp" time=200]
[playbgm storage="tension_low.ogg" loop=true volume=100 fadein=true time=1500]
[wait time=1200]

三日ぶりに姿を見せた拓海を見るなり、[l]
龍也は怒鳴り声を上げた。[p]

あの日から、拓海は二日間学校を休んでいた。[p]

その間、クラスメイトから連絡は一件もなかった。[p]

誰にも怪しまれずに済んだことには安堵した。[l][r]
その一方で、誰にも気づかれなかったことが、少しだけ胸に残った。[p]

そして、ようやく戻ってきた学校で、[l]
最初に自分へ向けられた言葉がこれだった。[p]

「グローブ片付けずに帰ったろ。雨で濡れてんじゃねえかっ」[p]

[bg storage="bg_rooftop_day.webp" time=600]
[auto_chara name="龍也" face="angry" left=50]

そう怒鳴ると、拓海のふくらはぎに回し蹴りを入れた。[p]
[playse storage=se/punch3.ogg volume=100]
龍也は以前サッカー部だったのだ。[l]
そのせいだろうか、手より足が先に出るタイプだ。[p]
[auto_chara name="翔太" face="normal" left=180]
「今日は『トレーニング』できないね」[p]

翔太がくわえタバコでシャドーボクシングをする。[p]
[auto_chara name="綾香" face="serious" left=300]
「ちょっとやだこれ！グローブ生乾きで絶対臭くなってるよ」[p]

綾香が濡れたグローブをしゃがんで覗き込みながら、余計なことを言う。[p]
[auto_chara name="龍也" face="angry" left=50]
「お前どうすんだよ！グローブ付けずにやるか？」[p]

龍也がこちらに向かって凄んでくる。[l]グローブが使えないことで機嫌を損ねている。[p]

蹴られたふくらはぎよりも、「グローブを付けずに」という言葉の方が冷たく残った。[p]

龍也にとって問題なのは、拓海が二日間消えていたことではない。[l][r]
殴るための道具が濡れたことだけなのだ。[p]
[auto_chara name="翔太" face="nastysmile" left=180]
「まあ、そう怒らないで。別の遊びでもしよう」[p]

翔太が提案をもちかけた。[p]
「誰に一番根性があるか試そうよ」[p]

どうやら名案を思い付いたようで、ほくそ笑んでいる。[p]
[auto_chara name="龍也" face="normal" left=50]
「なんだよそれ」[p]
[auto_chara name="翔太" face="normal" left=180]
「これだよ、これ」[p]

翔太はそう言って、タバコの箱を指さした。[p]
高校生の翔太がどうやってタバコを手に入れているのか、以前の拓海は不思議に思っていた。[p]
だが、翔太が手間賃を渡して綾香から受け取っているところを見て、謎が解けた。[p]
綾香がバイト先のコンビニから調達しているらしい。[p]
[auto_chara name="綾香" face="anxiety" left=300]
「タバコで根性を試すって、もしかして根性焼き？[l]
私、嫌だよ。跡が残るし」[l]綾香が勘付いた。[p]
[auto_chara name="翔太" face="nastysmile" left=180]
「さすが綾香、察しがいいね。その通り！[l]
これを何秒耐えられるか、順番に勝負していこう」[p]
正気とは思えない提案だった。[p]
[auto_chara name="綾香" face="serious" left=300]
「はあ？私絶対やらないからね」[p]

綾香は黒のロングヘアを揺らしながら首を振った。[p]
[auto_chara name="翔太" face="sulk" left=180]
「全員でやらないと勝負にならないだろ」[p]

翔太は悲しそうにして見せる。[p]
[auto_chara name="龍也" face="smile" left=50]
「面白そうだなそれ」[p]

龍也も賛同した。好奇心からくるものなのか、[l]
よほど自信があるのか。[p]
[auto_chara name="綾香" face="serious" left=300]
「ちょっと、勝手に話進めないでよ。私はやんないよ」[p]

このまま多数決で負けてしまうことを恐れて、綾香は断固拒否する。[p]
「私、思いついたんだけど、こいつが何秒声を出さずに耐えられるか、みんなで予想するのはどう？」[p]
とんでもないことを言い出す綾香。[p]
「こいつ」というのは当然、拓海のことを指している。[p]
[auto_chara name="翔太" face="nastysmile" left=180]
「それは、面白いかもね」[p]

翔太が賛成する。[p]
[auto_chara name="龍也" face="smile" left=50]
「ああ、それでいいな」[p]

龍也も賛成し、三人の間では全会一致となる。[p]

三人の視線は一度も拓海へ向かなかった。[p]

本人の目の前で、本人の皮膚を焼く相談をしている。[l][r]
それなのに拓海だけが、その話し合いの外に置かれていた。[p]
[auto_chara name="綾香" face="serious" left=300]
「私が勝ったら、タバコを買う手間賃、値上げするからね。[l]大変なのよ、店長が見てない隙に会計するの」[p]
[auto_chara name="翔太" face="sulk" left=180]
「おいおい、何て冷たいことを言うんだよ」[p]

翔太は不貞腐れた。[p]
「じゃあ俺が勝ったら、お前その店長をデートに誘えよ」[p]
[auto_chara name="綾香" face="serious" left=300]
「それだけはホントに無理！あいつマジで臭いし、キモすぎるから！」[p]

綾香は思いっきり顔をしかめて嫌がった。[p]
[auto_chara name="龍也" face="normal" left=50]
「無駄話はいいから早く始めようぜ」[p]

龍也が痺れを切らした。[p]
「賭けの内容はどうすんだよ」[p]
[auto_chara name="綾香" face="serious" left=300]
「そうね……タバコを当ててから、声を出すまでの秒数が一番近い人の勝ちでいいでしょ」[p]

綾香がルールをまとめ始めた。[p]
「私は当てたら直ぐに声を出す。[l]『一秒も持たない』に賭けるわ」[p]

彼女は右手の人差し指を立てて、そう宣言する。[p]
[auto_chara name="龍也" face="normal" left=50]
「さすがに二秒くらいは我慢できるんじゃないか？」[p]

龍也は真剣に考えているようだ。[p]
[auto_chara name="翔太" face="normal" left=180]
「じゃあ俺は、五秒に賭けよう」[p]

翔太は逆張りをする性分らしい。[p]
ここまで黙っていた拓海だったが、[l]
このままでは体に火傷を負わされることがわかったので、何とか止める方法を懸命に考えていた。[p]
[auto_chara name="拓海" face="level1_normal" left=120]
「ちょっと待ってくれ」[p]

そのとき、拓海は賭けを成立させない方法を思いついた。[p]
「これじゃあ、賭けにならないだろ」[p]
[auto_chara name="龍也" face="angry" left=50]
「なんだよお前急に、うるせえな」[p]

龍也が吠える。[p]
[auto_chara name="拓海" face="level1_normal" left=120]
「このまま俺がタバコの火を当てられたとして、すぐに声を出せば綾香の勝ちになる。[l]
そこで賭けは終わりになるだろ」[p]
三人は納得したように黙って聞いている。[p]
「俺に我慢するメリットがないから、すぐに声を出すよ。[l]
だから、勝負にならない。[l][r]こんなこと、意味がないからやめてくれ！」[p]

言い終えると、三人の間に短い沈黙が落ちた。[p]

拓海は胸の奥で、何度も「気づけ」と繰り返した。[l][r]
理屈の穴ではなく、自分が本気で怯えていることに。[p]
[auto_chara name="翔太" face="normal" left=180]
「なるほど、頭いいね！その通りだ」[p]

翔太が感心している。[p]
しばらく天を仰ぎ見て考える。[p]

「じゃあ我慢するメリットを別に用意すればいいんだよね」[p]
[auto_chara name="龍也" face="normal" left=50]
「どういうことだ？」[p]

龍也が質問する。[p]
[auto_chara name="翔太" face="nastysmile" left=180]
「拓海が声を出してしまったら、もう1回タバコを当てることにしたらいいんだよ」[p]

何てことを言い出すんだ、と拓海は思った。[p]

助かるために絞り出した言葉が、翔太の中で別の形に組み直されていく。[l][r]
拓海は自分の口で二本目の火を呼び込んだような気がした。[p]
「拓海としては、もう一度火を当てられたくないから、[l]
なるべく声を出さずに1回で終わりにしたいと思うでしょ」[p]
翔太はみんなの理解を確認する。[p]
「拓海は声を出さないように頑張るはずだから、すぐに綾香の勝ちで終わることはない。[l]
これなら賭けが成立する」[p]
[auto_chara name="綾香" face="normal" left=300]
「あんた天才じゃん！」[p]

綾香が大げさに翔太のことを褒める。[p]
二人はお互いをののしり合ったりはするが、何だかんだ仲が良い。[p]
[auto_chara name="龍也" face="smile" left=50]
「ちょっと待ってくれ！[l]じゃあ俺も、五秒に変えたい」[p]

龍也の機嫌はいつの間にか直ったようだ。[p]
[auto_chara name="綾香" face="normal" left=300]
「はあ？ずるーい」[p]

綾香も笑いながら抗議のフリをする。[p]
[chara_hide_all time=300]
[wait time=500]
拓海はこの賭けをやめさせることに失敗した。[l]
むしろ状況を悪化させたようだった。[p]
どうしようもない。このままじゃ、本当に焼かれる――。[p]

扉までは数歩。[l][r]
フェンス際には人一人が抜けられる隙間がある。[l][r]
綾香だけなら、体格は自分とさほど変わらない。[p]

拓海は三人の足の向きと、開いた空間を必死に見比べた。[p]

どうするべきか――。
[choice_start count=3]
[choice name="choice_ch1_rooftop_run" text="出口へ走る" target="*run"]
[choice name="choice_ch1_rooftop_fight" text="龍也に挑む" target="*fight"]
[choice name="choice_ch1_rooftop_ayaka" text="綾香の横を抜ける" target="*ayaka"]
[s]

*run
[cm]

[auto_chara name="拓海" face="level1_normal" left=120]
拓海は翔太の横をすり抜け、一気に出口へ駆け出した。[p]

[auto_chara name="翔太" face="normal" left=180]
「おっ！逃げる気か？」[p]

[auto_chara name="龍也" face="angry" left=50]

[playbgm storage="tension_high.ogg" loop=true volume=60 fadein=true time=1500]

「おっと」[p]

龍也は素早く回り込み、逃げようとした拓海の腕を掴んだ。[p]

[jump target="*caught"]


*fight
[cm]

[auto_chara name="拓海" face="level1_normal" left=120]
拓海は覚悟を決め、龍也へ拳を振り上げた。[p]

[auto_chara name="龍也" face="normal" left=50]
しかし龍也は軽く首を傾けるだけでかわした。[p]

「やっと反抗する気になったか」[p]

[auto_chara name="拓海" face="level1_normal" left=120]
敵わないと思った拓海は、諦めてそこから逃走を図る。[p]

[auto_chara name="龍也" face="angry" left=50]

「おっと」[p]

龍也は一瞬で拓海との距離を詰め、その腕を掴んだ。[p]

[playbgm storage="tension_high.ogg" loop=true volume=60 fadein=true time=1500]

[jump target="*caught"]


*ayaka
[cm]

[auto_chara name="拓海" face="level1_normal" left=120]
拓海は綾香を押しのけ、その隙に逃げようと踏み出した。[p]

[auto_chara name="綾香" face="serious" left=300]
しかし綾香は一歩下がっただけだった。[p]

「龍也」[p]

その一言だけ。[p]

次の瞬間には龍也が腕を掴んでいた。[p]

[auto_chara name="龍也" face="angry" left=50]

[playbgm storage="tension_high.ogg" loop=true volume=60 fadein=true time=1500]

[jump target="*caught"]


*caught

「何逃げようとしてんだよ……お前」[p]

[playse storage="se/hold_down.ogg" volume=80]

そう言って龍也は、拓海を背後から締め上げ、そのまま地面に押さえつけた。[p]

[auto_chara name="拓海" face="level1_shout" left=120]

拓海は凄まじい力で抵抗したが、体格の違いからか、身動きがほとんど取れなかった。[p]

[auto_chara name="翔太" face="serious" left=180]
「よし、じゃあ龍也はそのまま押さえてね」[p]

と言って翔太は、暴れる拓海の腕を押さえ、腕時計を外した。[p]
[playse storage=se/watch_take_off.ogg volume=100]
[auto_chara name="綾香" face="normal" left=300]
「何してんのそれ」[p]

と綾香が素朴な質問をする。[p]
[auto_chara name="翔太" face="normal" left=180]
「火傷の痕が目立っちゃうと思ってさ。[l]腕時計の位置なら隠れるんじゃないかな」[p]
[auto_chara name="綾香" face="normal" left=300]
「へえ……あんたそんなとこにまで頭が回るのね」[p]

綾香はしきりに感心している。[p]
[auto_chara name="拓海" face="level1_shout" left=120]
「やめろっ！[l]クズ野郎っ！」[p]

拓海は必死で抵抗している。[p]
[auto_chara name="翔太" face="nastysmile" left=180]
「酷いことを言うじゃんか」[p]

翔太は箱から新しいタバコを一本取り出すと、[l]
慣れた手つきでタバコに火をつけた。[p]
[playse storage=se/writer.ogg volume=100]
先端に鮮やかな火が灯る。[p]
「よーし……それじゃあ、根性見せてくれよ。[l]
拓海くーん」[p]
翔太がゆっくりと、[l]
タバコの火を近づけてくる。[p]

[wait time=1000]

赤い火が、[l]
少しずつ近づく。[p]

[wait time=1000]

龍也はさらに強い力で拓海を押さえつけた。[p]
[wait time=1000]
タバコの先端が[l]拓海の皮膚を焼いた。[p]
[playse storage=se/fire.ogg volume=100]
[auto_chara name="拓海" face="level1_shout" left=120]
「ああっ！」[p]

あまりの痛みに、拓海は思わず大きな声を上げた。[p]

肉の焦げる臭いが鼻へ届く。[l][r]
ほんの一瞬なのに、その臭いだけは自分の体から切り離せなかった。[p]

龍也の腕に押さえられているはずなのに、[r]
焼かれた手首だけが遠く、誰か別の人間のもののように感じられた。[p]
その瞬間、拓海が激しく暴れたため、タバコは一瞬触れただけで地面に落ちた。[p]
[auto_chara name="翔太" face="normal" left=180]
「あーあ。もったいない」[p]

翔太はタバコの方が気掛かりなようだ。[p]
[auto_chara name="綾香" face="normal" left=300]
「どうやら私の勝ちだね」[p]

綾香は賭けに勝って嬉しそうだ。[p]
「やっぱり、一秒も持たなかった」[p]
[auto_chara name="翔太" face="serious" left=180]
「ちょっと待てよ、今のは暴れたからノーカンだろ」[p]

翔太が訂正を求める。[p]
[auto_chara name="龍也" face="angry" left=50]
「どちらにしても、声を出したからもう一回だ」[p]

龍也は拓海を押さえつけながら言う。[p]
「翔太、もう一回やれよ」[p]

そう顎で指示を出す。[p]
[auto_chara name="拓海" face="level1_shout" left=120]
「もうやめろっ！[l]離せっ！」[p]

拓海は叫んだ。[p]
もう、うんざりだった。[l]
またあの痛みがくることも耐え難いが、[l]
何より、体の自由を奪われていることが、こんなにも屈辱的なことだと初めて知った。[p]
自分の無力さを嫌というほど思い知らされる。[p]
こいつらは絶対に許さない。[l]
;ここで挿絵入れたい。復讐を誓うシーン
同じ目に、[l]いやもっと酷い目に遭わせてやる。[l][r]
拓海はそう誓った。[p]

叫んだ拍子に、火傷したばかりの手首が床へ擦れた。[p]

痛みに視界が白くなる。その向こうで三人が笑っている。[p]

助けを求めたい気持ちは、もう浮かばなかった。[l][r]
代わりに三人の顔だけを忘れまいと、一人ずつ睨み返した。[p]
[auto_chara name="翔太" face="nastysmile" left=180]
「よし、それじゃあ二本目いきまーす」[p]

翔太が火をつけた新しいタバコを、再び近づけてくる。[p]
今度はもう手を振り払われないように、[l]
利き腕で拓海の腕を力強く握った。[p]
*ch1_illusion
[playse storage=se/tinnitus.ogg volume=100 buf="0"]
[chara_hide_all]
[bg storage="white.png" time=80]
[wait time=300]
[playse storage=se/white_noise.ogg volume=100 buf="1"]
[bg storage="black.png" time=300]
[fadeoutbgm time=3000]
[delay speed="120"]
その瞬間、[l]世界から音が消えた――。[p]
[resetdelay]
[wait time=1000]
拓海は屋上での出来事のあと、あの「幻」についてずっと考えていた。[p]
わからないことばかりだったが、なぜか一つだけ確信していることがあった。[p]
[playbgm storage="tension_low.ogg" loop=true volume=100 fadein=true time=1500]
あの「妙に現実味のある幻」は、誰かによって[l][r]「見させられている」ものだと感じていた。[p]
もっと言えば、拓海自身の力によるものではないか。[p]
うまく説明できなかったが、昂ぶった感情によって、自ら「見せた」ものではないか。[p]
そんな確信があった。[p]
多少なりとも根拠はあった。[p]
一つは「幻」が拓海の認識の範囲内の出来事だったことだ。[p]
あの日の帰り道、正門の前の花壇に目をやると、[l]
整備のためか、朝の登校時にはなかったブルーシートで覆われていたのだ。[p]
「幻」の中で見下ろした場所には、[l]
拓海が見慣れた色鮮やかな花壇があった。[p]
現実の風景と、思い込みで作られた景色との矛盾。[l]
あの「幻」は拓海が思い込んだ景色でできていた。[p]
二つ目は、飛び降り自殺について調べたときの記憶だ。[l]
拓海は落下の様子や、地面に衝突した人間の体がどのように崩壊していくかを調べたことがあった。[p]
あの「幻」は、その時調べたネットの記事に酷似していた。[p]
これらのことから、拓海はあの「幻」を自分の力で起こしたのではないかと考えた。[p]
そして、意図して引き起こすこともできるかもしれないと仮説を立てていた。[p]
[fadeoutbgm time=3000]
[bg storage="bg_rooftop_day_hallucination.webp" time=300]
[stopse fadeout=1000]
[wait time=1000]
[font color="#CFE8FF"]
[playbgm storage="ability_theme.ogg" loop=true volume=80 fadein=true time=1500]
時が止まったと感じるほど、すべてがゆっくりと動いている。[l]
翔太は目を見開いたままその場で固まったように見える。[p]
そして、翔太に触れられた手を通して、[l]
拓海の思考が翔太に流れ込んでいく。[p]
次の瞬間、拓海の意識は翔太の視点と重なった。[p]
翔太は、目の前の組み合う二人を見ている。[p]
すると、龍也は拓海を押さえつけるのをやめて、[l]
マネキンのようになった翔太に飛びかかった。[p]
[playse storage=se/pushdown.ogg volume=100]
[cg storage="ch01_cg_shota_nightmare.webp"]
[bg storage="ch01_cg_shota_nightmare.webp" time=200]
そのまま肩を掴んで押し倒し、[l]
ゆっくりと馬乗りになる。[p]
翔太は何も抵抗ができない。[p]
龍也は翔太の手に持っていたタバコを奪う。[p]
左手で顔を押さえつけて、[l]
右手に持ったタバコを上から近づけてくる。[p]
一体何をする気だろうか。[p]
そのタバコは段々と大きく、[l]
ピントが合わないほど顔に近づいてくる。[p]
目に当てようとしているのだと、[l]
翔太は気づく。[p]
だが、抵抗も、目を閉じることさえも、[l]
ついにできなかった。[p]
[playse storage=se/fire.ogg volume=100]
[bg storage="white.png" time=50]
[wait time=500]
[bg storage="black.png" time=70]
[wait time=500]
[bg storage="white.png" time=30]
[wait time=500]
[bg storage="black.png" time=300]
目玉焼きを作るとき、[l]
熱したフライパンに生卵を割り落とす。[p]
卵の透明な部分は、熱で固くなり白くなる。[l]
タンパク質が熱で変性し、白く凝固するためだ。[p]
そして、それは不可逆的な変化であり、[l]
一度白くなった部分は元に戻らない。[p]
目の角膜は主にタンパク質で構成されている。[l]
熱されたタバコの先端は900度にまで達するそうだ。[p]
[wait time=1000]
「うぐぅぅぅ――」[p]

脳天を突き抜けるような痛みが翔太を襲った。[p]
角膜は体の中でも、特に痛みを感じやすい組織である。[p]
「痛み」という感覚に、体のすべてが支配されていく。[p]
痛い、[l]辛い、[l]苦しい。[p]
言葉にならないうめき声が口から洩れていく。[p]
何も考えられない。[p]
[bg storage="bg_rooftop_day_hallucination.webp" time=300]
突然、目の前が明るくなった。[p]
龍也が翔太の顔面を押さえつけていた左手が、顔から離れたのだ。[p]
助かったのだろうか。[p]
龍也は翔太に馬乗りになったまま、[l]
新しいタバコをくわえて、それにライターで火をつけた。[p]
[playse storage=se/writer.ogg volume=100]
大きく息を吸い込み、天に向かって息を吐く。[p]
すると今度は反対の手で、[l]
翔太の濁った目の方を押さえつけた。[p]
龍也がこちらを見て、何かを口にしている。[p]
翔太は、見える方の目で、[p]
それを読み解いた。[p]
[bg storage="white.png" time=80]
[wait time=500]
[bg storage="black.png" time=300]
[delay speed="120"]
[font size=40 color="#B8DFFF"]
コエヲ……[p]
[wait time=500]
[font size=46 color="#B8DFFF"]
ダシタカラ……[p]
[wait time=500]
[font size=52 color="#B8DFFF"]
[quake time=300 hmax=2 vmax=10]
モウイッカイ[p]
[resetdelay]
[resetfont]
[wait time=500]
[fadeoutbgm time=3000]
[bg storage="bg_rooftop_day.webp" time=600]
[playse storage=se/wind_rooftop.ogg volume=100]
[wait time=500]
「うわあああああああああああああああああ」[l][r]
[quake time=1200 hmax=8 vmax=30]
[playbgm storage="tension_low.ogg" loop=true volume=100 fadein=true time=1500]
その瞬間、翔太が両目を押さえながら、[l]
凄まじい絶叫を上げて、その場で転がり回った。[p]
拓海を押さえつけていた龍也も思わず立ち上がり、近づいていく。[p]

[auto_chara name="龍也" face="impatience" left=50]
「おい、どうしたんだよ！[l]どこか怪我したのか？」[p]
龍也は怪訝そうな顔をした。[p]
[chara_hide_all time=300]
龍也の声を聞くなり、「ひいっ」と声を出し、[l]
恐怖にひきつった顔で後ずさりする翔太。[p]
よく見ると、翔太がいた場所の床が濡れている。[l]
翔太は失禁していた。[p]
あまりの状況に声を失う龍也。[l]

[auto_chara name="綾香" face="anxiety" left=300]
「翔太――」[p]

綾香も、それ以上は言葉が出なかった。[p]
[chara_hide_all time=300]

ついさっきまで笑っていた三人の間に、沈黙が生まれた。[p]

誰も拓海を見ていない。[l][r]
それでも今度の沈黙だけは、自分が作ったものだった。[p]

その一方で、拓海の胸は激しく高鳴っていた。[p]
[fadeoutbgm time=3000]
[playse storage=se/heartbeat.ogg loop=true volume=100]
[wait time=1000]
一瞬だけ想像した、最も起きてほしくない未来。[p]
目を焼かれる――最も恐れていた事態。[p]
それが起こったのは幻とはいえ、[l]
自分ではなく翔太だった。[p]
怯える翔太を前にしても、胸を満たしたのは罪悪感より成功の実感だった。[p]

焼かれた手首はまだ脈打つように痛んでいる。[l][r]
だが、その痛みさえ、もう一方的に与えられたものではないように思えた。[p]

初めて三人を止めた。[l][r]
その事実が、恐怖と同じ速さで拓海の中へ染み込んでいく。[p]

床を転げる翔太から目を逸らせないまま、[r]
拓海は自分の口元がわずかに緩んでいることに気づかなかった。[p]
拓海は自分の「異能」についての仮説が正しいという確信を得たのだった。[p]
[stopse fadeout=3000]
[wait time=1000]
[playse storage=se/wind_rooftop.ogg volume=20]
[wait time=3000]
@jump storage="demo_ending.ks" target="*start"

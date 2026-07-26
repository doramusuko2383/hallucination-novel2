
*ch1_start
*chapter1
[scene_title title="第1章"]

;第1章

[cm]
[clearfix]
[start_keyconfig]
[showmenubutton]

; [bg] は time 省略時に3秒フェード待ちになるため、黒背景は即時切替にする
[bg storage="black.png" time=0 wait=false]

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
[playbgm storage="classroom_buzzing.ogg" loop=true volume=50 fadein=true]
教室の窓から見上げる空は、
重く、禍々しく、
[p]

拓海の心をゆっくりと押し潰していく。
[p]

[fadeoutbgm time=3000]
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

[playse storage=se/school_chime.mp3]
[wait time=2000]

[wait time=1000]

お昼を知らせる、憂鬱なチャイム。
[p]

[wait time=500]

昼休みになると、校舎の屋上に来るように命じられている。[p]

教師にもクラスメイトにも見えないところで行われるこの「日課」を、[r]誰にも相談することができない。[p]
[wait time=1000]

……[p]

行くしかない。[p]

[wait time=1000]
[choice_start count=1 y=360]
[choice name="choice_ch1_go_rooftop" text="屋上へ向かう" target="*next"]
[s]

*next
[cm]

[bg storage="bg_rooftop_door.webp" time=600]
[wait time=500]
[playse storage=se/footstep_stairs.ogg volume=30]
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

[playse storage=se/wind_rooftop.ogg volume=20]
[playbgm storage="tension_low.ogg" loop=true volume=75 fadein=true time=1500]
[wait time=2000]
九月だというのに外は蒸し暑い。
[p]

屋上は朝方降った雨が床のコンクリートに染み込み、少し濡れていた。[p]

[wait time=1000]

いつもの三人は、今日は地面に座らず、フェンスにもたれかかっている。[l]

雨が染みて濡れるのを嫌がったのだろう。[p]

*ch1_training

[bg storage="ch01_sc01_rooftop_wait.webp" time=600]

[playse storage=se/foot.ogg volume=50]

[wait time=1000]
「来たか」[p]

三人の中でも一番背の高い、リーダー格の龍也が拓海を見て言う。[p]

[wait time=500]

声は淡々としているが、その視線は鋭い。[p]
[bg storage="bg_rooftop_day_ch1.webp" time=600]
[auto_chara name="龍也" face="normal" left=50]
「じゃあ、いつものやつやろうぜ」[p]

龍也はどこから手に入れたのだろうか。ボクシンググローブを手にはめながら言った。[p]

それで拓海をサンドバッグにするのが、龍也たちの「トレーニング」だった。[p]

[wait time=500]

拓海は無言のまま、用意されたグローブを手に取る。[p]

[wait time=500]

これが日常になってしまっている自分が情けない。[p]

[auto_chara name="翔太" face="nastysmile" left=180]
「三分で次、俺に交代してよ」[l]

悪友の翔太がニヤニヤと笑いながら言う。[p]

[auto_chara name="綾香" face="normal" left=300]
「やめなよ、かわいそうじゃーん」[l]

仲間の綾香が、薄ら笑いを浮かべながら表面的な言葉を口にする。[p]

[chara_hide name="綾香"]

綾香はこの「遊び」には参加しなかった。[l]

それは、拓海を憐れんでいるわけではない。[p]

[wait time=500]

自分が汗をかくのも嫌だし、何かあったときに責任を負いたくないからだ。[p]

「トレーニング」と称されたこのボクシングの真似事のルールはこうだ。[p]

[wait time=500]

三分一ラウンド[l][r]
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
大きく振りかぶって、蹴りをお腹に入れてきた。[p]

[wait time=1000]

こんな調子だから、ルールなんて、有ってないようなものなのである。[p]

[auto_chara name="龍也" face="normal" left=50]
今日の「トレーニング」も一方的なものだった。[p]

[playse storage=se/punch1.ogg volume=30]
[wait time=500]
[playse storage=se/punch2.ogg volume=30]
[wait time=500]
[playse storage=se/punch1.ogg volume=30]
[wait time=500]
[chara_hide_all time=300]
打ち返すと更にやり返されることが分かってからは、[l]
拓海は避けたり、ガードを固めたりすることに徹していた。[p]

[wait time=500]

痛みには、決して慣れることは無かった。[p]

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

[playse storage=se/punch2.ogg volume=30]
[wait time=1000]
[playse storage=se/punch1.ogg volume=30]
[wait time=500]
[playse storage=se/punch2.ogg volume=30]
[wait time=500]

人を三分間殴り続けるのも、かなり疲れるものなのだろう。[p]

時間が経つにつれて、大振りになって打撃が雑になるのがわかる。[p]
もう……そろそろ三分経つのだろうか。[p]

[wait time=1000]

[auto_chara name="翔太" face="nastysmile" left=180]
「おっと、もう三分だ。これで終わりだ……よっと！」[l][r]
[playse storage=se/punch3.ogg volume=30]
[wait time=500]

最後にフェイントで一撃をかましてきた。[l]
これが油断していた拓海の腹に炸裂する。[p]

[wait time=1000]
「くっ――」[l]
[playse storage=se/fall_down.ogg volume=50]
拓海は体をくの字に曲げて、膝を着いた。[p]

[wait time=500]

[auto_chara name="綾香" face="serious" left=300]
「あんた弱いねえ。私でも勝てちゃいそう」[l][r]

綾香が黒髪のロングヘアを指でいじりながら吐き捨てる。[p]

[wait time=500]

[auto_chara name="龍也" face="normal" left=50]
「明日も昼休み来いよ」[l]

と龍也が言って屋上から出ようとすると、[r]残りの二人もぞろぞろと従っていく。[p]
[playse storage=se/three_walk.ogg volume=50]
[wait time=500]

「グローブ……いつものとこにしまっとけ」[p]

そう言い残して、三人は去っていった。[p]
[fadeoutbgm time=3000]
[chara_hide_all time=300]

[wait time=2000]

[playse storage=se/throw_globe.ogg volume=50]
一人取り残された拓海は、グローブを乱暴に外して傍らに放った。[p]

[wait time=500]
[playse storage=se/heartbeat.ogg loop=true volume=30]
自分がされたことに対する激しい怒りが大きく膨らんでいく。[l][r]
そしてそれは、自分自身の無力さに対する怒りでもあった。[p]

[wait time=1000]

次第にその怒りは形を変え、自分に刃を向けていく。[p]

[wait time=1000]

絶望の気持ちが怒りを生むのか、怒りが絶望に変わるのか、[l]
もはや区別がつかない。[p]

[wait time=1000]

ふと視線がフェンスに向く。[l][r]
転落防止を想定した、最低限の高さのフェンスだ。[p]

[wait time=500]

よじ登ろうとする人間を諦めさせる高さには設計されていない。[l][r]
登ろうと思えば簡単に登れてしまえる高さだ。[p]

[wait time=1000]
*ch1_jump

拓海は「屋上から飛び降りたらどうなるのか」ということについて、[r]興味を持ち始めていた。[p]

[wait time=500]

実際、それについて、調べたりもした。[p]

[wait time=500]

この三階の屋上の高さは地上から約10メートルになり、[l]
ここから固い地面に衝突すれば、高い確率で助からないだろう。[p]

[wait time=500]

仮に助かったとしても、重度の障害が残り、[l]
死ぬより苦しい地獄が待っているかもしれない。[p]

[wait time=1000]

気が付くと拓海はフェンスに手をかけてよじ登っていた。[p]
[playse storage=se/fence_creak.ogg volume=30]
[wait time=500]

そしてフェンスをまたぎ、[l]
屋上のふちにゆっくりと足を降ろした。[p]

[wait time=500]
[playse storage=se/wind_rooftop.ogg volume=20]
[bg storage="ch01_sc01_jumping_off.webp" time=600]
首を下に向けると、色鮮やかに花が咲く正門前の花壇が見える。[p]

[wait time=500]

もうすぐ昼休みも終わり、[l]
5限目が始まる。[p]

[wait time=500]

生徒たちは皆教室に戻ったようで人の気配はない。[p]

[wait time=500]
[delay speed="60"]
拓海は、[l]まるで子供が親の胸に飛び込むような自然な動作で、[l]両足をそろえて[p]
跳んだ――。[p]
[bg storage="black.png" time=0 wait=false]
[stopse]
[stopbgm]
[wait time=1000]

ジェットコースターのような浮遊感が一瞬あり、[p]

[wait time=500]

すぐにものすごい勢いで地面に向かって加速する――[l]はずだった。[p]

[wait time=1000]

しかし、[p]

[wait time=500]

回りの景色がスローモーションになって、[l]
ゆっくりと落ちていくように感じる。[p]

[wait time=1000]

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
身体がもう、その動きを忘れていた。[p]

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

[wait time=1800]

世界が、[l]
切れた。[p]

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

さっきいた屋上から一歩も動いていないのだ。[p]

[wait time=500]

時計の針を見る限り、時間は経っていないようだった。[p]

夢を見て寝ていたわけでもないらしい。[p]

[wait time=500]

「幻」を見たのか、[l]と思考を巡らしている内に、
混乱が少し和らいできた。[p]

[wait time=500]

それと同時に、先ほどの飛び降りの恐怖が急に込み上げてきた。[p]
[playse storage=se/heartbeat.ogg loop=true volume=30]
[wait time=1000]

体がガタガタと震えだす。[l]
額から汗が流れ出る。[p]

[wait time=1000]

脚が崩れていく感覚や、[l]
腹の奥が潰れるような痛みを、[l]
体が知っているように感じた。[p]

[wait time=1000]

まるで実際に体験して来たかのようだった。[p]
[stopse]
[wait time=1000]
[bg storage="black.png"]
そのあとのことはよく覚えていない。[p]

気付けば学校を飛び出していた。[p]

誰とすれ違ったのか、どうやって駅まで歩いたのかも思い出せない。[p]

次に意識がはっきりした時には、[l]
自宅のベッドに座り込んでいた。[p]

制服も脱がないまま、何時間も動けなかった。[p]

瞼を閉じるたび、目の前には、自分の潰れた身体が浮かぶ。[p]

夢だったとは思えない。[p]

あの痛みも、[p]
地面に叩き付けられた衝撃も、[p]
全部、この身体が覚えている。[p]

何度も自分の腕をつねった。[p]

鏡で顔を見た。[p]

心臓の鼓動を確かめた。[p]

それでも――。[p]

自分が本当に生きているのか。[p]

その答えだけは、最後まで分からなかった。[p]

結局、拓海は二日間学校を休んだ。[p]

ようやく学校へ行こうと思えるくらいには気持ちが落ち着き、[l]
三日ぶりに登校した、その日の昼休みだった。[p]
[wait time=1000]
*ch1_return
[playse storage=se/school_chime.mp3]
[wait time=2000]

「お前、なに学校休んでんだよっ！」[p]
[playse storage=se/punch3.ogg volume=50]
[bg storage="ch1_rooftop_shota_threat.webp" time=200]
[playbgm storage="tension_low.ogg" loop=true volume=75 fadein=true time=1500]
[wait time=1000]

三日ぶりに姿を見せた拓海を見るなり、[l]
龍也は怒鳴り声を上げた。[p]

[bg storage="bg_rooftop_day.webp" time=600]
[auto_chara name="龍也" face="angry" left=50]
「グローブ片付けずに帰ったろ。雨で濡れてんじゃねえかっ」[p]

そう怒鳴りふくらはぎを回し蹴りしてくる。[p]
[playse storage=se/punch3.ogg volume=50]
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
高校生なのに、一体どうやってタバコを手に入れているんだろうかと拓海は不思議に思っていた。[p]
どうやら、綾香がバイト先のコンビニからうまく手に入れているらしい。[p]
翔太が手間賃を渡して綾香から受け取っているのを見て、謎が解けたのだった。[p]
[auto_chara name="綾香" face="anxiety" left=300]
「タバコで根性を試すって、もしかして根性焼き？[l]
私嫌だよ跡が残るし」[l]綾香が勘付いた。[p]
[auto_chara name="翔太" face="nastysmile" left=180]
「さすが綾香、察しがいいね。その通り！[l]
これを何秒耐えられるか、順番に勝負していこう」[p]
正気とは思えない提案だった。[p]
[auto_chara name="綾香" face="serious" left=300]
「はあ？私絶対やらないからね」[p]

綾香は黒のロングヘアーを揺らしながら首を振った。[p]
[auto_chara name="翔太" face="sulk" left=180]
「全員でやらないと勝負にならないだろ」[p]

翔太は悲しそうにして見せる。[p]
[auto_chara name="龍也" face="smile" left=50]
「面白そうだなそれ」[p]

龍也が賛同する側に回った。好奇心からくるものなのか、[l]
よほど自信があるのか。[p]
[auto_chara name="綾香" face="serious" left=300]
「ちょっと、勝手に話進めないでよ。私はやんないよ」[p]

このまま多数決で負けてしまうことを恐れて、綾香は断固拒否する。[p]
「私、思いついたんだけど、こいつが何秒声を出さずに耐えられるかを賭けるのはどう。[l]
それを勝負にするの」[p]
とんでもないことを言い出す綾香。[p]
「こいつ」というのは当然、拓海のことを指している。[p]
[auto_chara name="翔太" face="nastysmile" left=180]
「それは、面白いかもね」[p]

翔太が賛成する。[p]
[auto_chara name="龍也" face="smile" left=50]
「ああ、それでいいな」[p]

龍也も賛成して全会一致となる。[p]
[auto_chara name="綾香" face="serious" left=300]
「私が勝ったら、タバコのお遣い代金値上げするからね。[l]大変なのよ、店長が見てない隙に会計するの」[p]
[auto_chara name="翔太" face="sulk" left=180]
「おいおい、何て冷たいことを言うんだよ」[p]

翔太は不貞腐れた。[p]
「じゃあ俺が勝ったら、お前その店長をデートに誘えよ」[p]
[auto_chara name="綾香" face="serious" left=300]
「それだけはホントに無理！マジで臭くてあいつキモすぎだから」[p]

綾香は思いっきり顔をしかめて嫌がった。[p]
[auto_chara name="龍也" face="normal" left=50]
「無駄話はいいから早く始めようぜ」[p]

龍也が痺れを切らし始めた。[p]
「賭けの内容はどうすんだよ」[p]
[auto_chara name="綾香" face="serious" left=300]
「そうね……タバコを当ててから、声を出すまでの秒数が一番近い人の勝ちでいいでしょ」[p]

綾香がルールをまとめ始めた。[p]
「私は当てたら直ぐに声を出す。[l]『一秒も持たない』に賭けるわ」[p]

彼女は右手の人差し指を立てて、そう宣言する。[p]
[auto_chara name="龍也" face="normal" left=50]
「流石に2秒くらいは我慢できるんじゃないか？」[p]

龍也は真剣に考えているようだ。[p]
[auto_chara name="翔太" face="normal" left=180]
「じゃあ俺は5秒耐えられるに賭けよう」[p]

翔太は逆張りをする性分らしい。[p]
ここまで黙っていた拓海だったが、[l]
このままでは身体に火傷を負わされることがわかったので、何とか止める方法を懸命に考えていた。[p]
[auto_chara name="拓海" face="level1_normal" left=120]
「ちょっと待ってくれ」[p]

拓海はこの賭けをやめさせる方法が思い浮かんだ。[p]
「これじゃあ、賭けにならないだろ」[p]
[auto_chara name="龍也" face="angry" left=50]
「なんだよお前急に、うるせえな」[p]

龍也が吠える。[p]
[auto_chara name="拓海" face="level1_normal" left=120]
「このまま俺がタバコの火を当てられたとして、すぐに声を出せば綾香の勝ちになる。[l]
そこで賭けは終わりになるだろ」[p]
三人とも「そうか」と思って黙って聞いている。[p]
「俺に我慢するメリットがないから、すぐに声を出すよ。[l]
だから、勝負にならない。[l][r]こんなこと、意味がないからやめてくれ！」[p]
[auto_chara name="翔太" face="normal" left=180]
「なるほど、頭いいね！その通りだ」[p]

翔太が感心している。[p]
しばらく天を仰ぎ見て考える。[p]

「じゃあガマンするメリットを別に用意すればいいんだよね」[p]
[auto_chara name="龍也" face="normal" left=50]
「どういうことだ？」[p]

龍也が質問する。[p]
[auto_chara name="翔太" face="nastysmile" left=180]
「拓海が声を出してしまったら、もう1回タバコを当てることにしたらいいんだよ」[p]

何てことを言い出すんだ、と拓海は思った。[p]
「拓海としては、もう一度火を当てられたくないから、[l]
なるべく声を出さずに1回で終わりにしたいと思うでしょ」[p]
翔太はみんなの理解を確認する。[p]
「拓海が声を出さないように頑張ってくれるから、すぐ声を出して綾香の勝ちで終わり、
なんてことにはならない。[l]賭けが成立する」[p]
[auto_chara name="綾香" face="normal" left=300]
「あんた天才じゃん！」[p]

綾香が大げさに翔太のことを褒める。[p]
二人はお互いをののしり合ったりはするが、何だかんだ仲が良い。[p]
[auto_chara name="龍也" face="smile" left=50]
「ちょっと待ってくれ！[l]じゃあ俺も、5秒に変えたい」[p]

龍也の機嫌はいつの間にか直ったようだ。[p]
[auto_chara name="綾香" face="normal" left=300]
「はあ？ずるーい」[p]

綾香も笑いながら抗議のフリをする。[p]
[chara_hide_all time=300]
[wait time=500]
拓海はこの賭けをやめさせることに失敗した。[l]
むしろ状況を悪化させたようだった。[p]
どうしようもない。このままじゃ、本当に焼かれる――。

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

[playbgm storage="tension_high.ogg" loop=true volume=50 fadein=true time=1500]

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

[playbgm storage="tension_high.ogg" loop=true volume=50 fadein=true time=1500]

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

[playbgm storage="tension_high.ogg" loop=true volume=50 fadein=true time=1500]

[jump target="*caught"]


*caught

「何逃げようとしてんだよ……お前」[p]

[playse storage="se/hold_down.ogg" volume=40]

そう言って龍也は、そのまま拓海を後ろから締め技で地面に押さえつけた。[p]

[auto_chara name="拓海" face="level1_shout" left=120]

拓海は凄まじい力で抵抗をしているが、体格の違いからか、身動きがほとんど取れない。[p]

[auto_chara name="翔太" face="serious" left=180]
「よし、じゃあ龍也はそのまま押さえてね」[p]

と言って翔太は、暴れる拓海の腕を押さえ、腕時計を外した。[p]
[playse storage=se/watch_take_off.ogg volume=150]
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

翔太はタバコを一本新しく箱から取り出すと、[l]
慣れた手つきで、ライターで火をつけた。[p]
[playse storage=se/writer.ogg volume=70]
先端に鮮やかな火が灯る。[p]
「よーし……それじゃあ、根性見せてくれよ。[l]
拓海くーん」[p]
翔太がゆっくりと、[l]
タバコの火を近付けてくる。[p]

[wait time=1000]

赤い火が、[l]
少しずつ近付く。[p]

[wait time=1000]

龍也は更に強い力で拓海を押さえつけた。[p]
[wait time=1000]
タバコの先端が[l]拓海の皮膚を焼いた。[p]
[playse storage=se/fire.ogg volume=100]
[auto_chara name="拓海" face="level1_shout" left=120]
「ああっ！」[p]

あまりの痛みに拓海は思わず大きい声を出した。[p]
その瞬間、大きな力で暴れたため、タバコは一瞬だけ当たって、地面に落ちた。[p]
[auto_chara name="翔太" face="normal" left=180]
「あーあ。もったいない」[p]

翔太はタバコの方が気掛かりなようだ。[p]
[auto_chara name="綾香" face="normal" left=300]
「どうやら私の勝ちだね」[p]

綾香は賭けに勝って嬉しそうだ。[l][r][p]
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
自分の無力を嫌というほど思い知らせる。[p]
こいつらは絶対に許さない。[l]
;ここで挿絵入れたい。復讐を誓うシーン
同じ目に、[l]いやもっと酷い目に遭わせてやる。[l][r]
拓海はそう誓った。[p]
[auto_chara name="翔太" face="nastysmile" left=180]
「よし、それじゃあ二本目いきまーす」[p]

翔太が火を着けなおしたタバコを、再度近づけてくる。[p]
今度はもう手を振り払われないように、[l]
利き腕で拓海の腕を力強く握った。[p]
*ch1_illusion
[chara_hide_all time=300]
[bg storage="white.png" time=80]
[wait time=500]
[bg storage="black.png" time=300]
[stopse]
[fadeoutbgm time=3000]
その瞬間、世界から音が消えた――。[p]
[wait time=1000]
拓海は屋上での出来事のあと、あの「幻」についてずっと考えていた。[p]
まるでわからないことばかりだったが、拓海にはなぜだか、確信を持っていることがあった。[p]
それは、あの「妙に現実味のある幻覚」は誰かによって、[l][r]「見させられている」ものだという感覚があったこと。[p]
もっと言えば、拓海自身の力によるものではないか。[p]
うまく言葉では言い表すことができなかったが、昂ぶった感情によって、自分自身の力で「見させられた」ものではないか。[p]
そんな確信があった。[p]
多少なりとも根拠はあった。[p]
一つは「幻」が拓海の認識の範囲内の出来事だったということ。[p]
あの日の帰り道、正門の前の花壇に目をやると、[l]
整備のためか、朝の登校時にはなかったブルーシートが張ってあったのだ。[p]
「幻覚」の中で、見下ろした花壇には、[l]
いつもの拓海の見慣れたカラフルな花壇があった。[p]
この実際の風景と、思い込みの景色の矛盾。[l]
あの「幻」は拓海が思い込んだ景色でできていた。[p]
もう一つの根拠がある。[l]
拓海は飛び降り自殺について興味を持っていて、[l]
落下の様子や、地面に衝突してから人間の身体がどのように崩壊して行くかを調べたことがあった。[p]
あの「幻」は、その時調べたネットの記事に酷似していた。[p]
これらのことから、拓海はあの「錯覚」は、自分の力で起こしたものではないかと考えた。[p]
そして、これは意図して引き起こすことができるかもしれないと仮説を立てていた。[p]
[bg storage="bg_rooftop_day_hallucination.webp" time=300]
[wait time=1000]
[font color="#CFE8FF"]
時が止まっている。[l]
そう拓海が感じるほどのスローな感覚。[l]
翔太は目を見開いたままその場で固まったように見える。[p]
そして、翔太に触れられた手を通して、[l]
拓海の思考が翔太に流れ込んでいく。[p]
拓海と翔太の感覚が共有されている。[p]
翔太は、目の前の組み合う二人を見ている。[p]
すると、龍也は拓海を押さえつけるのをやめて、[l]
マネキンのようになった翔太に飛びかかった。[p]
[playse storage=se/pushdown.ogg volume=50]
[bg storage="ch01_cg_shota_nightmare.webp" time=200]
そのまま肩を掴み、押し倒し、[l]
ゆっくりと馬乗りになる。[p]
翔太は何も抵抗ができない。[p]
龍也は翔太の手に持っていたタバコを奪う。[p]
左手で顔を押さえつけて、[l]
右手で高い位置からタバコを近づけてくる。[p]
一体何をする気だろうか。[p]
そのタバコは段々と大きく、[l]
ピントが合わないほど顔に近づいてくる。[p]
これは、目に当てようとしているのだ、[l]
と翔太は気付く。[p]
だが、抵抗も、目を閉じることさえも、[l]
遂に叶わなかった。[p]
[playse storage=se/fire.ogg volume=100]
[bg storage="white.png" time=50]
[wait time=500]
[bg storage="black.png" time=70]
[wait time=500]
[bg storage="white.png" time=30]
[wait time=500]
[bg storage="black.png" time=300]
卵で目玉焼きを作るとき、[l]
熱されたフライパンに生卵を割り、落とす。[p]
卵の透明な部分は、熱で固くなり白くなる。[l]
タンパク質が熱による変性で、白く凝固するためだ。[p]
そして、それは不可逆的な変化であり、[l]
白くなった部分がもう元に戻ることはない。[p]
目の角膜は主にタンパク質で構成されている。[l]
熱されたタバコの先端は900度にまで達するそうだ。[p]
[wait time=1000]
「うぐぅぅぅ――」[p]

脳天を突き抜けるような痛みが翔太を襲った。[p]
角膜は体の中でも、痛覚が最も発達している組織である。[p]
「痛み」という感覚に、身体が全て支配されていく。[p]
痛い、[l]辛い、[l]苦しい。[p]
言葉にならない、うめき声が口から洩れていく。[p]
何も考えられない。[p]
[bg storage="bg_rooftop_day_hallucination.webp" time=300]
突然目の前がパッと明るくなった。[p]
龍也が翔太の顔面を押さえつけていた左手が、顔から離れたのだ。[p]
助かったのだろうか。[p]
龍也は翔太に馬乗りのまま、[l]
新しいタバコをくわえて、それにライターで火を着けた。[p]
[playse storage=se/writer.ogg volume=100]
大きく息を吸い込み、天に向かって息を吐く。[p]
すると今度は反対の手で、[l]
翔太の濁った目の方を押さえつけた。[p]
龍也がこちらを見て何か言っているようだ。[p]
口が何やら動いている。[p]
翔太は、見える方の目で、[p]
それを読み解いた。[p]
[bg storage="white.png" time=80]
[wait time=500]
[bg storage="black.png" time=300]
[delay speed="90"]
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
[bg storage="bg_rooftop_day.webp" time=600]
[playse storage=se/wind_rooftop.ogg volume=20]
[wait time=500]
「うわあああああああああああああああああ」[l][r]
[quake time=1200 hmax=8 vmax=30]
[playbgm storage="tension_low.ogg" loop=true volume=75 fadein=true time=1500]
その瞬間、翔太が両目を押さえながら、[l]
悲鳴にも似た絶叫を上げて、その場で転がり回った。[p]
拓海を押さえつけていた龍也も思わず立ち上がり、近付いていく。[p]
「おい、どうしたんだよ！[l]どこか怪我したのか？」[p]

龍也は、不思議そうにする。[p]
龍也の声を聞くなり、「ひいっ」と声を出し、[l]
恐怖にひきつった顔で後ずさりする翔太。[p]
よくみると、後ずさりした場所が濡れている。[l]
翔太は失禁をしていた。[p]
あまりの状況に声を失う龍也。[l]
「翔太――」[p]

綾香もそれ以上喋ることができないでいる。[p]
その一方で、拓海は気持ちの高揚を抑えられずにいた。[p]
[fadeoutbgm time=3000]
[playse storage=se/heartbeat.ogg loop=true volume=30]
[wait time=1000]
「一番起こって欲しくない」と一瞬想像した未来の姿。[p]
目を焼かれるという恐れていた事態。[p]
それが起こったのは幻覚とはいえ、[l]
自分ではなく翔太だった。[p]
拓海は自分の「異能」についての仮説を証明できたのだった。[p]
[stopse fadeout=1000]
[wait time=1000]
[playse storage=se/wind_rooftop.ogg volume=18]
[wait time=3000]
@jump storage="chapter2.ks" target="*chapter2"

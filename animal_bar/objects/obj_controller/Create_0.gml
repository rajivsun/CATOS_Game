/// @description Insert description here
// You can write your code in this editor

//play music
audio_play_sound(mc_jazz_1,99,true);

//game_set_speed(60, gamespeed_fps);
virtual_key_add(700,130,150,150,ord("F"))
virtual_key_add(0,400,960,200,vk_space)
name_player = "John";

// --------------- init -----------------
make_drinks = false;
blur_level = 0;
blur_level_all = 0;
scene = -1;
day = 0;
count = 0;
current_client = noone;
current_txt = 0;
dragging_item = noone;

current_dialogue = -1;
position_dialogue[0] = [[obj_buck,room_width/2,true]];
position_dialogue[1] = [[obj_lion,room_width/3,true],[obj_buck,room_width/3*2,true]]
position_dialogue[2] = [[obj_buck,room_width/2,true]];
position_dialogue[3] = [[obj_white_fox,room_width/3,true],[obj_buck,room_width/3*2,true]];
position_dialogue[4] = [[obj_buck,room_width/2,true]];
position_dialogue[5] = [[obj_redpanda,100,false],[obj_gorilla,room_width/2,true],[obj_buck,room_width-100,true]];

//make_text(txt);

txt_pre_1[0]=
[
["来看看今晚的第一位客人是谁。",noone],

[2,"door"],
]

txt[0] = [
["嘿，"+name_player+"。",obj_buck,"laugh"],
//["哟！让我瞧瞧。这不是大律师阿泰吗？",noone],
//["好一阵子没见到你了，最近都在忙啥啊？",noone],
//["哎别提了，最近一直在忙一个\n客户的案子，搞得我心力憔悴。",obj_buck],
//["阿泰，工作固然重要，\n但你也要照顾好自己啊。",noone],
//["身体和心理健康才是最重要的。",noone],
//["我看你最近鹿角都不如以前有光泽了。",noone],
//["你说得对。我也意识到了，最近一直\n在寻找平衡，但案子太棘手了。",obj_buck], 
//["那就找些时间给自己放松一下，\n让自己恢复精力。",noone],
//["是的，我需要好好休息一下，\n放松一下心情。",obj_buck],
//["不过你还是那么高大帅气，\n真羡慕你这2米3的大个子。",noone],
//["哈哈，别夸奖了。鹿角倒是增高了些，\n不过也只有我自己知道。",obj_buck],
//["哈哈哈哈。",noone],
//["话说这次是啥案子啊，给我说说嘛。",noone],
//["这次是一宗很不寻常的失踪案，\n关于一对夫妻的。",obj_buck],
//["听起来挺有挑战性的，你对这个案子\n有信心吗？",noone],
//["当然有信心，只是这次案件确实很复杂。",obj_buck],
//[name_player+"，我先来杯喝的吧，我慢慢你说。",obj_buck],
//["好，你想要啥？",noone],
//["还是老样子吧，鹿舞风华。",obj_buck],
["哈哈，你还是喜欢那个。没问题，\n马上给你弄。",noone],
[2,"drink",obj_buck],
];
	
	
txt2[0] = [
["嗯，一杯鹿舞风华下肚，感觉舒服多了。",obj_buck],
//["你调酒的技术还是那么强"+name_player+"。",obj_buck],
//["谢谢老铁。",noone],
//["是这样的，我前一阵子接到了一个案子。",obj_buck],
//["有一对红狐夫妻，平日里十分恩爱，\n形影不离，然而妻子却莫名其妙失踪了。",obj_buck],
//["红狐夫妻？我好像之前在酒馆里见过他们。\n你有他们照片吗？给我瞧瞧。",noone],
//["这是他们。",obj_buck],
[2,"item",obj_photo_red_fox_couple],
];

txt2_1[0] = [
["没错，是之前来过的那对夫妻。",noone],
["那天来酒馆的时候，他们分开点单的。\n结果最后他们互相点了对方喜欢的酒。",noone],
["虽然说有一句谚语，妻子出事，\n肯定是丈夫。",noone],
["但红狐可是咱动物界的模范夫妻啊，\n丈夫对妻子那是恩爱有加。",noone],
["确实是这样。\n我这次就是为这个丈夫辩护的。",obj_buck],
["在和他交谈后，我很确定不是丈夫的责任。",obj_buck],
["只是最近出现了一个对丈夫很不利的物证。",obj_buck],
["啥物证啊，不会是带血的凶器吧。",noone],
["那倒不至于，是一卷录音带，是妻子录的，\n她在里面控诉了丈夫对她施暴。",obj_buck],
["但是很可疑的是妻子已经失踪了好几天了，\n这卷录音带却在昨天突然出现在丈夫的车内。",obj_buck],
["嗯.. 那是挺奇怪的。\n感觉像是有人故意放的。",noone],
["我也是这么认为的，但是录音里确实\n是那个妻子的声音。所以挺棘手的。",obj_buck],
["总之就是这样一个案子。",obj_buck],
["对了，那天我收拾旧物，你猜我发现了啥。",obj_buck],
["你发现了啥？",noone],
[2,"item",obj_photo_trio_baby],
];
	
txt2_2[0] = [
["哇，这不是我们小时候吗！\n你，我，还有小灰。",noone],
["这一晃20年过去了，时间过得真快。",noone],
["你最近还和小灰有联系吗？",obj_buck],
["他也有段时间没来了，前段时间\n他刚开了一家修车行。",noone],
["那挺好的，还好之前那件事没闹得太大，\n不然。。。",obj_buck],
["是啊，还好被打的那一方没有\n继续追究责任。",noone],
["具体是什么原因打架来的？\n我有点记不清了。",obj_buck],
["是小灰在路上看到一个河马在欺负一\n只小鹿，他直接上去就把河马咬了。",noone],
["河马有时候确实老是喜欢欺负别的动物，\n感觉就像是骨子里带的是的。",obj_buck],
["虽然我不喜欢刻板印象，但是确实\n大部分的河马挺霸道的。。。",noone],
["小灰人其实挺好的，也很仗义，\n就是有时候性格有点冲。",obj_buck],
[2,"door"],
];

txt3[0] = [
["你好，会长。",noone],
["你好，"+name_player+"。你好，阿泰。",obj_lion],
["我那天看到你家的小辛达了，\n好像是刚刚放学。",obj_buck],
[" 哈哈是吗？他最近刚刚开始上学了。",obj_lion],
["他长得好快啊，才3岁是吧，\n已经有点小狮子那个味道了。",obj_buck],
["他刚出生那会长得像他妈妈，\n身上一个一个小斑点，特别像小豹子。",obj_lion],
["哈哈哈，那肯定很可爱。",noone],
["听说你们家老二也要出生了是吧？",obj_buck],
["上个月出生了。不好意思，太忙了\n也没通知大家。",obj_lion],
["啊真的吗？他叫什么名字啊？\n有没有照片啊会长？给我们瞧瞧呗。",noone],
["他叫娜娜，是个女孩。\n我找找看我的钱包。",obj_lion],
["喏，这是她满月时拍的。",obj_lion],
["喏，这是她满月时拍的。",obj_lion],

[2,"item",obj_photo_nana],
];

txt3_1[0] = [
["太可爱了吧！",noone],
["哈哈谢谢。",obj_lion],
["对了阿斯兰，你要喝点啥？",noone],
["给我来一杯狮心特调吧。",noone],
["好的没问题。",noone],
[2,"drink",obj_lion],
];

txt4[0] = [
["对了，最近动物城一切都好吗？",noone],
["说实话，不怎么好。最近动物城里\n出了一件怪事，总有动物莫名失踪。",obj_lion],
["是吗？我现在就在接手一个失踪案，\n看来这不是个例。",obj_buck],
["是的，这个月已经有好几个起了。",obj_lion],
["有大型动物有小型动物，有食草的\n有食肉的，让人摸不着头脑。",obj_lion],
["但是又不像是单独的案例，因为这个\n发生频率太高了。",obj_lion],
["而且感觉总统对我不是特别满意，\n他可能想解散这个协会。",obj_lion],
["别担心阿斯兰。",noone],
["我们当时选举你当我们动物协会会长就是\n想要一个能代表并管理我们动物的一个人。",noone],
["没错，我们会一直支持你的。",obj_buck],
["谢谢你们，我一定会把这个失踪案\n调查清楚。",obj_lion],
["对了，下周就是埃尔顿博士诞辰300周年\n纪念日了，你们有啥安排吗？",obj_lion],
["我估计还是处理案子吧，不把案子\n处理好我没心情放假。",obj_buck],
["你呢，"+ name_player +"？",obj_lion],
["我们酒吧下周可能要办一个活动，主题是\n回到非洲。",noone],
["正好趁着埃尔顿博士的诞辰，带大家\n来一次穿越之旅。",noone],
["真是好主意！如果你要办的的话，\n我想办法看能不能把总统请过来。",obj_lion],
["真假的？那也太酷了把！那我一定要\n好好准备！",noone],
["嗯，加油！",obj_lion],
["好了，时间也不早了，我先回去了，\n还有点事情要处理。",obj_lion],
["好，下次见阿斯兰。",obj_lion],
["下次见阿斯兰。",obj_buck],
[2,"leave",obj_lion],
];

txt5[0] = [
[" 真是个好主意啊john，你的那个回到\n非洲的活动。",obj_buck],
[" 哈哈，其实这是吉儿的主意。",noone],
[" 吉儿真是个机灵鬼，总是能别出心裁。",obj_buck],
[" 她今晚应该要过来，她之前和我说了。",noone],
[" 是吗？那太好了，好像有段时间没见到\n她了。",obj_buck],
[2,"door"],
];

txt6[0] = [
["Hi"+ name_player +"!",obj_white_fox],
["用人类的谚语说，说曹操曹操到。",obj_buck],
["你好啊，大帅哥阿泰，好久不见啊。",obj_white_fox],
["你还是那么喜欢调侃人。",obj_buck],
["你要喝点啥吉儿？",noone],
["阿泰喝的啥？",obj_white_fox],
["老样子，鹿舞风华。",obj_buck],
["那我也来个鹿舞风华！",obj_white_fox],
["你确定吗吉儿，这个劲很大哦。",noone],
["是啊，吉儿，你确定不来个什么果味的\n酒吗？",obj_buck],
["切，可别小瞧我，你们这些生活在\n平原的动物。",obj_white_fox],
["我的祖先可是生活在零下30度的冰天雪地\n里呢，你是没见过我骨子里那种彪悍。",obj_white_fox],
["嗯..你说的也没错，但你看上去确实就是\n一个小可爱。",noone],
["我才不是小可爱呢！我是凶猛的北极狐！",obj_white_fox],
["哈哈哈，那么我就给你来杯鹿舞风华了\n吉儿。",noone],
["来吧。",obj_white_fox],


[2,"drink",obj_white_fox],
];

txt7[0] = [
["话说你为啥老是喜欢穿这种大袍子。",noone],
["因为我想加入善行犬教！\n他们教里的人就是穿着这种衣服！",obj_white_fox],
["善行犬教？好像听说过。好像挺神秘的。",obj_buck],
["是啊，听说之前动物城刚刚崛起的时候，\n这些狗狗们遭受了许多其他动物的排挤。",obj_white_fox],
["就只是因为他们之前和人类的关系很密切。",obj_white_fox],
["但这也不是他们的问题啊。他们也只是\n一群善良的狗狗。",noone],
["是的，但是一些动物城的极端分子把\n对人类的憎恨迁移到了狗狗身上。",obj_white_fox],
["经常有狗狗开的商店被打砸，\n还有许多狗狗在街上被人欺负的。",obj_white_fox],
["我听说过这些事情，真令人遗憾。",obj_buck],
["然后之后他们就慢慢地隐居了起来，并且\n成立了善行犬教，现在不太常看到他们了。",obj_white_fox],
["可是吉儿...你...不是狗狗，\n你加入不了把...",noone],
["我也是犬科啊！你怎么知道加入不了呢？\n人啊，梦想还是要有的！",obj_white_fox],
["祝你成功哦！",noone],
["对了吉儿，我们刚刚在聊下周的回到非洲\n的活动。这还是你的点子呢！",noone],
["没错！而且我超级期待的！",obj_white_fox],
["到时候咱们弄个展览。",obj_buck],
["展示一下埃尔顿博士是如何研究出进化\n药水让我们动物能够一步步进化。",obj_buck],
["然后到时候肯定有许多非洲的动物们参加，\n想想就兴奋！",obj_white_fox],

[2,"leave",obj_white_fox],
];

txt8[0] = [
["She is very cute.",obj_buck],
[2,"door"],
];

txt9[0] = [
["晚上好先生们。",obj_gorilla],
["警官你们好。",obj_buck],
["这么晚了还在巡逻吗？",noone],
["是啊，最近咱们动物城可不太平啊。",obj_gorilla],
["是吗此话怎讲？",noone],
["刚刚在外面碰到了阿斯兰，正好聊了聊\n最近动物城发生的事情。",obj_gorilla],
["我们也听阿斯兰说了，好像最近老有动物\n莫名其妙失踪。",obj_buck],
["没错，最近失踪案特别多，而且毫无头绪，\n就感觉每个失踪的动物之间几乎没有联系。",obj_gorilla],
["上个月是神户家的小儿子失踪了，\n这个月是红狐家的妻子失踪。",obj_gorilla],
["神户家，是那家从日本移民过来的\n牛家族吗？",obj_buck],
["没错，那家牛家族从日本移民来没多久\n就出了这事，真是挺可惜的。",obj_gorilla],
["对了，阿泰，你是给那个红狐丈夫做\n辩护律师的吧？",obj_gorilla],
["是的。我相信我的客户是无辜的。",obj_buck],
["嗯，虽然这不是我的案子，但我看了一下\n卷宗，我目前也是偏向于丈夫是无辜的。",obj_gorilla],
["我到不这么认为，今天找到了一个录音带\n你们知道吧？",obj_redpanda],
["我知道，但是那个录音带是在丈夫后座上\n找到的，是一个非常明显的位置。",obj_buck],
["而丈夫的车在案发之后已经被你们的\n调查组仔细检查过了。",obj_buck],
["当时没有发现任何可疑物品。",obj_buck],
["今天却突然出现了这卷录音带，\n你不觉得十分可疑吗？",obj_buck],
["我认为很有可能是有人栽赃嫁祸。",obj_buck],
["不管它怎么出现的，录音带里就是那个\n妻子自己的声音，证据就是证据。",obj_redpanda],
["好了好了，咱们别在这辩论了，\n咱这是酒吧，不是法庭，是吧"+name_player+"。",obj_gorilla],
["这里允许辩论，前提是每个人先要来几杯。",noone],
["那可能就不是辩论了哈哈。",obj_gorilla],
["正是此意。",noone],
["好，那给我来一杯猩猩狂潮吧john",obj_gorilla],
["没问题。",noone],
["你要什么本杰明？",noone],
["给我来一个本店特色吧！",obj_redpanda],
["好，没问题！",noone],

[2,"drink",obj_gorilla],
];

txt10[0] = [
["其实最近还有一个怪事。",obj_gorilla],
["啥怪事。",noone],
["就是越来越多的动物开始出现\n发狂的行为了。",obj_gorilla],
["这个不是一直有吗？发狂病毒，虽然政府\n在大力防范，但还是偶尔有感染。",noone],
["之前确实有过，但这次的发狂行为有些\n不太寻常。",obj_gorilla],
["似乎不只是精神层面的问题。",obj_gorilla],
["此话怎讲？",obj_buck],
["我上周有次执行任务，是去处理一个\n家里的发狂动物事件。",obj_gorilla],
["那是一家大象家庭，我接到了大象妻子的\n报案，说他老公出现了发狂行为。",obj_gorilla],
["我到了他家之后，瞬间惊呆了。",obj_gorilla],
[" 那个大象老公变得巨大无比，四肢着地，\n巨大的象牙快有本杰明那么长，",obj_gorilla],
["喂，我怀疑你在说我坏话，但我没有证据。",obj_redpanda],
["虽然原始大象本身是很大的，但是进化之后\n他们体型应该有所减小。",obj_buck],
["没错，正常来说我们动物进化到这么\n多代了，个体大小差异已经减少很多了。",obj_gorilla],
["之前巨大的动物变小了，之前小型动物\n也有长大。",obj_redpanda],
["不过本杰明还是那么小一点，这是个例。",obj_gorilla],
["喂！有没有搞错！我本来就是小熊猫唉！\n你还要我长得多大？",obj_redpanda],
["哈哈哈哈哈",noone],
["那之后呢，你们怎么处理的。",obj_buck],
["我们给那只巨兽大象打了常规5倍量的麻醉剂\n才将其制服，之后就把他送到了医院。",obj_gorilla],
["医院的动物看到他之后都吓了一跳，实在是\n太大了。",obj_gorilla],
["医生也没什么头绪，只能先进行保守治疗。",obj_gorilla],
["what a story",obj_buck],
["不过我们倒是没遇见过什么发狂的动物。",noone],

[2,"drink",obj_gorilla],
];

all_txt = [txt_pre_1,txt,txt2,txt2_1,txt2_2,txt3,txt3_1,txt4,txt5,txt6,txt7,txt8,txt9,txt10];
/// @description Insert description here
// You can write your code in this editor

game_set_speed(60, gamespeed_fps);
virtual_key_add(700,130,150,150,ord("F"))
virtual_key_add(0,400,960,200,vk_space);
name_player = "John";

// --------------- init -----------------
make_drinks = false;
blur_level = 0;
blur_level_all = 0;
scene = 0;
day = 0;
count = 0;
current_client = noone;
current_txt = 0;
dragging_item = noone;

current_dialogue = -1;
position_dialogue[0] = [[obj_buck,room_width/2]];
position_dialogue[1] = [[obj_lion,room_width/3],[obj_buck,room_width/3*2]]
position_dialogue[2] = [[obj_buck,room_width/2]];
position_dialogue[3] = [[obj_white_fox,room_width/3],[obj_buck,room_width/3*2]];
position_dialogue[4] = [[obj_buck,room_width/2]];
position_dialogue[5] = [[obj_gorilla,room_width/3],[obj_buck,room_width/3*2]];

//make_text(txt);

txt[0] = [
["嘿，"+name_player+"。",obj_buck],
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
//["哈哈，你还是喜欢那个。没问题，\n马上给你弄。",noone],
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
//["虽然说有一句谚语，妻子出事，\n肯定是丈夫。",noone],
//["但红狐可是咱动物界的模范夫妻啊，\n丈夫对妻子那是恩爱有加。",noone],
//["确实是这样。\n我这次就是为这个丈夫辩护的。",obj_buck],
//["在和他交谈后，我很确定不是丈夫的责任。",obj_buck],
//["只是最近出现了一个对丈夫很不利的物证。",obj_buck],
//["啥物证啊，不会是带血的凶器吧。",noone],
//["那倒不至于，是一卷录音带，是妻子录的，\n她在里面控诉了丈夫对她施暴。",obj_buck],
//["但是很可疑的是妻子已经失踪了好几天了，\n这卷录音带却在昨天突然出现在丈夫的车内。",obj_buck],
//["嗯.. 那是挺奇怪的。\n感觉像是有人故意放的。",noone],
//["我也是这么认为的，但是录音里确实\n是那个妻子的声音。所以挺棘手的。",obj_buck],
//["总之就是这样一个案子。",obj_buck],
//["对了，那天我收拾旧物，你猜我发现了啥。",obj_buck],
["你发现了啥？",noone],
[2,"item",obj_photo_trio_baby],
];
	
txt2_2[0] = [
["哇，这不是我们小时候吗！\n你，我，还有小灰。",noone],
//["这一晃20年过去了，时间过得真快。",noone],
//["你最近还和小灰有联系吗？",obj_buck],
//["他也有段时间没来了，前段时间\n他刚开了一家修车行。",noone],
//["那挺好的，还好之前那件事没闹得太大，\n不然。。。",obj_buck],
//["是啊，还好被打的那一方没有\n继续追究责任。",noone],
//["具体是什么原因打架来的？\n我有点记不清了。",obj_buck],
//["是小灰在路上看到一个河马在欺负一\n只小鹿，他直接上去就把河马咬了。",noone],
//["河马有时候确实老是喜欢欺负别的动物，\n感觉就像是骨子里带的是的。",obj_buck],
//["虽然我不喜欢刻板印象，但是确实\n大部分的河马挺霸道的。。。",noone],
["小灰人其实挺好的，也很仗义，\n就是有时候性格有点冲。",obj_buck],
[2,"door"],
];

txt3[0] = [
["你好，会长。",noone],
//["你好，"+name_player+"。你好，阿泰。",obj_lion],
//["我那天看到你家的小辛达了，\n好像是刚刚放学。",obj_buck],
//[" 哈哈是吗？他最近刚刚开始上学了。",obj_lion],
//["他长得好快啊，才3岁是吧，\n已经有点小狮子那个味道了。",obj_buck],
//["他刚出生那会长得像他妈妈，\n身上一个一个小斑点，特别像小豹子。",obj_lion],
//["哈哈哈，那肯定很可爱。",noone],
//["听说你们家老二也要出生了是吧？",obj_buck],
//["上个月出生了。不好意思，太忙了\n也没通知大家。",obj_lion],
//["啊真的吗？他叫什么名字啊？\n有没有照片啊会长？给我们瞧瞧呗。",noone],
//["他叫娜娜，是个女孩。\n我找找看我的钱包。",obj_lion],
//["喏，这是她满月时拍的。",obj_lion],
[2,"item",obj_photo_nana],
];

txt3_1[0] = [
//["太可爱了吧！",noone],
//["哈哈谢谢。",obj_lion],
//["对了阿斯兰，你要喝点啥？",noone],
//["给我来一杯狮心特调吧。",noone],
["好的没问题。",noone],
[2,"drink",obj_lion],
];

txt4[0] = [
["对了，最近动物城一切都好吗？",noone],
["说实话，不怎么好。最近动物城里\n出了一件怪事，总有动物莫名失踪。",obj_lion],
[2,"leave",obj_lion],
];

txt5[0] = [
["That's such a good idea",obj_buck],
[2,"door"],
];

txt6[0] = [
["Hi John!",obj_white_fox],
[2,"drink",obj_white_fox],
];

txt7[0] = [
["话说你为啥老是喜欢穿这种大袍子。",obj_white_fox],
[2,"leave",obj_white_fox],
];

txt8[0] = [
["She is very cute.",obj_buck],
[2,"door"],
];

txt9[0] = [
["晚上好先生们。",obj_gorilla],
[2,"drink",obj_gorilla],
];

all_txt = [txt,txt2,txt2_1,txt2_2,txt3,txt3_1,txt4,txt5,txt6,txt7,txt8,txt9];
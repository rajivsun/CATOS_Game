/// @description Insert description here
// You can write your code in this editor


// --------------- init -----------------
make_drinks = false;
blur_level = 0;
scene = 0;
day = 0;
count = 0;
current_client = noone;
current_txt = 0;


current_dialogue = -1;
position_dialogue[0] = [[obj_buck,room_width/2]]
position_dialogue[1] = [[obj_lion,room_width/3],[obj_buck,room_width/3*2]]
position_dialogue[2] = [[obj_buck,room_width/2]];
position_dialogue[3] = [[obj_white_fox,room_width/3],[obj_buck,room_width/3*2]];

//make_text(txt);

txt[0] = [
["嘿，john。",obj_buck],
["哟！这不是大律师阿泰吗？好一阵子\n没见到你了，最近都在忙啥啊？",noone],
//["哎别提了，最近一直在忙一个\n客户的案子，搞得我心力憔悴。",obj_buck],
//["还是要尽力而为啊，身体最重要。\n我看你最近鹿角都不如以前有光泽了。",noone],
//["啊是吗。。。看来我是要休息休息了。",obj_buck],
//["不过你还是那么高大帅气，\n这2米3的大个子还真不是白长的。",noone],
//["得了吧，鹿角至少增高了30厘米。",obj_buck],
//["话说这次是啥案子啊，给我说说嘛。",noone],
//["行，你先给我上杯喝的吧，\n我慢慢你说。",obj_buck],
//["好，你想要啥？",noone],
//["还是老样子吧，鹿舞风华。",obj_buck],
["哈哈，你还是没变。",noone],
[2,"drink",obj_buck],
];
	
txt2[0] = [
["真是太绝了。",noone],
["嘿嘿小菜一碟",obj_buck],
["是这样的，我前一阵子接到了一个案子。",obj_buck],
["有一对红狐夫妻，平日里十分恩爱，\n形影不离，然而妻子却莫名其妙失踪了。",obj_buck],
["这是他们。",obj_buck],
[2,"door"],
];
	
txt3[0] = [
["你好，阿斯兰会长。",noone],
["你好，john。你好，阿泰。",obj_lion],
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

all_txt = [txt,txt2,txt3,txt4,txt5];
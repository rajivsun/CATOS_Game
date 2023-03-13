/// @description Insert description here
// You can write your code in this editor
count = 0;
if room == rm_ELEVATOR_INSIDE
{
	text = 
	[
	"终日奔波生计，也只为那一口柴米油盐。",
	"这就是我，一个普通的蓝领工人。",
	];
}

if room == rm_METRO_SCENE
{
	text = 
	[
	"曾经的梦想却早已远去",
	];
}

if room == rm_VILL_RIVER_travel
{
	text = 
	[
	"大家都坐好了吗？",
	"坐好啦！",
	"那我要骑啦！",
	"",
	"哇，这风吹的好舒服啊！",
	"是啊！好凉快哦",	
	"我们以后会一直是朋友吗？",
	"当然啦丽丽！我们是最好的朋友！",	
	"哎，你们说，要是这自行车是一个时光机的话，",
	"我们能不能骑到我们长大后的世界啊",
	"哇，那我可要骑的飞快！我要快快长大！",
	"这样就能实现我的梦想了！",
	"你长大想当什么啊让让？",
	"我还没想好呢",
	"不过我要成为一个很厉害的人！",
	"然后我要帮助很多很多人！",
	"你真棒让让！",
	"",
	"转啊转啊，时间就像这车轮一样，", //16
	"滚着滚着，四季交替，年复一年，",
	"十岁，十五岁，二十岁，三十岁。",
	"当年的那个在池塘边玩耍的孩子，居然长大了",
	"", // 21
	"真快啊，转眼已过了而立之年。",
	"仍在这灯红酒绿中漂泊着",

	"",
	];
}

if room == rm_ELEVATOR_INSIDE_work
{
	text = 
	[
	"终日奔波生计，",
	"也只为那一口柴米油盐。",
	"这就是我，一个普通的蓝领工人。",	
	];
}

if room == rm_METRO
{
	
	action =[
	];
	
	text = 
	[
	"",
	"我该怎么办...",	
	"",
	];
}

current = 0;
msg = text[current];

current = 0;
alpha = 0;
alpha_bg = 0;
timer = 0;
timer2 = 0;
state = 0;
duration_main = 150;
duration = 60;
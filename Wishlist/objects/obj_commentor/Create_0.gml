/// @description Insert description here
// You can write your code in this editor
if room == rm_ELEVATOR_INSIDE
{
	text = 
	[
	"这就是我，一个普通的蓝领工人。",
	"早已过了而立之年，却仍在漂泊。",
	];
}
if room == rm_METRO_SCENE
{
	text = 
	[
	"已经晚了，他们说。",
	"是啊，就这样吧，活着就行了。",
	];
}
if room == rm_ELEVATOR_INSIDE_work
{
	text = 
	[
	"梦想是什么？",
	"梦想现在对我来说可能就是柴米油盐吧。",
	"就是能够每个月交得起房租，吃得起饭。",
	
	];
}

current = 0;
msg = text[current];

current = 0;
alpha = 0;
timer = 0;
timer2 = 0;
state = 0;
duration_main = 150;
duration = 60;
/// @description Insert description here
// You can write your code in this editor
count = 0;

if room == rm_Travel
{
	duration_main = 150;
	color = c_black;
	text = 
	[
	"不好意思，让，我们要辞退你了。",
	"让先生你好，你通过了面试，明天可以来上班了。",
	"下个月咱大学就毕业了，你找到工作了吗让？",	
	"让让，明天高考了，紧不紧张啊？",
	"今天是我家让让上中学第一天，\n我做了红烧鱼给我们让让。",
	];
}
else if room == rm_DEMO_fin
{
	color = c_white;
	text = 
	[
	"试玩版结束，谢谢游玩。","如果喜欢我们游戏的话，可以去steam上加上我们的愿望清单，\n以及给我们在平台上留个好评哦。",
	];	
	duration_main = 300;
}

current = 0;
msg = text[current];

current = 0;
alpha = 0;
alpha_bg = 0;
timer = 0;
timer2 = 0;
state = 0;

duration = 60;
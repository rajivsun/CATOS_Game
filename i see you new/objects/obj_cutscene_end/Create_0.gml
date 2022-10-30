/// @description Insert description here
// You can write your code in this editor

audio_play_sound(sd_endsong,1,1);
audio_sound_gain(sd_endsong,1,1000);
if obj_main.demo == true
{
	if obj_main.language == "chinese"
	{
		text = 
		[
		"番，等着我，我会去找到你的",
		"无论发生什么",
		"",
		"第一章 完",
		"敬请期待下面章节，谢谢游玩",
		];	
	}
	else if obj_main.language == "english"
	{
		text = 
		[
		"Wait for me, Liz, I'm gonna find you.",
		"Whatever it takes.",
		"",
		"Chapter 1 Completed",
		"Thanks for playing this demo, We really appreciate your support!",
		];			
	}	
}
else
{
	if obj_main.current_end == 0
	{
		text = [
		//"番，等着我，我会去找到你的",
		//"无论发生什么",
		//"",
		"第一章 完",
		//"如果喜欢游戏的话，可以去taptap评论支持一下作者哦",
		//"谢谢游玩",
		];
	}
	else if obj_main.current_end == 1
	{
		text = 
		[
		"番，等着我，我会去找到你的",
		"无论发生什么",
		"",
		"第二章 完",
		"敬请期待下面章节，谢谢游玩",
		];	
	}
}

current = 0;
alpha = 0;
timer = 0;
timer2 = 0;
state = 0;
duration_main = 120;
duration = 60;
msg = text[current];
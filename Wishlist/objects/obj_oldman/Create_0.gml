/// @description Insert description here
// You can write your code in this editor

interactable = false;
play_scene = false;
disappear = false;

if room == rm_METRO_SCENE  hspeed = 0.2;
state = "idle";
if room == rm_METRO_SCENE	state = "walk";


if room == rm_METRO_STATION_QUAI
{
	txt2[0] = 
	[
	["是刚刚遇到的老大爷，我要想办法帮帮他。",portrait.player],
	[1,0],
	];
	action2 =
	[
		[cutscene_change_variable,obj_camera,"follow",obj_player],
		[cutscene_text,txt2,0],
	]
	
	txt[0] = 
	[
	["我没有地方可以去了，能不能让我呆在这里。",portrait.old_man],
	["不行，我们不允许流浪汉呆在这里。",portrait.policeman],
	["我很老实的，我只是在这里呆着。\n外面太冷了，我没有衣服...",portrait.old_man],
	["不行的，我们有相关规定的。我们也没办法。",portrait.policeman],			
	[2,action2],
	];
	
	action = 
	[
	[cutscene_change_variable,obj_camera,"follow",obj_oldman],
	//[cutscene_wait,20],
	[cutscene_text,txt,0],

	];
}
if room == rm_METRO
{
	action2 =
	[
		[cutscene_change_variable,id,"disappear","true"],
		[cutscene_change_variable,obj_player,"standup","true"],
		[cutscene_change_variable,obj_controller,"metro_boss_call","true"],
	]
	
	txt[0] = 
	[
	["年轻人，这是你的照片吗？刚刚你走过去的时候掉了。",portrait.old_man],
	["老大爷怎么又是你。是的，这是我的。",portrait.player],
	["看这照片上你和你爸爸妈妈很亲啊。\n你肯定很爱你的爸爸妈妈吧。",portrait.old_man],
	["哎，并不是的。我的爸爸妈妈小时候都不怎么在家，\n整天在外面打工。",portrait.player],		
	["我今天这么失败，就是他们小时候老是疏忽我！",portrait.player],		
	["唔是这样啊…",portrait.old_man],		
	["哎，我曾经也是个充满理想的少年，\n如今却这么落魄。",portrait.player],		
	["振作点年轻人，你还年轻，还有机会的。",portrait.old_man],			
	["其实你是一个很出色的娃，从小就喜欢读书，\n而且也很勇敢，有胆识。",portrait.old_man],		
	["更重要的是，你还有一颗善良的心。\n你只是一时迷了路，我的孩子。",portrait.old_man],		
	["我也不知道我这是怎么了… ",portrait.player],	
	["等一下，你怎么知道我小时候的事情的？",portrait.player],	
	[2,action2],
	];
	
	action = 
	[
	[cutscene_text,txt,0],
	];
}
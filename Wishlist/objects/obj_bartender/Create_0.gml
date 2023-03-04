/// @description Insert description here
// You can write your code in this editor

first_time = true;
state = "idle";
action = 
[
	[cutscene_change_variable,obj_controller,"bartender_talk","true"],
	[cutscene_change_variable,id,"first_time","false"],
];

txt[0] = 
[
	["你好先生，请问你需要什么？",portrait.bartender],
	["听说你们这里今晚有个奖励卡换酒的活动。",portrait.player],
	["是的，今晚酒吧里有一个活动。可以通过获取奖励卡来兑换酒水。",portrait.bartender],	
	["那我怎么得到这个奖励卡呢？",portrait.player],
	["是这样的，游戏制作人不让我告诉您，\n需要您自己去探索，这样能提升玩家体验。",portrait.bartender],
	["啊...这...",portrait.player],
	["实在不好意思。",portrait.bartender],

	[2,action],
];
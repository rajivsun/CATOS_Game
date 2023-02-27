/// @description Insert description here
// You can write your code in this editor

action = 
[
	[cutscene_change_variable,obj_controller,"bartender_talk","true"],
];

txt[0] = 
[
	["你好先生，请问你需要什么？",portrait.bartender],
	["听说你们这里今晚有个奖励卡换酒的活动。",portrait.player],
	["是的，今晚酒吧里有三个活动，钢琴，飞镖和VR射击，\n要在这三个活动中获胜就可以赢得一个奖励卡。奖励卡可以用来换取啤酒。",portrait.bartender],
	["好的了解了。",portrait.player],
	[2,action],
];
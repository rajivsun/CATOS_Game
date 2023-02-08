/// @description Insert description here
// You can write your code in this editor

action = [
[cutscene_change_variable,id,"ring","false"],
[cutscene_change_variable,id,"interactable","false"],
];

txt[0] = [
	["让！你在哪呢？今晚一直找你找不到？！",portrait.boss],
	["对不起老板昨天连续工作了20个小时，实在太累了，好不容易能睡一觉。",portrait.player],
	["别废话了，快点过来工位，今晚临时有个额外的清理项目。",portrait.boss],
	["可是老板，今天是我的休息日...",portrait.player],
	["你什么意思，你没听到我说的吗？今天有个清理项目。现在快过来！",portrait.boss],
	["是...老板。",portrait.player],
	[2,action],
];

ring = true;

alarm[0] = 180;
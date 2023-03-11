/// @description Insert description here
// You can write your code in this editor


alarm[0] = 60;

if room == rm_OLD_HOME
{
	action2 = 
	[
	[fade,rm_DEMO_fin,120,c_white],
	];

	txt[0] = 
	[
	["啊哈哈哈哈！",portrait.tudigong],
	["咦！土地公！原来我们家从小一直供奉的神像就是你啊！",portrait.player_little],
	["没错！让让你准备好重启你的人生了吗？",portrait.tudigong],
	["我准备好了！",portrait.player_little],
	[2,action2],
	];

	action = [
	[cutscene_text,txt,0],
	];
}

if room == rm_FOREST_TRAVEL
{
	action2 = 
	[
		[cutscene_change_variable,obj_tudigong_gate,"reveal",true],
	];

	txt[0] = 
	[
		["吼吼！",portrait.tudigong],
		["你是？你是土地公？",portrait.player],
		[2,action2],
	];

	action = [
	[cutscene_text,txt,0],
	];	
}
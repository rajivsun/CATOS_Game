/// @description Insert description here
// You can write your code in this editor

count = 0;
if room == rm_METRO
{
	var lay_id = layer_get_id("black");
	var back_id = layer_background_get_id(lay_id);
	layer_background_alpha(back_id, 0);

	//state = "sit";
}

if room == rm_CITY_HOME
{
	
	state = "scene";
	
	txt[0] = 
	[
	["原来是梦啊...",portrait.player],
	["这几天老是梦到小时候发生的事情...",portrait.player],
	["不过我倒真想多做会梦呢...",portrait.player],
	[1,0],
	];
	
	action = [
	[cutscene_change_variable,obj_camera,"scene_on","false"],
	[cutscene_text,txt,0],
	]
}

if room == rm_BAR_drunk
{
	state = "scene";
	txt[0] = 
	[
	["我刚刚是怎么了...",portrait.player],
	["头好晕啊，大家人都去哪了？",portrait.player],
	[1,0],
	];
	
	action = [
	[cutscene_change_variable,obj_controller,"camera_scene","false"],
	[cutscene_text,txt,0],
	]	
	
}

if room == rm_FOREST_TRAVEL
{
	state = "scene";
	txt[0] = 
	[
	["这里是哪里？",portrait.player],
	["我怎么到这里了？",portrait.player],
	[1,0],
	];
	
	action = [
	[cutscene_text,txt,0],
	]	
	
}
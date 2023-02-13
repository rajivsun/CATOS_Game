/// @description Insert description here
// You can write your code in this editor

play_scene = false;

if room == rm_METRO_SCENE  hspeed = 0.2;
state = "idle";
if room == rm_METRO_SCENE	state = "walk";


if room == rm_METRO_STATION_QUAI
{
	action2 =
	[
		[cutscene_change_variable,obj_camera,"follow",obj_player],
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
/// @description Insert description here
// You can write your code in this editor

play_scene = false;
if room == rm_FOREST
	cutscene_on = true;
	
general_room_setup();

if room == rm_VILL_RIVER
{
	if vill_scene == 0 instance_create_layer(84,147,"NPC_near",obj_old_farmer);
}

key_next = virtual_key_add(1800,50,100,100,vk_add)
//virtual_key_show(key_next)


if room == rm_ROBOT_CLEANER
{
	instance_create_layer(x,y,"system",obj_robot_cleaner_game);
	
	
}

if room = rm_METRO
{
	txt[0]=[
	["让啊，做完工作了吗？",portrait.boss],
	["做完了老板，电机现在正常工作了，\n楼体也清理完成了。",portrait.player],
	["好的。",portrait.boss],
	[1,0],
	]
	
	action = [
	[cutscene_text,txt,0],
	]
}

if room = rm_BAR
{
	action2 =
	[
		[cutscene_change_variable,obj_camera,"follow",obj_player],
	]
	
	txt[0] = 
	[
	["让！这里！",portrait.shaoda_little],		
	[2,action2],
	];
	
	action = 
	[
	[cutscene_change_variable,obj_camera,"follow",obj_shaoda_big],
	//[cutscene_wait,20],
	[cutscene_text,txt,0],

	];
}
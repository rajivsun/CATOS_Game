/// @description Insert description here
// You can write your code in this editor

if room == rm_FOREST
	cutscene_on = true;
	
general_room_setup();

if room == rm_VILL_RIVER
{
	if vill_scene == 0 instance_create_layer(84,147,"NPC_near",obj_old_farmer);
}

key_next = virtual_key_add(1800,50,100,100,vk_add)
//virtual_key_show(key_next)
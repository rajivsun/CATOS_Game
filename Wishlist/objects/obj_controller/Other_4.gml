/// @description Insert description here
// You can write your code in this editor

if room == rm_FOREST
	cutscene_on = true;
	
general_room_setup();

if room == rm_VILL_RIVER
{
	if vill_scene == 0 instance_create_layer(84,147,"NPC_near",obj_old_farmer);
}
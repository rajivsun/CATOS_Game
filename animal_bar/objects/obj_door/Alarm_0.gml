/// @description client coming
// You can write your code in this editor

//for (var i=0;i<array_length(npc[obj_controller.day][current_npc]);i++;)
//{
//	instance_create_layer(210,0,"NPC",npc[obj_controller.day][current_npc][i]);
//}
//current_npc ++;

var _current_npc = obj_controller.position_dialogue[obj_controller.current_dialogue];
for (var ii=0;ii<array_length(_current_npc);ii++)
{
	show_debug_message(_current_npc[ii]);
	if !instance_exists(_current_npc[ii][0])
	{
		instance_create_layer(210,0,"NPC",_current_npc[ii][0]);
	}
}
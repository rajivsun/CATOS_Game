/// @description client coming
// You can write your code in this editor

for (var i=0;i<array_length(npc[obj_controller.day][current_npc]);i++;)
{
	instance_create_layer(210,0,"NPC",npc[obj_controller.day][current_npc][i]);
}
current_npc ++;

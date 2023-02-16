/// @description Insert description here
// You can write your code in this editor

if instance_exists(obj_arcade_boss) or win
{
	instance_create_layer(random_range(120,250),-20,"enemy",obj_arcade_enemy);
	alarm[0] = 60;
}
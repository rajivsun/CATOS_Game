/// @description Insert description here
// You can write your code in this editor

if obj_controller.start == true
{
	if obj_controller.start_wave == true
	{
		instance_create_layer(x+random_range(-50,50),y+random_range(-50,50),"enemy",obj_enemy);
	}
}
alarm[0] = 10;
instance_create_layer(x+random_range(-50,50),y+random_range(-50,50),"enemy",obj_enemy);
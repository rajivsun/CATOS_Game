/// @description Insert description here
// You can write your code in this editor


if instance_exists(obj_player)
{
	gun_movement();
}

//image_alpha -= 0.05;

if image_index >= image_number-1
{
	instance_destroy();
}
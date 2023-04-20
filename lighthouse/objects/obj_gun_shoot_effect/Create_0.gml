/// @description Insert description here
// You can write your code in this editor

image_xscale = 0.8;
image_yscale = 0.8;

alarm[0] = 100;

if instance_exists(obj_player)
{
	gun_movement();
}

with instance_create_layer(x,y,"player",obj_gun_shoot_bullet)
{
	speed = 100;
	direction = other.image_angle;
	image_angle = direction;
	image_xscale = 2;
}
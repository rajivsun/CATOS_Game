/// @description Insert description here
// You can write your code in this editor

image_xscale += 0.01;
image_yscale = image_xscale;

if x <= room_width/2
{
	hspeed = -1;
}
else
{
	hspeed = 1;
}
if x < 0 or x >= room_width
{
	instance_destroy();
	instance_create_layer(random_range(320-10,320+10),random_range(180,200),"grass",obj_high_grass)
}
/// @description Insert description here
// You can write your code in this editor

if standingup == true
{
	image_speed = 1;
	if image_index >= image_number-1
	{
		image_speed = 0;
		instance_destroy();
		instance_create_layer(x,y,"player",obj_player);

	}
}
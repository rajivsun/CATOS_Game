/// @description Insert description here
// You can write your code in this editor

depth = obj_player.depth -1

// gun position
if instance_exists(obj_player)
{
	x = obj_player.x;
	y = obj_player.y+2;
	image_angle = point_direction(x,y,mouse_x,mouse_y)
	
	if image_angle >90 and image_angle < 270
	{
		image_yscale = -1
	}
	else image_yscale = 1
}
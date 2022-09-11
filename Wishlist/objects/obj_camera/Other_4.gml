/// @description Insert description here
// You can write your code in this editor

if camera_get_view_height(cam) >250
	dist_player_cam = 80;
else 
	dist_player_cam = 40;
	
	
if instance_exists(obj_player)
{
	follow = obj_player;
	x = follow.x;
	y = follow.y- dist_player_cam;
}

	
cam_w =  camera_get_view_width(cam);
cam_h =  camera_get_view_height(cam);


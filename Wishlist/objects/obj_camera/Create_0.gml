/// @description setup camera
// You can write your code in this editor

dist_player_cam = 80;
cam = view_camera[0];

view_w_half = camera_get_view_width(cam)/2;
view_h_half = camera_get_view_height(cam)/2;


if instance_exists(obj_player)
{
	follow = obj_player;
	x = follow.x;
	y = follow.y- dist_player_cam;
}


//cam_buff = 20;
shake_length = 0;
shake_magnitude = 0;
shake_remain = 0;
//_menu = false;
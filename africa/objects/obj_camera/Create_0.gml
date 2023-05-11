/// @description Insert description here
// You can write your code in this editor

cam = view_camera[0]
keyright = 0;
keyleft = 0;
follow = 
{
	x:480/2,
	y:270/2,
}
//cam_buff = 20;

view_w_half = camera_get_view_width(cam)/2;
view_h_half = camera_get_view_height(cam)/2;

x = follow.x;
y = follow.y;

shake_length = 0;
shake_magnitude = 0;
shake_remain = 0;
//_menu = false;
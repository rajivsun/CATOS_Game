/// @description setup camera
// You can write your code in this editor

cam = view_camera[0]
follow = obj_player;
//cam_buff = 20;

view_w_half = camera_get_view_width(cam)/2;
view_h_half = camera_get_view_height(cam)/2;

x = follow.x;
y = follow.y;

shake_length = 0;
shake_magnitude = 0;
shake_remain = 0;
//_menu = false;
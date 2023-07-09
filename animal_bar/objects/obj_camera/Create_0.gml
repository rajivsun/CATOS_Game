/// @description setup camera
// You can write your code in this editor


alpha = 1;
cam = view_camera[0];
cam_scene_size_x = 160;
cam_scene_size_y = 80;
count = 0;
state = "0";
view_w_half = camera_get_view_width(cam)/2;
view_h_half = camera_get_view_height(cam)/2;

//cam_buff = 20;
shake_length = 0;
shake_magnitude = 0;
shake_remain = 0;
//_menu = false;

scene_on = true;

cam_w =  camera_get_view_width(cam);
cam_h =  camera_get_view_height(cam);


follow = noone
x = view_w_half;
y = view_h_half;
xTo = view_w_half;
yTo = view_h_half;
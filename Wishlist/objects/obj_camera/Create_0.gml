/// @description setup camera
// You can write your code in this editor


cam = view_camera[0];
cam_scene_size_x = 160;
cam_scene_size_y = 80;
count = 0;
count2 = 0;
count3 = 0;
view_w_half = camera_get_view_width(cam)/2;
view_h_half = camera_get_view_height(cam)/2;

//cam_buff = 20;
shake_length = 0;
shake_magnitude = 0;
shake_remain = 0;
//_menu = false;

scene_on = true;
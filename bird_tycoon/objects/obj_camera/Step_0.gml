/// @description update camera
// You can write your code in this editor

if layer_exists("back")
{
	layer_y("back",cam_y/1.2);
}
	
//x = clamp(x,view_w_half,room_width-view_w_half);
//y = clamp(y,view_h_half,room_height-view_h_half);

//view_w_half = camera_get_view_width(cam)/2;
//view_h_half = camera_get_view_height(cam)/2;

//updata camera view
//camera_set_view_pos(cam,x-view_w_half,y-view_h_half);

cam_y += (y_to - cam_y)/10;
camera_set_view_pos(cam,x,cam_y);	

if obj_controller.open_bird_ui == 1
{
	
}

if keyboard_check_pressed(vk_space)
{
	obj_controller.open_bird_ui = -1;
	y_to = clamp(y_to,0,room_height-view_h);
	
}

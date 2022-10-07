/// @description setup camera
// You can write your code in this editor


cam = view_camera[0];

view_w = camera_get_view_width(cam);
view_h = camera_get_view_height(cam);

cam_x = 0;

drag_room_x = 0;
drag_room_y = 0; 

camera_set_view_pos(cam,x,y);
/// @description Insert description here
// You can write your code in this editor


cam_x = drag_room_x - device_mouse_x_to_gui(0);
cam_y = drag_room_y - device_mouse_y_to_gui(0);

cam_x = clamp(cam_x,0,room_width-view_w);
cam_y = clamp(cam_y,0,room_height-view_h);

camera_set_view_pos(cam,cam_x,cam_y);
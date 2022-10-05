/// @description Insert description here
// You can write your code in this editor



cam_x = drag_room_x - event_data[?"rawposX"];
cam_y = drag_room_y - event_data[?"rawposY"];

cam_x = clamp(cam_x,0,room_width-view_w);
cam_y = clamp(cam_y,0,room_height-view_h);

camera_set_view_pos(cam,cam_x,cam_y);
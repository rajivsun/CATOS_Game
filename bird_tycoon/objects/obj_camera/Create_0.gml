/// @description setup camera
// You can write your code in this editor

_scale = 0;

cam = view_camera[0];

view_w = camera_get_view_width(cam);
view_h = camera_get_view_height(cam);


drag_room_x = 0;
drag_room_y = 0; 


x = 0;
y = room_height - view_h;
cam_x = 0;
cam_y = y;
y_to = y;
camera_set_view_pos(cam,x,y);


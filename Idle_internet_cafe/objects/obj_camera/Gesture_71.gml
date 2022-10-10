/// @description Insert description here
// You can write your code in this editor



_scale = event_data[? "relativescale"];
var _w = camera_get_view_width(view_camera[0]);
var _h = camera_get_view_height(view_camera[0]);
var _x = camera_get_view_x(view_camera[0]) + (_w / 2);
var _y = camera_get_view_y(view_camera[0]) + (_h / 2);

_w /= _scale;
_h = _w * (1 / 2);
_x -= _w / 2;
_y -= _h / 2;

camera_set_view_pos(view_camera[0], _x, _y);
camera_set_view_size(view_camera[0], _w, _h);

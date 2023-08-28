// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function mouse_collision(_x1,_x2,_y1,_y2){
	if device_mouse_x_to_gui(0) > _x1 and device_mouse_x_to_gui(0) < _x2 
	and device_mouse_y_to_gui(0) > _y1 and device_mouse_y_to_gui(0) < _y2
	{
		return true
	}
}
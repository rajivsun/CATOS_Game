// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function click_button(x1,y1,x2,y2){
	if mouse_check_button_pressed(mb_left)
	{
		if device_mouse_x_to_gui(0) >= x1 and device_mouse_x_to_gui(0) <= x2
		and device_mouse_y_to_gui(0) >= y1 and device_mouse_y_to_gui(0) <= y2
		{
			return true;
		}
	}
}
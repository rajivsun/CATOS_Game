// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function button_click(_pos_x,_pos_y,_width=200,_height=100){
	if mouse_check_button(mb_any){
		if device_mouse_x_to_gui(0) >= _pos_x - _width/2 and device_mouse_x_to_gui(0) <= _pos_x + _width/2
		and device_mouse_y_to_gui(0) >= _pos_y - _height/2 and device_mouse_y_to_gui(0) <= _pos_y + _height/2
		{
			return true;
			
		}	
	}
}


function button_show(_pos_x,_pos_y,_alpha=1,_color=c_black,_width=200,_height=100){
	draw_set_alpha(_alpha);
	draw_rectangle_color(_pos_x-_width/2,_pos_y-_height/2,_pos_x+_width/2,_pos_y+_height/2,_color,_color,_color,_color,false);
	draw_set_alpha(1);

}

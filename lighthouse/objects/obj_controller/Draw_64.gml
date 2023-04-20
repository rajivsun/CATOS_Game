/// @description Insert description here
// You can write your code in this editor


// debug
if debug == true
{
	draw_set_font(ft_chinese);
	draw_text(device_mouse_x_to_gui(0)-50,device_mouse_y_to_gui(0)-20,device_mouse_x_to_gui(0));
	draw_text(device_mouse_x_to_gui(0)+50,device_mouse_y_to_gui(0)-20,device_mouse_y_to_gui(0));
	draw_text(device_mouse_x_to_gui(0)-50,device_mouse_y_to_gui(0)-80,mouse_x);
	draw_text(device_mouse_x_to_gui(0)+50,device_mouse_y_to_gui(0)-80,mouse_y);
}

general_ui();





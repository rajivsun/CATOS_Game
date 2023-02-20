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

if !instance_exists(obj_commentor) and !instance_exists(obj_fade)
and room != rm_ROBOT_CLEANER
{
	general_ui();

	// personal device
	if room == rm_CITY_TOP or room== rm_BAR or room == rm_METRO_STATION_QUAI
	draw_sprite_ext(spr_personal_device,0,100,100,1.5,1.5,0,c_white,1);
}

//draw_text(100,300,game_123);
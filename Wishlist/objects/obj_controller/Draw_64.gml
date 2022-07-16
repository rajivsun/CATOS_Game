/// @description Insert description here
// You can write your code in this editor

if debug == true
{
	draw_set_font(ft_chinese);
	draw_text(device_mouse_x_to_gui(0)-50,device_mouse_y_to_gui(0)-20,device_mouse_x_to_gui(0));
	draw_text(device_mouse_x_to_gui(0)+50,device_mouse_y_to_gui(0)-20,device_mouse_y_to_gui(0));
}

count ++;

if knock == true
	draw_sprite_ext(spr_knock_effect,count/20,200,700,5,5,0,c_white,1);
	


/// @description Insert description here
// You can write your code in this editor

//draw_text(50,50,y_buffer);

if debug == true
{
	draw_set_font(ft_chinese);
	draw_text(device_mouse_x_to_gui(0)-50,device_mouse_y_to_gui(0)-20,device_mouse_x_to_gui(0));
	draw_text(device_mouse_x_to_gui(0)+50,device_mouse_y_to_gui(0)-20,device_mouse_y_to_gui(0));
}

if game_mode == "mobile"
{
	draw_sprite(spr_key_left,0,20,button_y);
	draw_sprite(spr_key_right,0,408,button_y);
	draw_sprite(spr_key_E,0,1800,button_y);
	draw_sprite(spr_key_space,0,1500,button_y);
	draw_sprite(spr_key_shift,0,1300,button_y);
}


draw_sprite_ext(spr_personal_device,0,100,100,2,2,0,c_white,1);
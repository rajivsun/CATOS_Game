// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function general_ui(){
	// debug
	if debug == true
	{
		draw_set_font(ft_chinese);
		draw_text(device_mouse_x_to_gui(0)-50,device_mouse_y_to_gui(0)-20,device_mouse_x_to_gui(0));
		draw_text(device_mouse_x_to_gui(0)+50,device_mouse_y_to_gui(0)-20,device_mouse_y_to_gui(0));
	}

	// game mode 
	if game_mode == "mobile"
	{
		draw_sprite(spr_key_left,0,20,button_y);
		draw_sprite(spr_key_right,0,408,button_y);
		draw_sprite(spr_key_E,0,1800,button_y);
		draw_sprite(spr_key_space,0,1500,button_y);
		draw_sprite(spr_key_shift,0,1300,button_y);
	}
	
	// pause menu
	draw_sprite_ext(spr_pause_button,0,1820,100,1.5,1.5,0,c_white,1);
}
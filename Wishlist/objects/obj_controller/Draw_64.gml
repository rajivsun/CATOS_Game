/// @description Insert description here
// You can write your code in this editor

//draw_text(50,50,y_buffer);

if debug == true
{
	draw_set_font(ft_chinese);
	draw_text(device_mouse_x_to_gui(0)-50,device_mouse_y_to_gui(0)-20,device_mouse_x_to_gui(0));
	draw_text(device_mouse_x_to_gui(0)+50,device_mouse_y_to_gui(0)-20,device_mouse_y_to_gui(0));
}

count ++;

if knock == true
	draw_sprite_ext(spr_knock_effect,count/20,200,700,5,5,0,c_white,1);
	
if room == rm_FOREST and cutscene_on
{
	//cutscene_on = true;
	//draw_set_alpha(0.5);
	//draw_rectangle_color(0,0,window_get_width(),window_get_height(),0,0,0,0,false);
	draw_set_alpha(1);
}


if game_mode == "mobile"
{
	draw_sprite(spr_key_left,0,20,button_y);
	draw_sprite(spr_key_right,0,408,button_y);
	draw_sprite(spr_key_E,0,1800,button_y);
	draw_sprite(spr_key_space,0,1500,button_y);
	draw_sprite(spr_key_shift,0,1300,button_y);
}
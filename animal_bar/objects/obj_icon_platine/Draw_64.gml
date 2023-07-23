/// @description Insert description here
// You can write your code in this editor


if show_platine
{
	alpha_fond = lerp(alpha_fond,0.7,0.1);
	if music_playing == true
		rotation_plate += 0.3;
	depth = -9999;
	draw_set_alpha(alpha_fond)
	draw_rectangle_color(0,0,display_get_gui_width(),display_get_gui_height(),c_black,c_black,c_black,c_black,false);
	draw_set_alpha(1)
	draw_sprite_ext(spr_platine,0,display_get_gui_width()/2-150,display_get_gui_height()/2,2,2,0,c_white,1);
	draw_sprite_ext(spr_platine_plate,0,display_get_gui_width()/2-150,display_get_gui_height()/2,2,2,rotation_plate,c_white,1);
	draw_sprite_ext(spr_platine_top,0,display_get_gui_width()/2-150,display_get_gui_height()/2,2,2,0,c_white,1);

	draw_sprite_ext(spr_close_sign,0,820,50,2,2,0,c_white,1);
	
	// show music info
	draw_set_valign(fa_middle);
	draw_set_halign(fa_center);
	draw_set_font(ft_chinese);
	draw_text_color(display_get_gui_width()/2-150,display_get_gui_height()/4-50,music_names[current_music],#FFDA65,#FFDA65,#FFDA65,#FFDA65,1);
	draw_text_color(display_get_gui_width()/2-150,display_get_gui_height()/4,arthor_names[current_music],c_white,c_white,c_white,c_white,1);

	// show music control
	draw_sprite_ext(spr_icon_next_music,0,display_get_gui_width()/2+50,display_get_gui_height()/2-10,1,1,0,c_white,1);
	draw_sprite_ext(spr_icon_next_music,0,display_get_gui_width()/2+250,display_get_gui_height()/2-10,-1,1,0,c_white,1);
	if music_playing == true
		draw_sprite_ext(spr_icon_pause_music,0,display_get_gui_width()/2+150,display_get_gui_height()/2-10,1,1,0,c_white,1);
	else draw_sprite_ext(spr_icon_play_music,0,display_get_gui_width()/2+150,display_get_gui_height()/2-10,1,1,0,c_white,1);

}
else
{
	rotation_plate = 0;
	depth = initial_depth;
	alpha_fond = lerp(alpha_fond,0,0.1);
	draw_set_alpha(alpha_fond)
	draw_rectangle_color(0,0,display_get_gui_width(),display_get_gui_height(),c_black,c_black,c_black,c_black,false);
	draw_set_alpha(1)
}
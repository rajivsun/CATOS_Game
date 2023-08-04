/// @description Insert description here
// You can write your code in this editor


if show_ui
{

	alpha_fond = lerp(alpha_fond,0.7,0.1);
	draw_sprite_ext(spr_ui_notebook,0,0,0,2,2,0,c_white,1);
	depth = -9999;

}
//else
//{
//	rotation_plate = 0;
//	depth = initial_depth;
//	alpha_fond = lerp(alpha_fond,0,0.1);
//	draw_set_alpha(alpha_fond)
//	draw_rectangle_color(0,0,display_get_gui_width(),display_get_gui_height(),c_black,c_black,c_black,c_black,false);
//	draw_set_alpha(1)
//}
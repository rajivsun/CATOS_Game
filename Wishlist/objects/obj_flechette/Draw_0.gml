/// @description Insert description here
// You can write your code in this editor

draw_self();

if alarm[1] >= 0
{
	draw_set_text_position("center");
	draw_set_font(ft_number_big);
	draw_text_transformed_color(x,y-7,"+"+string(add_number),1,1,0,c_aqua,c_fuchsia,c_aqua,c_fuchsia,1);
	//if hit_target.multiple == 2 or hit_target.multiple == 3
	//draw_text_transformed_color(x,y-27,"X"+string(multiple),2,2,0,c_lime,c_green,c_lime,c_green,1);
}
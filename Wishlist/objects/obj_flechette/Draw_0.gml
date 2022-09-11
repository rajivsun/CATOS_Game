/// @description Insert description here
// You can write your code in this editor

draw_self();

if alarm[1] >= 0
{
	draw_set_text_position("center");
	draw_set_font(ft_number);
	draw_text_transformed(x,y-7,"+"+string(add_number),0.5,0.5,0);
}
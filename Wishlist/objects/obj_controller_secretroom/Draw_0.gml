/// @description Insert description here
// You can write your code in this editor

if lighton == false
{
	draw_set_alpha(0.95);
	draw_rectangle_color(0,0,room_width,room_height,c_black,c_black,c_black,c_black,false);
	draw_set_alpha(1);
}



if displayon == true
{
	draw_set_alpha(0.95);
	var c = c_white;	
	draw_rectangle_color(89,80,322,145,c,c,c,c,false);
	draw_set_alpha(1);
	draw_set_color(c_black);
	draw_set_font(ft_chinese);
	draw_set_valign(fa_middle);
	draw_set_halign(fa_center);
	draw_text(216,113,txt);
	draw_set_color(c_white);

}


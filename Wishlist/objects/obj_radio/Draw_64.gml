/// @description Insert description here
// You can write your code in this editor


if (position_meeting(mouse_x,mouse_y,id))
{
	draw_set_color(c_black);
	draw_set_font(ft_chinese_kai_huge);
	draw_set_valign(fa_middle);
	draw_set_halign(fa_center);
	draw_text(960,200,"开始游戏");
	draw_set_color(c_white);
	
	if mouse_check_button_pressed(mb_left)
	{
		fade(rm_PRE,60);
	}
}


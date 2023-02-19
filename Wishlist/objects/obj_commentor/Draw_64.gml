/// @description Insert description here
// You can write your code in this editor
// draw cutscene text


if room == rm_VILL_RIVER_travel{
	draw_set_color(c_black);
	draw_set_alpha(count/180);
	draw_rectangle(0,0,2500,150,false);
	draw_rectangle(0,930,2500,2200,false);
	draw_set_color(c_white);
	draw_set_alpha(1);
	count ++;
	if count <= 60*3
	{
		exit;
	}
}

draw_set_font(ft_chinese_kai_huge);
draw_set_valign(fa_middle);draw_set_halign(fa_center);
draw_set_alpha(alpha);
draw_text(2160/2,90,msg);
draw_set_alpha(1);
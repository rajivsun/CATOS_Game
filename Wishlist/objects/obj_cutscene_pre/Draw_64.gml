/// @description Insert description here
// You can write your code in this editor

// draw cutscene text
draw_set_font(ft_chineseULTRA);
draw_set_valign(fa_middle);draw_set_halign(fa_center);
draw_set_alpha(alpha);
draw_text(640,200,msg);
draw_set_alpha(1);

_count += 4/60;
	

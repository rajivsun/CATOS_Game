/// @description Insert description here
// You can write your code in this editor
// draw cutscene text


if current >= 0 and current < 23 alpha_bg = min(1,alpha_bg+0.01);
else alpha_bg =max(alpha_bg-0.01,0);
//draw_text(100,200,current)


draw_set_font(ft_chinese_kai_huge);
draw_set_valign(fa_middle);draw_set_halign(fa_center);
draw_set_alpha(alpha);
draw_set_color(color);
draw_text(2160/2,500,msg);
draw_set_alpha(1);
draw_set_color(c_white);
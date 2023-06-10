/// @description Insert description here
// You can write your code in this editor

draw_self();

for (var i=0;i<ds_list_size(ls_drinks);i++)
{
	draw_set_valign(fa_middle);
	draw_set_halign(fa_center);
	draw_set_font(ft_chinese);
	draw_text_transformed(x,y-(50+i*20),ls_drinks[| i],0.5,0.5,0);
}
/// @description Insert description here
// You can write your code in this editor

draw_self();

for (var i=0;i<array_length(obj_shaker_table.all_drinks);i++)
{
	draw_sprite_ext(spr_cocktails,i,x+10,y+10+i*28,0.5,0.5,0,c_white,1);
	draw_set_font(ft_chinese);
	draw_set_valign(fa_middle);
	draw_set_halign(fa_center);
	draw_text_transformed(x+60,y+10+i*28,obj_shaker_table.all_drinks_name[i][0],0.4,0.4,0);
}
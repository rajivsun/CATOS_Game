/// @description Insert description here
// You can write your code in this editor

frame += 0.25;
scale = min(1,scale + 0.05);
if type == "repair"
{
	draw_sprite_ext(spr_repair_icon,0,800,500,1*scale,1*scale,0,c_white,1);
	draw_set_halign(fa_left);
	draw_set_valign(fa_middle);
	draw_set_font(ft_chinese_big);
	draw_text_transformed_color(1000,450,"成功",7*scale,7*scale,0,c_white,c_yellow,c_white,c_yellow,1);
	draw_sprite_ext(spr_sparks,frame,1100,450,1,1,0,c_white,1);
}

if destroy == true
{
	instance_destroy();
}
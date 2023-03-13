/// @description Insert description here
// You can write your code in this editor

//draw_text(100,100,mark_list);

// draw information
draw_set_alpha(0.7);
draw_roundrect_color(1600,105,2115,500,c_black,c_black,false);
draw_set_alpha(1);

draw_sprite_ext(spr_robot_cleaner_info,0,1850,250,4,4,0,c_white,1);
draw_set_text_position("middle");
draw_set_font(ft_chinese);

draw_sprite_ext(spr_mark,0,1745,220,2,2,0,c_white,1);
draw_text(1900,220,mark_left);
draw_text(1780,150,"剩余信标");
draw_sprite_ext(spr_tache,0,1745,390,2,2,0,c_white,1);

var tache_left = instance_number(obj_tache);
draw_text(1900,390,tache_left);
draw_text(1780,290,"剩余污渍");


if result == "win" 
{
	draw_set_font(ft_chinese_big);
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	draw_text_transformed(2160/2,1080/2,"清洁成功!",3,3,0);
	show_UI = true;
	

}

else if result == "lose"
{
	draw_set_font(ft_chinese_big);
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	draw_text(1920/2,1080/2,"清洁失败!");
}


draw_sprite_ext(spr_robot_cleaner_start_button,0,1700,940,4,4,0,c_white,1);

//draw_rectangle(border_x1,border_y1,border_x2,border_y2,true);


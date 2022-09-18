/// @description Insert description here
// You can write your code in this editor

//draw_text(100,100,mark_list);


// draw information
draw_set_alpha(0.7);
draw_roundrect_color(1500,215,1850,550,c_black,c_black,false);
draw_set_alpha(1);

draw_set_text_position("middle");
draw_set_font(ft_text_big);

draw_sprite_ext(spr_mark,0,1600,300,2,2,0,c_white,1);
draw_text(1800,300,mark_left);
draw_sprite_ext(spr_tache,0,1600,450,2,2,0,c_white,1);

var tache_left = instance_number(obj_tache);
draw_text(1800,450,tache_left);



if result == "win"
{
	if current_level >= 0
	{
		draw_set_font(ft_text_ultra);
		draw_set_halign(fa_center);
		draw_set_valign(fa_middle);
		//draw_text(1920/2,1080/2,"YOU WIN!");
		show_UI = true;
		fade(rm_CITY_TOP,60);
	}
	
}
else if result == "lose"
{
	draw_set_font(ft_text_ultra);
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	draw_text(1920/2,1080/2,"YOU LOSE!");	
}

draw_sprite_ext(spr_robot_cleaner_start_button,0,1700,940,4,4,0,c_white,1);

//draw_rectangle(border_x1,border_y1,border_x2,border_y2,true);


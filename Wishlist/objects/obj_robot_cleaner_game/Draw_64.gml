/// @description Insert description here
// You can write your code in this editor

//draw_text(100,100,mark_list);


// draw left marks
draw_set_font(ft_text_big);
draw_sprite_ext(spr_mark,0,1700,200,2,2,0,c_white,1);
draw_text(1800,180,mark_left);


if result == "win"
{
	draw_set_font(ft_text_ultra);
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	draw_text(1920/2,1080/2,"YOU WIN!");
	show_UI = true;
	
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


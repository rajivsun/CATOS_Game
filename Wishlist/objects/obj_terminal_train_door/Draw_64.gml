/// @description Insert description here
// You can write your code in this editor

// draw UI
draw_set_alpha(0.5);
draw_rectangle_color(0,0,1920,1080,c_black,c_black,c_black,c_black,false);
draw_set_alpha(1);
draw_sprite_ext(spr_terminal_metro_door,0,1920/2,1080/2,4,4,0,c_white,1);

// draw escape button
if keyboard_check_pressed(vk_escape)
{
	instance_destroy();
} 

// draw options
for (var i=0;i<array_length(options);i++)
{
	draw_set_alpha(0.2);
	draw_rectangle_color(1247,265+i*120,1660,365+i*120,c_black,c_black,c_black,c_black,false);
	draw_set_alpha(1);
	
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	draw_set_font(ft_text_ultra);
	var _color = options[i][1];
	draw_text_color(1454,315+i*120,options[i][0],_color,_color,_color,_color,1);
}

/// @description Insert description here
// You can write your code in this editor

draw_set_alpha(0.5);
draw_rectangle_color(0,0,1920,1080,c_black,c_black,c_black,c_black,false);
draw_set_alpha(1);
draw_sprite_ext(spr_terminal_metro_door,0,1920/2,1080/2,4,4,0,c_white,1);


if keyboard_check_pressed(vk_escape)
{
	instance_destroy();
}

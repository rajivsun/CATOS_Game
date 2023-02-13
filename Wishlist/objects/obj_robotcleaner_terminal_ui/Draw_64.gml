/// @description Insert description here
// You can write your code in this editor

// draw UI
draw_set_alpha(0.7);
draw_rectangle_color(0,0,2500,1500,c_black,c_black,c_black,c_black,false);
draw_set_alpha(1);
draw_sprite_ext(spr_robotcleaner_terminal_UI,0,1920/2,1080/2,12,12,0,c_white,1);

// escape button
if keyboard_check_pressed(vk_escape)
{
	instance_destroy();
} 
draw_sprite_ext(spr_esc_button,0,1500,180,4,4,0,c_white,1);

//draw start button
draw_set_font(ft_chinese);
draw_set_valign(fa_middle);
draw_set_halign(fa_center);
draw_text(942,513,"开始清扫");
if keyboard_check_pressed(ord("O"))
{
	fade(rm_ROBOT_CLEANER,30,c_black,0,0,0);
} 

// draw UI
draw_text(942,220,"- 洁宝机器人清洁公司终端 -");


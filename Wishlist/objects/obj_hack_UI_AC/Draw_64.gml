/// @description Insert description here
// You can write your code in this editor


draw_set_alpha(0.7);
draw_rectangle_color(0,0,2500,1580,c_black,c_black,c_black,c_black,false);
draw_set_alpha(1);

//draw UI
draw_sprite_ext(spr_Hack_UI,0,display_get_gui_width()/2,display_get_gui_height()/2,3,3,0,c_white,1);

//escape button
if keyboard_check_pressed(vk_escape)
{
	instance_destroy();
} 


draw_set_font(ft_chinese_big)
draw_set_valign(fa_middle);
draw_set_halign(fa_left);
draw_text(600,252,"电机控制系统");

//function(power_management){}
draw_text(1000,500,"If power == Off");
// restart = true;
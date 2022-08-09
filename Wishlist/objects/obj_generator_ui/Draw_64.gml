/// @description Insert description here
// You can write your code in this editor

draw_set_alpha(0.8);
draw_rectangle_color(0,0,1920,1080,c_black,c_black,c_black,c_black,0);
draw_set_alpha(1);
draw_sprite_ext(spr_generator_UI,0,1920/2,1080/2,5,5,0,c_white,1);

for (var i=0;i<=4;i++)
{
	draw_sprite_ext(spr_generator_switch,lights[i],550+i*200,520,3.5,3.5,0,c_white,1);
}


draw_sprite_ext(spr_esc_button,0,1732,216,4,4,0,c_white,1);
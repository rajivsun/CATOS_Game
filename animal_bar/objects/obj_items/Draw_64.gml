/// @description Insert description here
// You can write your code in this editor

alpha = lerp(alpha,0.5,0.1);
draw_set_alpha(alpha)
draw_rectangle_color(0,0,display_get_gui_width(),display_get_gui_height(),c_black,c_black,c_black,c_black,false);
draw_set_alpha(1)

draw_sprite_ext(sprite_index,0,display_get_gui_width()/2,display_get_gui_height()/2,image_scale,image_scale,0,c_white,1);
draw_sprite_ext(spr_close_sign,0,display_get_gui_width()/5*4,display_get_gui_height()/3,2,2,0,c_white,1);
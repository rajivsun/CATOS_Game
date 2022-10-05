/// @description Insert description here
// You can write your code in this editor

// ----------- top info ----------------
draw_set_alpha(0.8);
draw_roundrect_color(15,30,250,60,c_black,c_black,false);
draw_set_alpha(1);

draw_sprite_ext(spr_icon_money,0,40,46,1,1,0,c_white,1);
draw_set_valign(fa_middle);
draw_set_halign(fa_center);
draw_text_ext_transformed_color(80,40,obj_controller.gold,10,10,1,1,0,c_white,c_white,c_white,c_white,1);

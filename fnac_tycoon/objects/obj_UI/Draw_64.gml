/// @description Insert description here
// You can write your code in this editor

// ----------- top info ----------------
draw_set_alpha(0.8);
draw_roundrect_color(30,60,500,120,c_black,c_black,false);
draw_set_alpha(1);

draw_sprite_ext(spr_icon_money,0,80,91,2,2,0,c_white,1);
draw_set_valign(fa_middle);
draw_set_halign(fa_center);
draw_set_font(ft_info_num);
draw_text(160,90,obj_controller.gold);
//draw_text_ext_transformed_color(160,80,obj_controller.gold,10,10,1,1,0,c_white,c_white,c_white,c_white,1);

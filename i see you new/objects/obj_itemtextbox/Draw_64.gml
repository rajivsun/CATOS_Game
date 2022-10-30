/// @description Insert description here
// You can write your code in this editor

// draw the fond
draw_set_alpha(0.8);
draw_rectangle_color(0,0,
1800,1200,c_black,c_black,c_black,c_black,false);
draw_set_alpha(1);


//draw text
draw_set_font(ft_chinese);
draw_set_valign(fa_middle);draw_set_halign(fa_center);
draw_text(640,320,text);
//show_debug_message(text)

//draw close sign
draw_sprite_ext(spr_exit,0,1100,50,2,2,0,c_white,1);



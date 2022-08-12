/// @description Insert description here
// You can write your code in this editor

// draw the background UI
draw_sprite_ext(spr_terminal_metro_station_UI,0,1920/2,1080/2,5,5,0,c_white,1);

// esc button
draw_sprite_ext(spr_esc_button,0,1732,216,4,4,0,c_white,1);


// draw the text 
draw_set_font(ft_chinese);
draw_set_valign(fa_middle);
draw_set_halign(fa_center);
draw_text(1234,560,text);
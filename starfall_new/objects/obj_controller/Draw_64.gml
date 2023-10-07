/// @description Insert description here
// You can write your code in this editor

draw_set_font(ft_UI);
draw_set_halign(fa_left)
draw_set_valign(fa_middle)
draw_text(50,50,"Gold : "+string(gold));

draw_set_halign(fa_right)
draw_set_valign(fa_middle)
draw_text(display_get_gui_width()-50,50,"start wave"+string(start_wave));
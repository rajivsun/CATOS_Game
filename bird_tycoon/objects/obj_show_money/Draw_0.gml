/// @description Insert description here
// You can write your code in this editor




draw_set_valign(fa_middle);
draw_set_halign(fa_center);
draw_set_font(ft_info_num);
draw_set_color(c_lime);
var c = c_white;

var money_to_draw;
money_to_draw = money_conversion(money_num)

draw_text_color(x,y,"+" + money_to_draw,c,c,c,c,image_alpha);
//draw_text(x,y-count/10,"+ " + string(money_num));
draw_set_color(c_white);



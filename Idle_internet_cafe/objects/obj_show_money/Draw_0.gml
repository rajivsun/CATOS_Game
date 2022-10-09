/// @description Insert description here
// You can write your code in this editor


count ++;

draw_set_valign(fa_middle);
draw_set_halign(fa_center);
draw_set_font(ft_info_num_big);
draw_set_color(c_lime);
draw_text_color(x,max(y-30,y-count*2),"+ " + string(money_num),c_lime,c_lime,c_lime,c_lime,1);
//draw_text(x,y-count/10,"+ " + string(money_num));
draw_set_color(c_white);


if count >= 120
{
	instance_destroy();
}
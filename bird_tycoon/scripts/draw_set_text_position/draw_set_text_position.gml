// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function draw_set_text_position(_pos){
	if _pos == "center" or _pos == "middle"
	{
		draw_set_valign(fa_center);
		draw_set_halign(fa_middle);
	}
	else if _pos == "left"
	{
		draw_set_valign(fa_top);
		draw_set_halign(fa_left);
	}
	else if _pos == "right"
	{
		draw_set_valign(fa_top);
		draw_set_halign(fa_right);
	}
}

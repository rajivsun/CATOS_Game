// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function draw_chinese(vh,num_character,text,_x,_y,_scale,_color){
	draw_set_font(ft_chinese);
	if vh == "middle"
	{
		draw_set_halign(fa_center);
		draw_set_valign(fa_middle);
	}
	if vh == "left"
	{
		draw_set_valign(fa_top);		
		draw_set_halign(fa_left);
	}
	var _lines = floor(string_length(text)/num_character)
	for (var i=0;i<_lines;i++)
	{
		text = string_insert("\n",text,num_character+i*num_character)
	}
	
	draw_text_transformed_color(_x,_y,text,_scale,_scale,0,_color,_color,_color,_color,1);
	
}
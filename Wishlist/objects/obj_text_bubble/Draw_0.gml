/// @description Insert description here
// You can write your code in this editor
text = [
["1...",obj_lili_little.count_123_dur/3],
["2...",obj_lili_little.count_123_dur/3],
["3...",obj_lili_little.count_123_dur/3],
["木头人!",120],
];


current_text = text[page][0];
str_length = string_length(current_text);

draw_set_alpha(alpha);
draw_roundrect_color_ext(str_x - str_length*4-10,str_y-60,str_x+str_length*4+10,str_y-45,5,5,c_white,c_white,false);
draw_set_font(ft_chinese);
draw_set_valign(fa_middle);
draw_set_halign(fa_center);
draw_text_ext_transformed_color(str_x,str_y-55,current_text,5,1000,0.25,0.25,0,c_black,c_black,c_black,c_black,alpha);
draw_triangle_color(str_x-2,str_y-45,str_x+2,str_y-45,str_x,str_y-40,
c_white,c_white,c_white,false);
draw_set_alpha(1);

str_y = max(str_y-1,obj_lili_little.y+10);;
count --;
alpha += 1/15;
if count <= 0
{
	if page >= array_length_1d(text) - 1
	{
		instance_destroy();
		exit;
	}
	page ++;
	str_y = obj_lili_little.y+20;
	alpha = 0;
	count = text[page][1];
}

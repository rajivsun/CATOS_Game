/// @description Insert description here
// You can write your code in this editor

//draw textbox
draw_sprite_ext(spr_box,0,0,0,2,2,0,c_white,1);

//draw texts
if counter < string_length(text[page]){
	counter ++;
}

var substr = string_copy(text[page],1,counter);

if obj_main.language == "chinese"
{
	draw_set_font(ft_chineseBIG);
}
else if obj_main.language == "english"
{
	draw_set_font(ft_chinese);
}

draw_set_halign(fa_left); draw_set_valign(fa_top);
var spk = string(speakers[page].name) + " :"
draw_text(50*2,215*2,spk);
draw_text_ext(50*2,240*2,substr,text_height,text_maxwidth);

//draw arrow sign
y_buff += sgn * 0.3;
if y_buff >= 10{
	sgn = -1;
}
if y_buff <= 0{
	sgn = 1;
}
draw_sprite_ext(spr_Esign,0,1170,600-55+y_buff,2,2,0,c_white,1);
			
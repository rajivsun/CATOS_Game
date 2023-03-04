/// @description Insert description here
// You can write your code in this editor

draw_set_center();
draw_set_font(ft_chinese_kai_huge);
draw_text_transformed_color(2160/2,200,"雷闪",5,5,0,c_red,c_red,c_red,c_red,alpha);


//draw_roundrect_color()
draw_set_alpha(0.5*alpha);
draw_roundrect_color(930,550,1240,650,c_black,c_black,false);
draw_set_alpha(1);
draw_set_alpha(alpha);
draw_text_transformed(2160/2,600,"开始游戏",1,1,0);
draw_set_alpha(1);

/// @description Insert description here
// You can write your code in this editor


draw_set_text_position("left");
draw_set_font(ft_chinese);

draw_roundrect(1488,90,1864,370,true);
draw_roundrect(1488,703,1864,703+280,true);

draw_text_transformed(1500,100,"让：",2,2,0);
draw_text_transformed(1500,170,"分数："+string(total_score),2,2,0);
draw_text_transformed(1500,240,"剩余飞镖："+string(flechette_left),2,2,0);

draw_text_transformed(1500,100,"飞镖哥：",2,2,0);
draw_text_transformed(1500,170,"分数："+string(total_score_fbg),2,2,0);
draw_text_transformed(1500,240,"剩余飞镖："+string(flechette_left),2,2,0);



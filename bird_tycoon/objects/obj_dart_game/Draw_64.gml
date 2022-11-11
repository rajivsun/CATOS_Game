/// @description Insert description here
// You can write your code in this editor


draw_set_text_position("left");
draw_set_font(ft_info_num_small);

draw_roundrect(88,90,464,370,true);
draw_roundrect(88,703,464,703+280,true);

draw_text_transformed(1500,100,"剩余飞镖："+string(flechette_left),2,2,0);

draw_text_transformed(100,100,"让：",2,2,0);
draw_text_transformed(100,170,"分数："+string(total_score),2,2,0);
draw_text_transformed(100,750,"飞镖哥：",2,2,0);
draw_text_transformed(100,820,"分数："+string(total_score_fbg),2,2,0);
//draw_text_transformed(1500,890,"剩余飞镖："+string(flechette_left),2,2,0);



// show turn sign
if alarm[0] > 0
{
	draw_rectangle_color(0,400,1920,600,c_black,c_black,c_black,c_black,false);
	draw_set_text_position("middle");
	draw_set_font(ft_info_num_small);
	if turn == 1
		draw_text_transformed(960,500,"轮到你了",4,4,0);
	else if turn == -1
		draw_text_transformed(960,500,"轮到飞镖哥了",4,4,0);

}

// show results
if alarm[1] > 0
{
	draw_rectangle_color(0,400,1920,600,c_black,c_black,c_black,c_black,false);
	draw_set_text_position("middle");
	draw_set_font(ft_info_num_small);
	draw_text_transformed(960,500,result,4,4,0);

}
/// @description Insert description here
// You can write your code in this editor

if pass == false
{
	draw_set_font(ft_chinese_kai_huge);
	draw_set_center();
	draw_text_transformed_color(1000,500,"失败了",3,3,0, c_white,c_white,c_white,c_white,1);
}
else
{
	draw_set_font(ft_chinese_kai_huge);
	draw_set_center();
	draw_text_transformed_color(1000,500,"成功",3,3,0, c_white,c_white,c_white,c_white,1);
}

//draw_text(50,50,pass);
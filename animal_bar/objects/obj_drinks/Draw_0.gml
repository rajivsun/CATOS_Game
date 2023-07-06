/// @description Insert description here
// You can write your code in this editor


draw_self();

if collision_point(mouse_x,mouse_y,object_index,false,false) and obj_controller.make_drinks == true
{
	depth = -999;
	outline_draw(shader_outlineW);

	draw_rectangle_color(x-1-text_length/2+text_x_buff,y+text_y_buff,x-1+text_length/2+text_x_buff,y+text_y_buff+10,c_gray,c_gray,c_gray,c_gray,false);
	draw_rectangle_color(x+1-text_length/2+text_x_buff,y+text_y_buff,x+1+text_length/2+text_x_buff,y+text_y_buff+10,c_gray,c_gray,c_gray,c_gray,false);
	draw_rectangle_color(x-text_length/2+text_x_buff,y+1+text_y_buff,x+text_length/2+text_x_buff,y+1+text_y_buff+10,c_gray,c_gray,c_gray,c_gray,false);                                                                                                                                                     
	draw_rectangle_color(x-text_length/2+text_x_buff,y-1+text_y_buff,x+text_length/2+text_x_buff,y-1+text_y_buff+10,c_gray,c_gray,c_gray,c_gray,false);          
	draw_rectangle_color(x-text_length/2+text_x_buff,y+text_y_buff,x+text_length/2+text_x_buff,y+text_y_buff+10,c_black,c_black,c_black,c_black,false);
	draw_set_valign(fa_middle);
	draw_set_halign(fa_center);
	draw_set_color(c_white);
	draw_set_font(ft_chinese);
	draw_text_ext_transformed(x+text_x_buff,y+text_y_buff+2,name[0],10,300,0.25,0.25,0);
	draw_set_color(c_white);
}
else
	depth = initial_depth;

//draw_text(x,y+50,click)

t = "咖啡利口酒橘子苹果梅子蓝莓香蕉香槟苦艾酒"        
t = "橘子汁 苹果汁 葡萄汁 菠萝汁 蔓越莓汁 柠檬汁 椰奶"
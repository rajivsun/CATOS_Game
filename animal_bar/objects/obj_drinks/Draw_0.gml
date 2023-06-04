/// @description Insert description here
// You can write your code in this editor


draw_self();

if collision_point(mouse_x,mouse_y,object_index,false,false)
{
	depth = -999;
	outline_draw(shader_outlineW);
	draw_roundrect_color(x-1-text_length/2+text_x_buff,y-1+text_y_buff,x-1+text_length/2+text_x_buff,y-1+text_y_buff+10,c_dkgray,c_dkgray,false);
	draw_roundrect_color(x+1-text_length/2+text_x_buff,y+1+text_y_buff,x+1+text_length/2+text_x_buff,y+1+text_y_buff+10,c_dkgray,c_dkgray,false);
	draw_roundrect_color(x-1-text_length/2+text_x_buff,y+1+text_y_buff,x-1+text_length/2+text_x_buff,y+1+text_y_buff+10,c_dkgray,c_dkgray,false);
	draw_roundrect_color(x+1-text_length/2+text_x_buff,y-1+text_y_buff,x+1+text_length/2+text_x_buff,y-1+text_y_buff+10,c_dkgray,c_dkgray,false);
	draw_roundrect_color(x-text_length/2+text_x_buff,y+text_y_buff,x+text_length/2+text_x_buff,y+text_y_buff+10,c_white,c_white,false);
}
else
	depth = initial_depth;





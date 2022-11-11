/// @description Insert description here
// You can write your code in this editor

draw_self();

draw_set_text_position("center");
draw_set_font(ft_info_num_small);
draw_text(x+70*cos(image_angle*pi/180),y-70*sin(image_angle*pi/180),number);

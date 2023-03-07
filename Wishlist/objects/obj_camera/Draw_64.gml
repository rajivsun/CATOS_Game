/// @description Insert description here
// You can write your code in this editor

//draw_text(50,200,obj_controller.camera_scene)

if obj_controller.camera_scene == true
{
	alpha = 1;
}
else alpha -= 0.01;

draw_set_alpha(alpha);
draw_set_color(c_black);
draw_rectangle(0,0,2500,150,false);
draw_rectangle(0,930,2500,2200,false);
draw_set_color(c_white);
draw_set_alpha(1);
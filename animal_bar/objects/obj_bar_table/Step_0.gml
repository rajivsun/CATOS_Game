/// @description Insert description here
// You can write your code in this editor

x = obj_camera.x - (obj_camera.view_w_half - xstart);

if obj_controller.make_drinks == true
{
	y = lerp(y,235,0.1);
}
else
{
	y = lerp(y,ystart,0.1);
}
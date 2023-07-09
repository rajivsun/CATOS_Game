/// @description Insert description here
// You can write your code in this editor


var xTo = 16 + obj_camera.x - obj_camera.view_w_half;

if obj_controller.make_drinks == true
{
	x = lerp(x,xTo,0.1);
}
else
{
	x = lerp(x,xstart,0.1);
}
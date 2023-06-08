/// @description Insert description here
// You can write your code in this editor

if obj_controller.make_drinks == true
{
	x = lerp(x,480,0.1);
}
else
{
	x = lerp(x,xstart,0.1);
}


if abs(x - 480) < 1 out = true;
else out = false
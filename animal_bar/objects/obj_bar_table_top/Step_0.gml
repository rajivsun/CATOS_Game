/// @description Insert description here
// You can write your code in this editor

if obj_controller.make_drinks == true
{
	image_yscale = lerp(image_yscale,0,0.1);
}
else
{
	image_yscale = lerp(image_yscale,1,0.1);
	//x = lerp(x,xstart,0.1);
}
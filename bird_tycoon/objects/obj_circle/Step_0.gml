/// @description Insert description here
// You can write your code in this editor


image_alpha -= 0.01;

image_xscale += 0.01;
image_yscale = image_xscale;


if image_alpha <= 0
{
	instance_destroy();
}
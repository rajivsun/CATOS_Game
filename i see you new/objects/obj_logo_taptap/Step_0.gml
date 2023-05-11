/// @description Insert description here
// You can write your code in this editor

image_alpha += 0.02;
count ++;

if count >= 180
{
	image_alpha -= 0.02*2;
	if image_alpha <= 0
	{
		instance_destroy();
		instance_create_layer(x,y,"instances",obj_logo_catos)
	}
}


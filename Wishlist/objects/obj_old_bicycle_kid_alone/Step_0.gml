/// @description Insert description here
// You can write your code in this editor


if instance_exists(obj_commentor)
{
	if obj_commentor.current < 21 image_alpha = min(1,image_alpha+0.01);
	if obj_commentor.current >= 21
	{
		image_alpha -= 0.01;
		if image_alpha <= 0 instance_destroy();
		if !instance_exists(obj_old_bicycle_adults)	
			instance_create_layer(x,y,"system",obj_old_bicycle_adults);
	}
}


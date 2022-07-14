/// @description Insert description here
// You can write your code in this editor

image_xscale += 0.2/30;
image_yscale = image_xscale;

if distance_to_object(obj_player) <= 0{
	image_alpha -= 0.2/20;
}

if image_alpha <= 0{
	instance_destroy();
}

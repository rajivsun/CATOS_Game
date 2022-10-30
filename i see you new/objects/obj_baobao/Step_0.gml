/// @description Insert description here
// You can write your code in this editor

if walk_away{
	image_speed = 1;
	if sprite_index != spr_baobaoUR sprite_index = spr_baobaoUR;
	speed = 0.5;
	direction = 90;
	image_alpha -= 1/60;
}

if image_alpha <= 0 instance_destroy()
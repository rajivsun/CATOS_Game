/// @description Insert description here
// You can write your code in this editor

right = keyboard_check(vk_right) or keyboard_check(ord("D"));
left = keyboard_check(vk_left) or keyboard_check(ord("Q")); 
//jump = keyboard_check(vk_space);
interact = keyboard_check(ord("E"));

//--------------- movement --------------------
if instance_exists(obj_textbox)
{
	sprite_index = spr_idle;
}
else
{
	player_movement();
}

//-------------- interact --------------------
nearest =instance_nearest(x,y,obj_interactable);
if interact
{
	player_interact();
}



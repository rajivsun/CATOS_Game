/// @description Insert description here
// You can write your code in this editor

if !instance_exists(obj_commentor) and !instance_exists(obj_fade)
and room != rm_ROBOT_CLEANER
{
	general_ui();

	// personal device
	draw_sprite_ext(spr_personal_device,0,100,100,1.5,1.5,0,c_white,1);
}
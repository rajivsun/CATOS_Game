/// @description Insert description here
// You can write your code in this editor

if !instance_exists(obj_main) exit
if room == rm_homeF1_arcade 
{
	instance_destroy();
	exit;
}

if obj_controller.piano_scene or obj_main.mode_bonus == "tour"  image_alpha = 1;
else image_alpha = 0;
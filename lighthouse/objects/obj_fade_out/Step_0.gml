/// @description Insert description here
// You can write your code in this editor

timer --;

if timer <= 0{

	if instance_exists(obj_cutscene) {
		with obj_cutscene end_scene();
	}
	instance_destroy();
}

alpha = timer / duration;
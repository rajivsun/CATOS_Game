/// @description Insert description here
// You can write your code in this editor


// close the itembox
if keyboard_check_pressed(vk_escape){
	obj_joystick.alarm[0] = 20;
	instance_destroy();
	if instance_exists(obj_cutscene){
		with obj_cutscene{
			end_scene();
		}
	}
}
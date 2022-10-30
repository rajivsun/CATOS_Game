/// @description Insert description here
// You can write your code in this editor

if alarm[0] > 0 exit;

obj_camera.follow = speakers[page];

if keyboard_check_pressed(vk_space){
	obj_joystick.alarm[0] = 30;
	if page < array_length_1d(text) - 1{
		page ++;
		counter = 0;

	}
	else{
		instance_destroy();
		////destroy itembox
		//instance_destroy(obj_show_item);
		
		////destroy puzzle object
		//instance_destroy(obj_puzzle);
	}
}
	
//show_debug_message(obj_player.state)
	
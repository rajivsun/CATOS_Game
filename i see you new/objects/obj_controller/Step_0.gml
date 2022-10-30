/// @description Insert description here
// You can write your code in this editor

if keyboard_check_pressed(ord("J")) && pause() != true{
	audio_play_sound(sd_interact,1,false);
	_pause = !_pause
	if _pause = 1 vk_k = virtual_key_add(640-1.5*100,320-1.5*70,1.5*200,1.5*140,ord("K"));
	if _pause = -1 virtual_key_delete(vk_k);
}
if _pause == 1 && keyboard_check_pressed(ord("K")){
	fadetoroom(rm_start,60,c_black,0,0);
	audio_play_sound(sd_interact,1,false);
}
		
switch room{
	
	case rm_home_pre:
	
		room_home_pre();
		break;
		
	case rm_homeF1:

		if obj_main.mode_bonus == 0{
		room_home();
		}
		break;
}

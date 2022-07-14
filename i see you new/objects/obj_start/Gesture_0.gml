/// @description Insert description here
// You can write your code in this editor

if obj_main.debug 
	fadetoroom(rm_homeF1,60,c_black,false,false);
else
	fadetoroom(rm_gamemode,60,c_black,false,false);
	//fadetoroom(rm_sewer,60,c_black,false,false);
	
obj_main.new_start = true;

audio_play_sound(sd_interact,1,false);
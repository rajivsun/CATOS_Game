/// @description Insert description here
// You can write your code in this editor

if file_exists("user.sav"){
	ini_open("user.sav");
	var rm = loadgame("main","chapter")
	ini_close();
	fadetoroom(rm,60,c_black,false,false);
	
	obj_main.new_start = false;
	
}

audio_play_sound(sd_interact,1,false);
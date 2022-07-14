/// @description Insert description here
// You can write your code in this editor

if room == rm_gamemode{

	if keyboard_check_pressed(ord("N")){
		audio_play_sound(sd_interact,1,0);
		fadetoroom(rm_start,60,c_black,false,false);
	}
}

if room == rm_difficulty{
	if keyboard_check_pressed(ord("M")){
		
		// play game
		audio_play_sound(sd_interact,1,0);
		if debug room_goto(rm_homeF1)
		else fadetoroom(rm_pre,120,c_white,false,false);
		if file_exists("user.sav") file_delete("user.sav");
	}
	
	if keyboard_check_pressed(ord("N")){
		audio_play_sound(sd_interact,1,0);
		fadetoroom(rm_gamemode,60,c_black,false,false);
	}
}

if room == rm_bonus{
	if keyboard_check_pressed(ord("M")){
		audio_play_sound(sd_interact,1,0);
		
		if mode_bonus == "tour" && hard_complete == true && bbportrait == true
		fadetoroom(rm_homeF1,60,c_black,false,false);
		
		if mode_bonus == "museum" {
			//if bbportrait instance_create_layer(343,343,obj_bbportrait)
			fadetoroom(rm_museum,60,c_black,0,0);
		}
	}
	
	if keyboard_check_pressed(ord("N"))
	{
		audio_play_sound(sd_interact,1,0);
		fadetoroom(rm_start,60,c_black,false,false);
	}
}

if room == rm_choosechapiter
{
	if keyboard_check_pressed(ord("N"))
	{
		audio_play_sound(sd_interact,1,0);
		fadetoroom(rm_start,60,c_black,false,false);
	}
}

if room == rm_options
{
	if keyboard_check_pressed(ord("N"))
	{
		audio_play_sound(sd_interact,1,0);
		fadetoroom(rm_start,60,c_black,false,false);
	}
}

/// @description Insert description here
// You can write your code in this editor

if obj_main.current_end == 0
{
	fadetoroom(rm_sewer,60,c_black,0,0);
}
else if obj_main.current_end == 1
{
	
}
audio_sound_gain(sd_endsong,0,2000);
audio_play_sound(sd_interact,1,false);
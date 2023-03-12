/// @description Insert description here
// You can write your code in this editor

if instance_exists(inst_head_police)
{
	if inst_head_police.x > 660 active = true;
}
if room == rm_METRO_STATION_QUAI
{
	
	if active == true
	{
		
		if alarm[0] <= 0 && !stopping
		{
			stopping = true;
			speed = -5;
			audio_play_sound(sd_train,99,false);
			audio_sound_gain(sd_train,0,0);
			audio_sound_gain(sd_train,1,3000);
		}
	
		if x <= 720 && stopping
		{
			
			speed = min(0,speed+0.04);
			if speed = 0
			{
				obj_train_door.open = true;
			}
		}
	}
}

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

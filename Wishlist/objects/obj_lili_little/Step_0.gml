/// @description Insert description here
// You can write your code in this editor


if room == rm_VILL_RIVER
{
	switch state 
	{
		case "run":
		
			hspeed = -0.5;	
			if x <= obj_player.x + 50 and interact == false
			{
				take_action(action);
				hspeed = 0;
				interact = true;
				state = "stop";
			}
			break
		
		case "stop":
		
			hspeed = 0;
			break
	}
}

else if room == rm_VILL_RIVER_123
{
	count_123 --;
	
	// checking movement
	if count_123 <= 0
	{
		if obj_player.hspd != 0
		{
			game_end();
		}
		image_xscale = -1;
		cd --;
		if cd <= 0
		{
			cd = 60;
			count_123 = 120;
		}
	}
	else
	{
		image_xscale = 1;
	}
}
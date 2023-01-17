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
	if !instance_exists(obj_failure) // if not lose the game
	{
		if !instance_exists(obj_text_bubble) // create the text bubble
		{
			instance_create_layer(x,y,"system",obj_text_bubble);
		}
		count_123 --;
	
		// checking movement
		if count_123 <= 0
		{
			if obj_player.hspd != 0 // if lili catch someone moving , the lose
			{
				if !instance_exists(obj_failure) instance_create_layer(x,y,"system",obj_failure);
			}
			image_xscale = -1;
			cd --;
			if cd <= 0
			{
				cd = 120;
				count_123 = 120;
			}
		}
		else
		{
			image_xscale = 1;
		}
	}
}
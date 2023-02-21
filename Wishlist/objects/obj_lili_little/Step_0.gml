/// @description Insert description here
// You can write your code in this editor


if room == rm_VILL_RIVER
{
	switch state 
	{
		case "start":
			sprite_index = spr_lili_little_tree
			image_speed = 0;
			break;
		
		case "idle":
			image_speed = 1;
			if image_index >= image_number-1
			{
				image_index = image_number-1;
				image_speed =0;
				state = "talk";
			}
			break;
			
		case "talk":
		
			//hspeed = -0.5;	
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

else if room == rm_VILL_RIVER_123 and game_start == true
{

	sprite_index = spr_lili_little;
	if !instance_exists(obj_failure) // if not lose the game
	{
		if obj_shaoda_little.x <= x 
		{
			show_result(false);
		}
		
		if obj_player.x <= x // if pass lili, then win
		{
			show_result(true);
		}
		
		else
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
					show_result(false);
				}
				image_xscale = 1;
				cd --;
				if cd <= 0
				{

					if obj_controller.game_123 == 1
					{
						
						count_123_dur = random_range(60,180);
						count_123 = count_123_dur;
						
					}
					else
					{
						count_123 = 120;
					}
					cd = 120;
				}
			}
			else
			{
				image_xscale = -1;
			}
		}
	}
}

if room == rm_VILL_RIVER_douji
{
	if interact == false
	{
		interact = true;
		take_action(action3);
	}
}
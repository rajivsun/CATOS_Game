/// @description Insert description here
// You can write your code in this editor


birb_ps = bird_id.birb_per_sec;
level = bird_id.level;


if level >= 0 and level <= 10 // baby bird
{
	sprite_index = spr_small;
}
else if level > 10 and level <= 20 // middle bird
{
	sprite_index = spr_middle;
}
else // when bird grow up
{
	switch state
	{
		case "idle":
			idle_count ++;
			sprite_index = spr_grand;
			if idle_count >= room_speed * random_range(7,9)
			{
				state = choose("switch","speak");
				idle_count = 0;
				dir = image_xscale;
			}
			break;
			
		case "switch":
			y -= 0.5;
			switch_count ++;
			if switch_count >= room_speed * 0.2
			{
				image_xscale = -dir;
				y += 1;
				if switch_count >= room_speed * 0.4
				{
					switch_count = 0;
					state = "idle";
				}
			}
			sprite_index = spr_wing;
			break;
			
		case "speak":
			idle_count ++;
			if idle_count >= room_speed * 2
			{
				idle_count = 0;
				state = "idle";
			}
			sprite_index = spr_speak;
			break;
			
	}
}


// click effect jump
if alarm[2] > 0
{
	y += 1;
}


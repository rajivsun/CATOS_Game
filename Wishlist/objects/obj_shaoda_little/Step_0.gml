/// @description Insert description here
// You can write your code in this editor
if room == rm_VILL_RIVER
{
	switch state 
	{
		case "run":
		
			hspeed = -0.5;
			if x <= obj_player.x + 68 and interact == false
			{
				take_action(action);
				hspeed = 0;
				interact = true;
				state = "stop";
			}
			break;
		
		case "stop":
	
			hspeed = 0;
			break
		
		case "idle":
			if enough_fish
			{
				txt[0] = 
				[
				["少达你看！",portrait.player_little],
				["我钓了这么多条鱼！",portrait.shaoda_little],
				["我的天哪！你咋这么厉害！",portrait.shaoda_little],
				["嘿嘿,我们现在来玩木头人吧！",portrait.player_little],
				["好嘞！",portrait.shaoda_little],
				[2,action2],
				]
			}
			break;
	}
}
else if room == rm_VILL_RIVER_123
{
	interactable = false;
	switch state
	{
		case "idle":
			hspeed = 0;
			sprite_index = spr_shaoda_little;
			if obj_lili_little.count_123 > 0 and obj_lili_little.game_start == true
			{
				state = "walk";
			}
			break;
			
		case "walk":
			if obj_controller.game_123 == 0
				hspeed = -0.3;		
			else hspeed = -0.4;
			sprite_index = spr_shaoda_little_walk
			if obj_lili_little.count_123 <= 0 state = "idle";
			break;
	}
}
else
{
	switch state
	{
		case "idle":
			sprite_index = spr_shaoda_little;
			interactable = false;
			break;
	}
}



/// @description Insert description here
// You can write your code in this editor

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



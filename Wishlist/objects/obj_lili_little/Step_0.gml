/// @description Insert description here
// You can write your code in this editor


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
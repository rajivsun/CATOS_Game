/// @description Insert description here
// You can write your code in this editor

switch state 
{
	case "run":
	
		hspeed = 0.5;
		if x >= obj_player.x and interact == false
		{
			take_action(action);
			hspeed = 0;
			interact = true;
			state = "stop";
		}	
		
		if x >= 300 and kid == false
		{
			obj_lili_little.state = "run";
			obj_shaoda_little.state = "run";
			kid = true;
		}
		
		break
	
	case "stop":
	
		hspeed = 0;
		break
}







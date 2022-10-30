/// @description Insert description here
// You can write your code in this editor

switch scene{
	case 0:
		if obj_player.y <= 1200 && obj_player.x<1000{
	
		take_action(action);	
		scene += 1;
	
		}
		break;
	
	case 1:
		if obj_player.x > 1000{
			take_action(action1_2);
			scene += 1;
		}
		break;
		
	case 2:
		if obj_player.x>1000 && obj_player.y <= 1300{
			take_action(action2);
			scene += 1;				
		}
		break;
}
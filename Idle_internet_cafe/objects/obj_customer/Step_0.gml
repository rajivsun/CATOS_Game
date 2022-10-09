/// @description Insert description here
// You can write your code in this editor


switch state
{
	case "to_reception":
	
		to_reception();
		break;
		
	case "wait_reception":
	
		wait_reception();
		break;
		
	case "to_pc":
	
		direction = point_direction(x,y,to_pc_id.x,to_pc_id.y);
		speed = 1;
		
		break;
		
	case "go_home":
	
		direction = 270;
		speed = 1;
		break;
}

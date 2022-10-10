/// @description Insert description here
// You can write your code in this editor



switch state
{

	case "to_reception":
	
		to_reception();
		break;
		
	case "wait_in_line":
		if obj_reception.list_customer[| 0] == id
		state = "wait_reception";
		
		break;
		
	case "wait_reception":
	
		wait_reception();
		break;
		
	case "to_pc":
		
		to_pc();
		break;
		
	case "go_home":
	
		direction = 270;
		speed = 1;
		break;
		
	case "playing_pc":
		
		playing_pc();
		break;
}

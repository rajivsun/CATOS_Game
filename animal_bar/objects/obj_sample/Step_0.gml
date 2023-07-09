/// @description Insert description here
// You can write your code in this editor


switch state
{
	case "idle":
		x = mouse_x;
		y = mouse_y;
		if place_meeting(x,y,obj_shaker_table)
		{
			if mouse_check_button_pressed(mb_left)
			{
				array_push(obj_shaker_table.ls_drinks,material);
				instance_destroy();
			}
		}
		break;
	
	case "pouring":
		
		
		break;
}

/// @description Insert description here
// You can write your code in this editor

y = obj_bar_table.y + dist;
x = obj_bar_table.x;


switch state
{
	case "mixing":
		if place_meeting(x,y,obj_sample)
		{
			y_offset = lerp(y_offset,-10,0.1);
			image_index = 1;
		}
		else 
		{
			y_offset = lerp(y_offset,0,0.1);
			image_index = 0;
		}
		
		break;
		
	case "finish":
		if collision_point(mouse_x,mouse_y,id,false,false)
		{	
			
			image_index = 1;
			if mouse_check_button_pressed(mb_any)
			{
				with obj_controller
				{
					make_drinks = false;
					if instance_exists(current_client)
						current_client.state = "drinking";
				}
				state = "mixing";
				ls_drinks = [];
				current_cocktail = -1;
			}
		}
		else 
		{

			image_index = 0;
		}
		break;
}


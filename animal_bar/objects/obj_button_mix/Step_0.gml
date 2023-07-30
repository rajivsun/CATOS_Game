/// @description Insert description here
// You can write your code in this editor

y = obj_bar_table.y + dist;
x = obj_bar_table.x - (obj_bar_table.xstart - xstart);

//show_debug_message(array_intersection(obj_shaker_table.all_drinks[0],obj_shaker_table.ls_drinks))

switch state
{
	case "idle":
		if collision_point(mouse_x,mouse_y,id,false,false)
		{
			image_index = 1;
			if mouse_check_button(mb_any)
			{
				image_index = 2;
				state = "mixing";
		
				with obj_shaker_table
				{
				//	state = "finish";
					var _get_right_drink = false;
					// if got the right drink
					for (var i=0;i<array_length(all_drinks);i++)
					{
						var _intersection = array_intersection(all_drinks[i],ls_drinks)
				
						if array_length(_intersection) == array_length(all_drinks[i])
						{
							//show_debug_message("yesssssssssss");
							other.spr_cocktail_to_draw = spr_cocktail_hands
							current_cocktail = i;	
							_get_right_drink = true;
							other.cocktail_name =obj_shaker_table.all_drinks_name[obj_shaker_table.current_cocktail][0];
							other.cocktail_description = other.all_cocktail_description[current_cocktail];
						}
					}
					// if dont get the right drink
					if _get_right_drink == false
					{
						other.spr_cocktail_to_draw = spr_cocktails_ugly;
						current_cocktail = 0;
						other.cocktail_name = other.bad_drinks_name[0];
						other.cocktail_description =  other.bad_drinks_description[0];
					}
				}
			}
		}
		else image_index = 0;
		break;
		
	case "mixing":
		if device_mouse_x_to_gui(0) > 180 and device_mouse_y_to_gui(0) > 220 and device_mouse_x_to_gui(0) < 310 
		and device_mouse_y_to_gui(0) < 300
		{
			if mouse_check_button(mb_left)
			{
				with obj_controller
				{
					make_drinks = false;
					if instance_exists(current_client)
						current_client.state = "drinking";

				}
				state = "idle";
				with obj_shaker_table
				{
					ls_drinks = [];
					current_cocktail = -1;
				}
			}
		}
		break;
}

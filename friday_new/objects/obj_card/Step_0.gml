/// @description Insert description here
// You can write your code in this editor

if obj_controller.state == "prepare"
{
	if type == "battle"
	{
		x = 250;
		y = 110;
		reveal = false;
	}
	else if type == "explore"
	{
		x = 50;
		y = 110;
		reveal = false;
	}
	else if type == "pirate"
	{
		reveal = true;
	}
}

else if obj_controller.state = "play"
{
	//if mouse_check_button_pressed(mb_any) if mouse
	//{
	//	var coll_obj = collision_point(mouse_x,mouse_y,obj_card,1,0);
	//	if coll_obj != noone
	//	{
	//		show_debug_message("haaaaaaaaaaaaaaaaaaaaaaaaaaaa")
	//		if coll_obj.type == "explore"
	//		{
				
	//			if id == obj_controller.ls_explorecards[| 0].id
	//			{
	//				x = 111;y = 93;
	//				show_debug_message("ssssssssssssssssssssssssss");
	//			}
	//		}
	//	}
	//}
}





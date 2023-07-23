/// @description Insert description here
// You can write your code in this editor

if ! destroying
{
	image_xscale = lerp(image_xscale,1,0.1);
	image_yscale = image_xscale;
	if obj_support.out == false
	{
		if object_get_parent(object_index) == obj_alcohol
		{
			x =  inst_support_1.x + dist;
		}
		if object_get_parent(object_index) == obj_liqueur
		{
			x =  inst_support_2.x + dist;
		}
		if object_get_parent(object_index) == obj_non_alcohol
		{
			x =  inst_support_3.x + dist;
		}
		if object_get_parent(object_index) == obj_season
		{
			y = obj_bar_table.y + dist;
			x = obj_bar_table.x - (obj_bar_table.xstart - xstart);
		}
	}

	else
	{
		//------------ dragging ------------
		if mouse_check_button_pressed(mb_left) 
		{
			//if collision_point(mouse_x,mouse_y,object_index,false,false) && click = false and obj_controller.dragging_item == noone
			//{
			//	if dragging == false
			//	{
			//		obj_controller.dragging_item = id;
			//		start_x = x;
			//		start_y = y;
			//		dragging = true;
			//		mouse_xprev = mouse_x;
			//		mouse_yprev = mouse_y;
			//		mouse_buff_x = mouse_x - x;
			//		mouse_buff_y = mouse_y - y;
					
			//	}
			//	click = true;
			//}
			if collision_point(mouse_x,mouse_y,object_index,false,false)
			{
				with instance_create_layer(mouse_x,mouse_y,"text",obj_sample)
				{
					material = other.object_index;
				}
			}
		}
	
		// release the mouse button
		//if mouse_check_button_released(mb_left) and id == obj_controller.dragging_item
		if mouse_check_button_pressed(mb_right) and id == obj_controller.dragging_item
		{
			if place_meeting(x,y,obj_shaker_table)
			{
				destroying = true;
				if obj_shaker_table.state == "mixing"
					array_push(obj_shaker_table.ls_drinks,object_index);
			}
			else
			{
				x = start_x;
				y = start_y;
				//instance_destroy();
			}
			dragging = false;
			click = false;
			obj_controller.dragging_item = noone;
		}
		
		if dragging == true and click == true
		{
			var dx = (mouse_x - mouse_xprev);
			var dy = (mouse_y - mouse_yprev);

			x += dx;
			y += dy;

			mouse_xprev = mouse_x;
			mouse_yprev = mouse_y;
		}
	}
}

else
{
	image_xscale -= 0.1;
	image_yscale = image_xscale;
	if image_xscale <= 0 
	{
		instance_destroy();
		instance_create_depth(start_x,start_y,initial_depth,object_index);
	}
}
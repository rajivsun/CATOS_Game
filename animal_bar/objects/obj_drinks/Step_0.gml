/// @description Insert description here
// You can write your code in this editor

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
		x =  inst_support_4.x + dist;
	}
}

else
{
	//------------ dragging ------------
	if mouse_check_button(mb_left) 
	{
		if collision_point(mouse_x,mouse_y,object_index,false,false) && click = false and obj_controller.dragging_item == noone
		{
			if dragging == false
			{
				obj_controller.dragging_item = id;
				start_x = x;
				start_y = y;
				dragging = true;
				mouse_xprev = mouse_x;
				mouse_yprev = mouse_y;
				mouse_buff_x = mouse_x - x;
				mouse_buff_y = mouse_y - y;
			}
			click = true;
		}
		
	}

	if mouse_check_button_released(mb_left) and id == obj_controller.dragging_item
	{
		dragging = false;
		click = false;
		x = start_x;
		y = start_y;
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
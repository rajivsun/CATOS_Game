/// @description Insert description here
// You can write your code in this editor


if mouse_check_button_pressed(mb_left) && obj_robot_cleaner.start = false
&& device_mouse_x_to_gui(0) <= border_x2 && device_mouse_x_to_gui(0) >= border_x1
&& device_mouse_y_to_gui(0) <= border_y2 && device_mouse_y_to_gui(0) >= border_y1
&& mark_left > 0
{
	mark_index ++;
	mark_left --;
	with instance_create_layer(mouse_x,mouse_y,"mark",obj_mark)
	{
		index = other.mark_index;
		other.mark_list[other.mark_index-1] = [mouse_x,mouse_y];
	}
}

if obj_robot_cleaner.finish == true
{
	if instance_number(obj_tache) <= 0
	{
		result = "win";
	}
	else
	{
		result = "lose";
	}
}
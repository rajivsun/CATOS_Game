/// @description Insert description here
// You can write your code in this editor

x = obj_camera.x - (obj_camera.view_w_half - xstart);

if show_ui == true and obj_button_mix.state != "mixing"
{
	y_to = lerp(y_to,y_to_final,0.2);
	if keyboard_check_pressed(vk_escape)
	{
		show_ui = false;
	}
}
else
{
	y_to = lerp(y_to,540,0.2);
}

// scrolling through the characters
if mouse_collision(15,380,10,500)
{
	if mouse_wheel_down() and current_npc_index < array_length(character_list)-4
	{
		current_npc_index ++;
	}
	if mouse_wheel_up() and current_npc_index > 0
	{
		current_npc_index --;
	}
	
}

// change pages
if mouse_check_button_pressed(mb_left)
{
	if mouse_collision(345,380,155,210)
	{
		page = 1;
	}
	else if mouse_collision(345,380,92,155)
	{
		page = 0;
	}
}

/// @description Insert description here
// You can write your code in this editor

y = obj_bar_table.y + dist;

if collision_point(mouse_x,mouse_y,id,false,false)
{
	image_index = 1;
	if mouse_check_button(mb_any)
		image_index = 2;
}
else image_index = 0;
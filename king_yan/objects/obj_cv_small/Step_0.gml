/// @description Insert description here
// You can write your code in this editor

//------------ dragging ------------
if mouse_check_button(mb_left)
{
	if check_mouse_in_paper() && click = false
	{
		if dragging == false
		{
			dragging = true;
			mouse_xprev = mouse_x;
			mouse_yprev = mouse_y;
			mouse_buff_x = mouse_x - x;
			mouse_buff_y = mouse_y - y;
			
		}
	}
	click = true;
}

if mouse_check_button_released(mb_left)
{
	dragging = false;
	click = false;
}

if dragging == true and click == true
{
	var dx = (mouse_x - mouse_xprev);
	var dy = (mouse_y - mouse_yprev);

	x += dx;
	y += dy;

	mouse_xprev = mouse_x;
	mouse_yprev = mouse_y;
	if mouse_x > border
	{
		with instance_create_layer(mouse_x,mouse_y,"papers",obj_cv_big)
		{
			dragging = true;
		}
		instance_destroy();
	}
}

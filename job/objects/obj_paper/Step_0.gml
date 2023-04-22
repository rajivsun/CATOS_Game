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
}

// ----------- size changing -------------
//if x >= 0 and x <= 48
//{
//	image_xscale = scale_small;
//	image_yscale = image_xscale;
//}
//else
//{
//	image_xscale = scale_big;
//	image_yscale = image_xscale;
//}


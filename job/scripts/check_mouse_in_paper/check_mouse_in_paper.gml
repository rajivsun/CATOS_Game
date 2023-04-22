// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function check_mouse_in_paper()
{
	var draw_width = (border - x)/image_xscale;
	
	// when paper is in the left
	if x <= border - spr_width * scale_small
	{
		if mouse_x >= x and mouse_x <= x + spr_width*scale_small and mouse_y >= y and mouse_y <= y + spr_height*scale_small
			return true
	}
	// when paper is in the right
	else if x >= border
	{
		if mouse_x >= x and mouse_x <= x + spr_width*scale_big and mouse_y >= y and mouse_y <= y + spr_height*scale_big
			return true		
	}
	// when paper is in between
	else
	{
		if mouse_x >= x and mouse_x <= border and mouse_y >= y and mouse_y <= y + spr_height*scale_small
			return true		
		if mouse_x >= border and mouse_x <= border + (spr_width - draw_width)*scale_big and mouse_y >= y and mouse_y <= y + spr_height*scale_big
			return true		
	}
	
		
}
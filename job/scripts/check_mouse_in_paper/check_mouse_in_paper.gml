// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function check_mouse_in_paper(_side="left")
{
	var draw_width = (border - x + spr_width/2);
	
	// when paper is in the left or in the right
	if x  <= border - spr_width/2 or x >= border + spr_width/2*image_xscale
	{
		if collision_point(mouse_x,mouse_y,id,true,false) return true
	}
	
	// when paper is in between
	else
	{
		if _side == "left"
		{
			if mouse_x >= x - spr_width/2 and mouse_x <= border and mouse_y >= y - spr_height/2 *image_yscale and mouse_y <= y + spr_height/2 *image_yscale
				return true		
		}
		else if _side == "right"
		{
			if mouse_x >= border and mouse_x <= border + (spr_width - draw_width)*image_xscale and mouse_y >= y - spr_height/2*image_yscale and mouse_y <= y + spr_height/2*image_yscale
				return true		
		}
	}
	
		
}
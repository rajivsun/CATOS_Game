/// @description Insert description here
// You can write your code in this editor



if obj_controller.make_drinks == false
{
	draw_self();
	if collision_point(mouse_x,mouse_y,object_index,false,false)
	{
		//image_angle += 1;
		depth = -999;
		outline_draw(shader_outlineW);
		if mouse_check_button_pressed(mb_left)
		{
			//show_platine = true;
		}
		
	}
	else
		depth = initial_depth;
}
else
{
	//image_angle = 0;
	depth = initial_depth;
}



/// @description Insert description here
// You can write your code in this editor

draw_self();

if obj_controller.make_drinks == false
{
	if collision_point(mouse_x,mouse_y,object_index,false,false)
	{
		//image_angle += 1;
		depth = -999;
		outline_draw(shader_outlineW);
	}
	else
		depth = initial_depth;
}
else
{
	//image_angle = 0;
	depth = initial_depth;
}
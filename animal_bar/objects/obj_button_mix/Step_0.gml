/// @description Insert description here
// You can write your code in this editor

y = obj_bar_table.y + dist;
x = obj_bar_table.x - (obj_bar_table.xstart - xstart);

//show_debug_message(array_intersection(obj_shaker_table.all_drinks[0],obj_shaker_table.ls_drinks))
if collision_point(mouse_x,mouse_y,id,false,false)
{
	image_index = 1;
	if mouse_check_button(mb_any)
	{
		image_index = 2;	
		
		//with obj_shaker_table
		//{
		//	state = "finish";
		//	for (var i=0;i<array_length(all_drinks);i++)
		//	{
		//		var _intersection = array_intersection(all_drinks[i],ls_drinks)
				
		//		if array_length(_intersection) == array_length(all_drinks[i])
		//		{
		//			show_debug_message("yesssssssssss");
		//			current_cocktail = i;					
		//		}
		//	}
		//}
	}
}
else image_index = 0;
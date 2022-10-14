// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function to_reception(){
	//speed = 1;
	//direction = point_direction(x,y,obj_reception.wait_spot_x,obj_reception.wait_spot_y);
	//if point_distance(x,y,obj_reception.x,obj_reception.wait_spot_y) <= 2
	//{
	//	speed = 0;
	//	ds_list_add(obj_reception.list_customer,id);
		
	//	state = "wait_in_line";

	//}
	
	if path_position == 1
	{
		path_speed = 0;
		speed = 1;
		direction = point_direction(x,y,obj_reception.wait_spot_x,obj_reception.wait_spot_y);
		if point_distance(x,y,obj_reception.x,obj_reception.wait_spot_y) <= 2
		{
			speed = 0;
			ds_list_add(obj_reception.list_customer,id);
		
			state = "wait_in_line";
		}
	}
}
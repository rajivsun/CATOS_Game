// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function to_reception(){
	speed = 1;
	direction = point_direction(x,y,obj_reception.x,obj_reception.y+100);
	if point_distance(x,y,obj_reception.x,obj_reception.y+100) <= 2
	{
		speed = 0;
		state = "wait_reception";
	}
}
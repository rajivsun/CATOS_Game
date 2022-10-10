// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function to_pc(){
	
	direction = point_direction(x,y,to_pc_id.x,to_pc_id.y);
	speed = 1;
	if point_distance(x,y,to_pc_id.x,to_pc_id.y) <= 2
	{
		speed = 0;
		state = "playing_pc";
		to_pc_id.active = true;
		
	}
		
}
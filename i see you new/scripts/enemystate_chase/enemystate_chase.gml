// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function enemystate_chase(){
	
	_count1 = 0;
	_count2 = 0;
	_count3 = 0;
	
	if(!pathRun)
	{
		if mp_grid_path(global.grid,path,x,y,xTo,yTo,true)
		{
			path_start(path,speedwalk*2,path_action_stop,false);
			pathRun = true;
		}
	}
	
	//image_angle = direction;
	
	//when path ends
	if path_position >= 1
	{
		pathRun = false;
		state = "free";
		alarm[1] = room_speed * random_range(1,2); // switch to alarm state
	}
	
	if instance_exists(follow)
	{
		if distance_to_object(follow) >= 900
		{
			state = "free";
			pathRun = false;
			alarm[1] = room_speed * random_range(1,2); // switch to alarm state
		}
	}
}
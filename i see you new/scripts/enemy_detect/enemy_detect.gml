// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function enemy_detect(){
	
	if state == "attack" or state = "cd" 
	or distance_to_object(follow) >= 800 
	exit;
	
	see_player = false;
	var add_angle = 20;
	var angle_dir = 1;
	var dir = direction;
	
	for (var rays = 0;rays <= ray_count; rays ++){
		for(var line_length = 0; line_length < ray_length;line_length+=7){
			var xx = x + lengthdir_x(line_length,dir);
			var yy = y + lengthdir_y(line_length,dir);		

			if position_meeting(xx,yy,obj_wallsmall) == true 
			{
				break;
			}
			if obj_main.mode == 0{
				if position_meeting(xx,yy,obj_door) == true 
				{
					if instance_position(xx,yy,obj_door).state == "close"
					break;
				}
			}
			else{}
		
			if position_meeting(xx,yy,follow) == true {

				//if follow.state != "hide"{
					xTo = xx;
					yTo = yy;
					state = "chase";				
					see_player = true;
					pathRun = false;
				//}
				exit;
			}
		
		}
	
		dir += (add_angle * rays) * angle_dir;
		angle_dir *= -1;
	}

}
/// @description Insert description here
// You can write your code in this editor

if state == 0{
	
	timer ++;
	
	if timer >= duration{
			
		room_goto(targetroom);

		if instance_exists(obj_player){
			obj_camera.x = obj_player.x;
			obj_camera.y = obj_player.y;
		}
				
		if instance_exists(obj_cutscene) {
			with obj_cutscene end_scene();
		}
		
		state = 0.5;
		//if duration = 0 {
		//	state = 0.5;
		//	timer = 180;
		//}
	}
}
else if state == 0.5{
	timer2 --;
	if timer2 <= 0{
		timer2 = 120;
		state = 1;
	}
}
	
else if state == 1{
	
	timer --;
	
	if timer <= 0{
		instance_destroy();
	}
}

if room == targetroom
{
	if object_to_move != false
	{
		object_to_move.x = object_x;
		object_to_move.y = object_y;
	}				
}

if duration == 0 alpha = timer/180;
else alpha = timer / duration;


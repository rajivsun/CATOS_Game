/// @description Insert description here
// You can write your code in this editor


if state == 0{
	
	timer ++;
	
	if timer >= duration{
		
		if dest_x != false && dest_y != false{
			obj_player.x = dest_x;
			obj_player.y = dest_y;
		}
		
		if room != targetroom
		room_goto(targetroom);
		
		else {
			if instance_exists(obj_player){
				obj_camera.x = obj_player.x;
				obj_camera.y = obj_player.y;
			}
		}
		
		if instance_exists(obj_cutscene) {
			with obj_cutscene end_scene();
		}
		state = 1;
		if duration = 0 {
			state = 0.5;
			timer = 180;
		}
	}
}
else if state == 0.5{
	timer2 --;
	if timer2 <= 0{
		timer2 = 300;
		state = 1;
	}
}
	
else if state == 1{
	
	timer --;
	
	if timer <= 0{
		
		instance_destroy();

	}
}

if duration == 0 alpha = timer/180;
else alpha = timer / duration;
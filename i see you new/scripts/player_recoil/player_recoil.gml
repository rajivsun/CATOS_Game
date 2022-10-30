// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function player_recoil(){
	if recoil{
		image_speed = 1;
		input_direction = point_direction(0,0,keyright-keyleft,keydown-keyup);
		input_magnitude = abs(keyright - keyleft) or abs(keydown - keyup);
		if instance_exists(obj_joystick){
			if obj_joystick.move{
				input_direction = obj_joystick.dirtofinger;
				input_magnitude = speedwalk;
			}
		}

		hs = lengthdir_x(input_magnitude * speedwalk ,input_direction);
		vs = lengthdir_y(input_magnitude * speedwalk,input_direction);
	
		//collision with concrete	
		var _list = ds_list_create();
		var _num = instance_place_list(x+hs, y, obj_concrete, _list, false);
		if _num > 0{
			for (var i = 0; i < _num; ++i;){
			    with(_list[| i]){	
					if object_get_parent(_list[| i].object_index) == obj_door{
						if _list[| i].state == "close"
					
						other.hs = 0;
					}
					else other.hs = 0;
				}			
			}
		}
		ds_list_destroy(_list);
	
		var _list = ds_list_create();
		var _num = instance_place_list(x, y+vs, obj_concrete, _list, false);
		if _num > 0{
		    for (var i = 0; i < _num; ++i;){
		        with(_list[| i]){
					if object_get_parent(_list[| i].object_index) == obj_door{
					
						if _list[| i].state == "close"
						other.vs = 0;
					}
					else other.vs = 0;
				}			
		    }
		}
		ds_list_destroy(_list);
	
		//if place_meeting(x,y,obj_stairs){
		//	hs = lengthdir_x(input_magnitude * speedwalk ,input_direction);
		//	vs = 0;
		
		//}
	
		x += hs;
		y += vs;
	

		//// animation 
		//if hs != 0 or vs != 0{
		//	//image_speed = 1;
		//	var dir = input_direction;
		//	if (dir >= 0 and dir <= 45) or (dir >= 315 and dir <= 360){
		//		sprite_index = sprRR; face = 0;
		//	}
		//	if dir > 45 and dir < 135{
		//		sprite_index = sprRU; face = 1;
		//	}
		//	if dir >= 135 and dir <= 225{
		//		sprite_index = sprRL; face = 2;
		//	}
		//	if dir > 225 and dir < 315{
		//		sprite_index = sprRD; face = 3;
		//	}
		
		//	// footprint
		//	if !walking{
		//		walking = true;
		//		alarm[0] = 0.5 * room_speed;
		//	}
		
		//	if !walking2{
		//		walking2 = true;
		//		alarm[1] = 30;
		//	}

		//}
		//// standing still
		//else {
		//	if face == 0 sprite_index = sprR;
		//	if face == 1 sprite_index = sprU;
		//	if face == 2 sprite_index = sprL;
		//	if face == 3 sprite_index = sprD;
		//}
		return true
	}
}
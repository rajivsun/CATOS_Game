// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function player_shooting(){
	//shooting = false;
	if obj_joystick.r = 300 && weapon!=0{
		//shooting = true;
		
		#region movement
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
	
		x += hs*0.5;
		y += vs*0.5;
	

		
		// animation 
		if hs != 0 or vs != 0{
			//image_speed = 1;
			var dir = obj_joystick.dirtofinger2;
			if  (dir >= 0 and dir <= 22.5) or  (dir >=337.5 && dir <= 360){
				sprite_index = sprRRS; face = 0
			}
			if dir >22.5 and dir <= 67.5{
				sprite_index = sprRURS; face = 1;
			}
			if dir > 67.5 and dir < 112.5{
				sprite_index = sprRUS; face = 1;
			}
			if dir >112.5 and dir <=157.5{
				sprite_index = sprRULS;face = 1;
			}
			if dir >157.5 and dir <=202.5{
				sprite_index = sprRLS;face = 2;
			}
			if dir >202.5 and dir <=247.5{
				sprite_index = sprRDLS;face = 3;
			}
			if dir >247.5 and dir <=292.5{
				sprite_index = sprRDS;face = 3;
			}
			if dir >= 292.5 and dir <= 337.5{
				sprite_index = sprRDRS; face = 3;
			}
		
			// footprint
			if !walking{
				walking = true;
				alarm[0] = 0.5 * room_speed;
			}

		}
		// standing still
		else{
			var dir = obj_joystick.dirtofinger2;
			if  (dir >= 0 and dir <= 22.5) or  (dir >=337.5 && dir <= 360){
				sprite_index = sprRS; face = 0
			}
			if dir >22.5 and dir <= 67.5{
				sprite_index = sprURS; face = 1;
			}
			if dir > 67.5 and dir < 112.5{
				sprite_index = sprUS; face = 1;
			}
			if dir >112.5 and dir <=157.5{
				sprite_index = sprULS;face = 1;
			}
			if dir >157.5 and dir <=202.5{
				sprite_index = sprLS;face = 2;
			}
			if dir >202.5 and dir <=247.5{
				sprite_index = sprDLS;face = 3;
			}
			if dir >247.5 and dir <=292.5{
				sprite_index = sprDS;face = 3;
			}
			if dir >= 292.5 and dir <= 337.5{
				sprite_index = sprDRS; face = 3;
			}

		}	
		
		#endregion
		
		return true	
	}
	else return false
}
// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function make_visible(){
	///----------------visibility-----------------------
	//if global.debug exit;
	
	//make all furniture visible
	var _list = ds_list_create();
	var _num = collision_circle_list(x, y, detection_range*1.5, obj_furniture, false, true, _list, false);
	if (_num > 0){
			
		for (var i = 0; i < _num; ++i;){
		    with(_list[| i]){
				if  y > obj_player.y 
					var dest_alpha = 0.9;
				else dest_alpha = 1;
				
				if !collision_line(obj_player.x,obj_player.y,x,y,obj_wallsmall,0,0)
				image_alpha = min(dest_alpha,image_alpha + 2/60);				
			}
		}
	}	
	ds_list_destroy(_list);
	
	//make door visible
	var _list = ds_list_create();
	var _num = collision_circle_list(x, y, detection_range, obj_door, false, true, _list, false);
	if (_num > 0){
			
		for (var i = 0; i < _num; ++i;){
		    with(_list[| i]){
				if  y > obj_player.y 
					var dest_alpha = 0.6;
				else dest_alpha = 1;
				
				if !collision_line(obj_player.x,obj_player.y,x,y,obj_wallsmall,0,0)
				image_alpha = min(dest_alpha,image_alpha + 2/60);					
			}
		}
	}
	ds_list_destroy(_list);
	
	//make items visible
	var _list = ds_list_create();
	var _num = collision_circle_list(x, y, detection_range, obj_item, false, true, _list, false);
	if (_num > 0){
		for (var i = 0; i < _num; ++i;){
		    with(_list[| i]){
				if !collision_line(obj_player.x,obj_player.y,x,y,obj_wallsmall,0,0)
				image_alpha = min(1,image_alpha + 2/60);	
			}
		}
	}			
	ds_list_destroy(_list);
	
	//make stairs visible
	var _list = ds_list_create();
	var _num = collision_circle_list(x, y, detection_range*1.5, obj_stairs, false, true, _list, false);
	if (_num > 0){
			
		for (var i = 0; i < _num; ++i;){
		    with(_list[| i]){
				if  y > obj_player.y 
					var dest_alpha = 0.9*alpha;
				else dest_alpha = 1*alpha;
				
				if !collision_line(obj_player.x,obj_player.y,x,y,obj_wallsmall,0,0)
				image_alpha = min(dest_alpha,image_alpha + 2/60);				
			}
		}
	}	
	ds_list_destroy(_list);
		
	//make ground visible
	var _list = ds_list_create();
	var _num = collision_circle_list(x, y, detection_range*0.5, obj_ground, false, true, _list, false);
	if (_num > 0){
		for (var i = 0; i < _num; ++i;){
		    with(_list[| i]){
				image_alpha = min(1,image_alpha + 2/60);	
			}
		}
	}			
	ds_list_destroy(_list);
	
	////make the wall invisible
	//var _list = ds_list_create();
	//var _num = collision_circle_list(x, y, 12, obj_wall, false, true, _list, false);
	//if (_num > 0){
			
	//	for (var i = 0; i < _num; ++i;){
	//	    with(_list[| i]){
	//			image_alpha = max(0,image_alpha - 2/60);				
	//		}
	//	}
	//}
	
	//ds_list_destroy(_list);

}
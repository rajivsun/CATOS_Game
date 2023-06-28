// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function fadetoroom(_targetroom,_duration,_color,_dest_x,_dest_y){
	if !instance_exists(obj_fade){
		with instance_create_depth(0,0,-9999,obj_fade){
			targetroom = _targetroom;
			duration = _duration;
			color = _color;
			dest_x = _dest_x;
			dest_y = _dest_y;
		}	
	}
}
// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function fade(_room,_duration,_color=c_black,_id=0,_x=0,_y=0){
	if !instance_exists(obj_fade){
		with instance_create_depth(0,0,-9999,obj_fade){
			
			object_to_move = _id;
			object_x = _x;
			object_y = _y;
			targetroom = _room;
			duration = _duration;
			color = _color;
		}	
	}
}


function fade_in(_duration,_color)
{
	if !instance_exists(obj_fade_seperate)
	{
		with instance_create_depth(0,0,-9999,obj_fade_seperate)
		{
			duration = _duration;
			color = _color
		}
	}
}

function fade_out(_duration,_color)
{
	with obj_fade_seperate
	{
		state = 1;
	}	
}
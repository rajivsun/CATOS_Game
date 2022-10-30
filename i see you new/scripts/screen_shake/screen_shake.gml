// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function screen_shake(argument0,argument1){
	with obj_camera{
		if argument0 > shake_remain{
			shake_magnitude = argument0;
			shake_remain = argument0;
			shake_length = argument1;
		}
	}
	if instance_exists(obj_cutscene) with obj_cutscene {end_scene()}

}

function screen_shake_lite(_remain,_length)
{
	with obj_camera{
		if argument0 > shake_remain{
			shake_magnitude = argument0;
			shake_remain = argument0;
			shake_length = argument1;
		}
	}
}

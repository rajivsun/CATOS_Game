// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function screen_shake(_length = 5,_magnitude=10){
	with obj_camera
	{
		shake_length = _length;
		shake_magnitude = _magnitude;
		shake_remain = _length;
	}
}
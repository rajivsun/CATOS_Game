// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function player_scan_world(_obj){

	if mouse_check_button_pressed(mb_left)
	{
		if !instance_exists(obj_hack_UI)
		{
			instance_create_depth(x,y,-999,_obj);
		}
	}

}
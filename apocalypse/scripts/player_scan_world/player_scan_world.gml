// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function player_scan_world(_obj){

	//if mouse_check_button_pressed(mb_left)
	//{
	//	if !instance_exists(obj_hack_UI)
	//	{
	//		instance_create_depth(x,y,-999,_obj);
	//	}
	//}
	if keyboard_check_pressed(ord("E"))
	{
		if !instance_exists(obj_hack_UI)
		{
			instance_create_depth(x,y,-999,_obj);
		}
	}
}

function player_scan_world_pre()
{
	if keyboard_check_pressed(ord("E"))
	{
		if !instance_exists(obj_hack_UI_pre)
		{
			instance_create_depth(x,y,-999,obj_hack_UI_pre);
		}
	}	
}
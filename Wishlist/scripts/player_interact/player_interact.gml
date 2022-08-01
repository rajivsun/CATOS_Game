// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function player_interact(){
	
	// NPC
	var _list = ds_list_create();
	var _num = instance_place_list(x, y, obj_NPC, _list, false);
	if _num > 0
	{
	    for (var i = 0; i < _num; ++i;)
	    {
	        if _list[| i].interactable == true and !instance_exists(obj_textbox) 
			and _list[| i] == nearest
			{
				create_textbox(_list[| i].txt,0);
				//_list[| i].talk_sign_show = true;
			}
	    }
	}
	ds_list_destroy(_list);
	
	// home door
	var _list = ds_list_create();
	var _num = instance_place_list(x, y, obj_door, _list, false);
	if _num > 0
	{
	    for (var i = 0; i < _num; ++i;)
	    {
	        if !instance_exists(obj_textbox) 
			and _list[| i] == nearest and _list[| i].interactable == true
			{	
				script_execute(door_interact,_list[| i]);
			}
	    }
	}
	ds_list_destroy(_list);
	
	// normal door
	var _list = ds_list_create();
	var _num = instance_place_list(x, y, obj_normal_door, _list, false);
	if _num > 0
	{
	    for (var i = 0; i < _num; ++i;)
	    {
	        if !instance_exists(obj_textbox) 
			and _list[| i] == nearest and _list[| i].interactable == true
			{
				if _list[| i].object_index == obj_elevator_skycraper 
					fade(_list[| i].room_go_to,120,c_black,obj_player,80,105);
				else
					fade(_list[| i].room_go_to,60,c_black,obj_player,80,105);
				
				//script_execute(door_interact,_list[| i]);
			}
	    }
	}
	ds_list_destroy(_list);
	
	//interactable object
	var _list = ds_list_create();
	var _num = instance_place_list(x, y, obj_robotcleaner_terminal, _list, false);
	if _num > 0
	{
	    for (var i = 0; i < _num; ++i;)
	    {
	        if !instance_exists(obj_textbox) 
			and _list[| i] == nearest and _list[| i].interactable == true
			{
				fade(rm_ROBOT_CLEANER,30,c_black,0,0,0);

			}
	    }
	}
	ds_list_destroy(_list);
}
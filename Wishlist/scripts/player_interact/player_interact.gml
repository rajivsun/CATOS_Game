// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function player_interact(){
	
	// NPC
	#region
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
	#endregion
	
	// home door
	#region
	var _list = ds_list_create();
	var _num = instance_place_list(x, y, obj_door, _list, false);
	if _num > 0
	{
	    for (var i = 0; i < _num; ++i;)
	    {
	        
			if _list[| i] == nearest and _list[| i].interactable == true
			{	
				script_execute(door_interact,_list[| i]);
			}
	    }
	}
	ds_list_destroy(_list);
	#endregion
	
	// normal door
	#region
	var _list = ds_list_create();
	var _num = instance_place_list(x, y, obj_normal_door, _list, false);
	if _num > 0
	{
	    for (var i = 0; i < _num; ++i;)
	    {
	        
			if _list[| i] == nearest and _list[| i].interactable == true
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
	#endregion
	
	// robotcleaner terminal object
	#region
	var _list = ds_list_create();
	var _num = instance_place_list(x, y, obj_lifter, _list, false);
	if _num > 0
	{
	    for (var i = 0; i < _num; ++i;)
	    {
	        
			if _list[| i] == nearest and _list[| i].interactable == true
			{
				//fade(rm_ROBOT_CLEANER,30,c_black,0,0,0);
				if !instance_exists(obj_robotcleaner_terminal_UI)
				{
					instance_create_layer(0,0,"player",obj_robotcleaner_terminal_UI);
				}
			}
	    }
	}
	ds_list_destroy(_list);
	#endregion
	
	// metro door
	#region
	var _list = ds_list_create();
	var _num = instance_place_list(x, y, obj_door_train, _list, false);
	if _num > 0
	{
	    for (var i = 0; i < _num; ++i;)
	    {
	        
			if _list[| i] == nearest and _list[| i].interactable == true
			{
				if obj_controller_metro.blackout == true
				{
					if _list[| i].state == "close"
					{
						if !instance_exists(obj_terminal_UI_train_door)
						{
						
							instance_create_layer(0,0,"system",obj_terminal_UI_train_door);
						}
					}
					else if _list[| i].state == "open"
					{
						fade(rm_METRO_STATION,30,c_black,obj_player,213,156);
					}
				}
			}
	    }
	}
	ds_list_destroy(_list);
	#endregion
	
	// generator
	#region
	var _list = ds_list_create();
	var _num = instance_place_list(x, y, obj_generator, _list, false);
	if _num > 0
	{
	    for (var i = 0; i < _num; ++i;)
	    {
	        
			if _list[| i] == nearest and _list[| i].interactable == true
			{
				if !instance_exists(obj_generator_UI){
					instance_create_layer(x,y,"system",obj_generator_UI);
				}
			}
	    }
	}
	ds_list_destroy(_list);
	#endregion
	
	// terminal metro station
	#region
	var _list = ds_list_create();
	var _num = instance_place_list(x, y, obj_terminal_metro_station, _list, false);
	if _num > 0
	{
	    for (var i = 0; i < _num; ++i;)
	    {
	        
			if _list[| i] == nearest and _list[| i].interactable == true
			{
				if !instance_exists(obj_terminal_metro_station_UI){
					instance_create_layer(x,y,"system",obj_terminal_metro_station_UI);
				}
			}
	    }
	}
	ds_list_destroy(_list);
	#endregion	
	
	// elevator bar
	#region
	var _list = ds_list_create();
	var _num = instance_place_list(x, y, obj_elevator, _list, false);
	if _num > 0
	{
	    for (var i = 0; i < _num; ++i;)
	    {
			if _list[| i] == nearest and _list[| i].interactable == true
			{
				obj_elevator.start = true;
			}
	    }
	}
	ds_list_destroy(_list);
	#endregion	
	
	// secret room terminal
	#region
	var _list = ds_list_create();
	var _num = instance_place_list(x, y, obj_terminal_secretroom,_list, false);
	if _num > 0
	{
	    for (var i = 0; i < _num; ++i;)
	    {
			if _list[| i] == nearest and _list[| i].interactable == true
			{
				obj_controller_secretroom.displayon = true;
			}
	    }
	}
	ds_list_destroy(_list);
	#endregion		
}
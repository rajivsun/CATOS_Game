// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function general_room_setup(){
	
	button_y = 940;
	
	if game_mode == "mobile"
	{
		key_left = virtual_key_add(100,button_y-100,200,200,vk_left);
		key_right = virtual_key_add(400,button_y-100,200,200,vk_right);
		key_e = virtual_key_add(1800,800,200,200,ord("E"));
		key_shift = virtual_key_add(1300,button_y,100,100,vk_shift);
	}

	instance_create_depth(0,0,-9999,obj_cursor);
	window_set_cursor(cr_none);

}
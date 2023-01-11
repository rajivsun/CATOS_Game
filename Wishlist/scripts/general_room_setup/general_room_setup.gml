// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function general_room_setup(){
	
	button_y = 940;
	
	key_left = virtual_key_add(20,button_y,300,100,vk_left);
	key_right = virtual_key_add(408,button_y,300,100,vk_right);
	key_e = virtual_key_add(1800,button_y,100,100,ord("E"));
	key_space = virtual_key_add(1500,button_y,100,100,vk_space);
	key_shift = virtual_key_add(1300,button_y,100,100,vk_shift);

	//virtual_key_show(key_left);
	//virtual_key_show(key_right);

	instance_create_depth(0,0,-9999,obj_cursor);

}
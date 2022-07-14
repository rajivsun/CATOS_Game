/// @description Insert description here
// You can write your code in this editor

if room == rm_home_pre exit;

if pause() exit;
if keyboard_check_pressed(vk_escape) && check_key == true{
	audio_play_sound(sd_click,1,0);virtual_key_delete(vk_esc)
	show_inventory = false;m_slotx = 99;m_sloty = 99;check_key = false;
}

if keyboard_check_pressed(vk_tab) && !obj_joystick.ready{
	show_inventory = !show_inventory;
	if show_inventory == false check_key = false;
	audio_play_sound(sd_click,1,0);	m_slotx = 99;m_sloty = 99;
}

if !show_inventory exit;
mousex = device_mouse_x_to_gui(0);
mousey = device_mouse_y_to_gui(0);

//----------------- bag --------------
if category = 0{
	var cell_xbuff = (cell_size + x_buffer) * scale;
	var cell_ybuff = (cell_size + y_buffer) * scale;

	var i_mousex = mousex - slot_x;
	var i_mousey = mousey - slot_y;

	var nx = i_mousex div cell_xbuff;
	var ny = i_mousey div cell_ybuff;

	if nx >= 0 and nx < inv_slot_width and ny >= 0 and ny < inv_slot_height
	&& i_mousex >0 && i_mousey > 0{
		m_slotx = nx;
		m_sloty = ny;
	}
	else{
		m_slotx = -99;
		m_sloty = -99;
	}
	selected_slot = m_slotx + (m_sloty * inv_slot_width);

	if mouse_check_button_pressed(mb_left)
	and (nx >= 0 and nx < inv_slot_width and ny >= 0 and ny < inv_slot_height){
		picked_slot = selected_slot;
		//audio_play_sound(sd_click,1,0);
	}
}
	
//------------ weapon ----------------
if category == 1{
	var cell_xbuff = (150);
	var cell_ybuff = (cell_size + y_buffer) * scale;

	var i_mousex = mousex - w_slot1x;
	var i_mousey = mousey - w_slot1y;

	var nx = i_mousex div cell_xbuff;
	var ny = i_mousey div cell_ybuff;

	if nx >= 0 and nx < 2 && ny >= 0 && ny < 1
	&& i_mousex >0 && i_mousey > 0{
		m_slotx = nx;
		m_sloty = ny;
	}
	else{
		m_slotx = -99;
		m_sloty = -99;
	}
	selected_slot = m_slotx + (m_sloty * inv_slot_width);

	if mouse_check_button_pressed(mb_left) && nx >= 0 and nx < 2 && ny >= 0 && ny < 1{
		picked_slot = selected_slot;
		//audio_play_sound(sd_click,1,0);
	}
}

if check_key == false{
	if keyboard_check_pressed(vk_numpad0) {category = 0; 	audio_play_sound(sd_click,1,0);}
	if keyboard_check_pressed(vk_numpad1) {category = 1; 	audio_play_sound(sd_click,1,0);}
	if keyboard_check_pressed(vk_numpad2) {category = 2; 	audio_play_sound(sd_click,1,0);}
	if keyboard_check_pressed(vk_numpad3) {category = 3; 	audio_play_sound(sd_click,1,0);}
	if keyboard_check_pressed(vk_numpad4) {category = 4; 	audio_play_sound(sd_click,1,0);}
	if keyboard_check_pressed(vk_pageup) current_page =min(ds_list_size(journal)-1,current_page+1);
	if keyboard_check_pressed(vk_pagedown) current_page = max(0,current_page-1);	
}



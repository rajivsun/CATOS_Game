/// @description Insert description here
// You can write your code in this editor

if room == rm_home_pre exit;
if pause() exit;

if !show_inventory exit;
if keyboard_check_pressed(vk_escape) {
	audio_play_sound(sd_close,1,false);
	show_inventory = false;
	virtual_key_delete(vk_c);
	virtual_key_delete(esc);
}

mousex = device_mouse_x_to_gui(0);
mousey = device_mouse_y_to_gui(0);

var cell_xbuff = (cell_size + x_buffer) * scale;
var cell_ybuff = (cell_size + y_buffer) * scale;

var i_mousex = mousex - slot_x;
var i_mousey = mousey - slot_y;

var nx = i_mousex div cell_xbuff;
var ny = i_mousey div cell_ybuff;

if nx >= 0 and nx < inv_slot_width and ny >= 0 and ny < inv_slot_height{

	m_slotx = nx;
	m_sloty = ny;
}

selected_slot = m_slotx + (m_sloty * inv_slot_width);

if mouse_check_button_pressed(mb_left)
and (nx >= 0 and nx < inv_slot_width and ny >= 0 and ny < inv_slot_height){
picked_slot = selected_slot;
}


	
/// @description Insert description here
// You can write your code in this editor

key_7 = virtual_key_add(356,153,300,300,vk_numpad7);
key_8 = virtual_key_add(936,153,300,300,vk_numpad8);
key_9 = virtual_key_add(1545,153,300,300,vk_numpad9);

out = "none";
played = false;
hit = false;
show_hand = false;
result_count = ds_list_create();

win = true;
over = false;
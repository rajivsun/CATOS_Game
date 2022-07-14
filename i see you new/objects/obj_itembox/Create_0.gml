/// @description Insert description here
// You can write your code in this editor

show_item = obj_key_main;
show_item_code = "0";
original_item = -1;
alpha = 1;
depth = -9998;
xscale = 1;
yscale = 1;
exam = false;
alarm[0] = 20;

esc = virtual_key_add(1100-32,50-32,64,64,vk_escape);
vk_t = virtual_key_add(1000-64,300-64,128,128,ord("T"));
vk_p = virtual_key_add(900-64,450-64,128,128,ord("P"));
//virtual_key_show(vk_t)
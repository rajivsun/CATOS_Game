/// @description Insert description here
// You can write your code in this editor

if obj_controller.tutorial == 0 and room = rm_VILL_RIVER instance_create_layer(x,y,"system",obj_fishing_game)

obj_controller.tutorial ++;

virtual_key_delete(key_esc);
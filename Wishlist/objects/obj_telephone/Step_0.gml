/// @description Insert description here
// You can write your code in this editor


if keyboard_check_pressed(ord("P")) and phone_ready and ! instance_exists(obj_textbox)
{
	create_textbox(txt,current_node);	
	phone_ready = false;
}
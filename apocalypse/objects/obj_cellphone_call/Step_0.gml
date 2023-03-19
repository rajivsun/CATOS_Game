/// @description Insert description here
// You can write your code in this editor

if keyboard_check_pressed(vk_delete)
{
	instance_destroy()
	if !instance_exists(obj_textbox)
	{
		create_textbox(txt,current_node,true);
	}
	virtual_key_delete(key_del);
}
/// @description Insert description here
// You can write your code in this editor

key_esc = virtual_key_add(1736-45,216-45,90,90,vk_escape);
//virtual_key_show(key_esc);

lights = [1,1,1,1,1];


vk_keys = [vk_numpad1,vk_numpad2,vk_numpad3,vk_numpad4,vk_numpad5];

for (var i=0;i<=4;i++)
{
	virtual_key_add(550-80+200*i,580-200,160,400,vk_keys[i]);
}



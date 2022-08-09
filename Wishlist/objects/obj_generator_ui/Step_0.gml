/// @description Insert description here
// You can write your code in this editor

for (var i=0;i<=4;i++)
{
	if keyboard_check_pressed(vk_keys[i])
	{
		lights[i] = 0.5 - 0.5*(sign(lights[i]-0.5));
	}
}



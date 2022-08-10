/// @description Insert description here
// You can write your code in this editor

// if got right answer then dont do anything
if alarm[0] > 0 exit;

// escape button
if keyboard_check_pressed(vk_escape)
{
	instance_destroy();
}

for (var i=0;i<=4;i++)
{
	if keyboard_check_pressed(vk_keys[i])
	{
		lights[i] = 0.5 - 0.5*(sign(lights[i]-0.5));
	}
}


if array_equals(lights,right_answer) && alarm[0] == -1
{
	alarm[0] = 120;
}
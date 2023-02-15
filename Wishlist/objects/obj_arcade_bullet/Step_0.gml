/// @description Insert description here
// You can write your code in this editor

with instance_place(x,y,obj_arcade_enemy)
{
	if y >= 0
	{
		hp -= 5;
		with other
		{
			instance_destroy();
		}
	}
}
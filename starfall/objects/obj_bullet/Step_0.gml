/// @description Insert description here
// You can write your code in this editor


if place_meeting(x,y,obj_enemy)
{
	with instance_place(x,y,obj_enemy)
	{
		hp -= other.damage;
	}
	instance_destroy();
}
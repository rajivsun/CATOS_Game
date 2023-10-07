/// @description Insert description here
// You can write your code in this editor


if collision_circle(x,y,30,obj_player,false,false)
{
	if money_need <= obj_controller.gold
	{
		if keyboard_check_pressed(vk_space)
		{
			obj_controller.gold -= money_need;
			obj_controller.start = true;
			instance_create_layer(x,y,"buildings",object_to_build);
			instance_destroy();
		}
	}
}
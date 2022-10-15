/// @description Insert description here
// You can write your code in this editor

//instance_create_layer(659,3048,"customer",obj_customer);

if random_range(0,1) > 0.5
{
	with instance_create_layer(random_range(306-30,306+30),random_range(3126-30,3126+30),"customer",obj_customer)
	{
		path_start(path_enter_left,walk_speed,path_action_stop,true);
	}
}
else
{
	with instance_create_layer(random_range(2346-30,2346+30),random_range(3126-30,3126+30),"customer",obj_customer)
	{
		path_start(path_enter_right,walk_speed,path_action_stop,true);
	}
}
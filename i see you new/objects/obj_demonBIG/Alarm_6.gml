/// @description invisible(create sound)
// You can write your code in this editor

instance_destroy(obj_sounds);

with instance_create_depth(x,y,-999,obj_sounds)
{
	icon = noone;real_x = x;real_y = y;
	sound = sd_nosound;
	image_blend = c_red;
	one_time = true;
}

if invisible == true
	alarm[6] = 180
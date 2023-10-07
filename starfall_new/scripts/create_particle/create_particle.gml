// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function create_particle(_repeat,_spr,_scale,_angle=false){
	repeat(_repeat)
	{
		with instance_create_layer(x,y,"system",obj_particle)
		{
			sprite_index = _spr
			fric = 0.9
			motion_add(other.image_angle+random_range(-70,70),random_range(-1,-3)) // move the particle
			if _angle == false
			{
				image_angle = direction	
			}
			else
			{
				image_angle = _angle
			}

		}
	}
}
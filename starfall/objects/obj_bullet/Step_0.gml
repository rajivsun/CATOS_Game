/// @description Insert description here
// You can write your code in this editor


if place_meeting(x,y,obj_enemy)
{
	with instance_place(x,y,obj_enemy)
	{
		hp -= other.damage;
	}
	
	repeat(3)
	{
		with instance_create_layer(x,y,"system",obj_particle)
		{
			sprite_index = spr_effect_spark
			fric = 0.9
			motion_add(other.image_angle+random_range(-70,70),random_range(-4,-9)) // move the particle
			image_angle = direction	

		}
		
	}
	//create_particle(3,spr_effect_spark,1)
	repeat(6)
	{
		with instance_create_layer(x,y,"system",obj_particle)
		{
			sprite_index = spr_effect_dust
			fric = 0.8
			motion_add(other.image_angle+random_range(-70,70),random_range(-4,-9)) // move the particle
			image_xscale = 0.5;
			image_yscale = image_xscale
			image_angle = random(360)
		}
	}
	//create_particle(6,spr_effect_dust,0.5,random(360))
	
	instance_destroy();
}


if place_meeting(x,y,obj_wall)
{
	repeat(6)
	{
		with instance_create_layer(x,y,"system",obj_particle)
		{
			sprite_index = spr_effect_dust
			image_angle = random(360)
			fric = 0.8
		
			motion_add(other.image_angle+random_range(-70,70),random_range(-4,-9)) // move the particle
		
		}
	}
		repeat(3)
	{
		with instance_create_layer(x,y,"system",obj_particle)
		{
			sprite_index = spr_effect_spark
			fric = 0.9
			motion_add(other.image_angle+random_range(-70,70),random_range(-4,-9)) // move the particle
			image_angle = direction	
		}
	}
	instance_destroy();
}
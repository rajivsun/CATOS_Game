/// @description Insert description here
// You can write your code in this editor


if collision_circle(x,y,10,obj_enemy,false,false)
{
	
	with instance_nearest(x,y,obj_enemy)
	{
		hp -= other.damage;
	}
	
	create_particle(3,spr_effect_spark,1)
	create_particle(6,spr_effect_dust,0.5,random(360))
	
	with instance_create_layer(x,y,"system",obj_bloodimpact)
	{
		image_angle = other.image_angle+180;
	}
	
	instance_destroy();
}


if place_meeting(x,y,obj_wall)
{

	create_particle(3,spr_effect_spark,1)
	create_particle(6,spr_effect_dust,0.5,random(360))
	instance_destroy();
}
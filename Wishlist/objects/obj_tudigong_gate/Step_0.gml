/// @description Insert description here
// You can write your code in this editor


if reveal == true
{
	var fx = layer_get_fx("screen_shake");
	fx_set_parameter(fx,"g_Magnitude",5);
	part_particles_create(obj_particle.particle_system_far,x+random_range(-100,100),
		180,obj_particle.particletype_reveal_smoke,1);
	vspeed = -0.5;
	if y <= 88
	{
		speed = 0;
		fx_set_parameter(fx,"g_Magnitude",0);
		instance_create_layer(x,y+50,"portal",obj_portal);
		reveal = false;

	}
}
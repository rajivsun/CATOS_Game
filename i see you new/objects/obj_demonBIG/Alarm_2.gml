/// @description effect
// You can write your code in this editor

if invisible == false
{

	if state = "chase"
	{
		part_particles_create(obj_particle.particle_system,x,y,
		obj_particle.particletype_demonbig_chase,30);	

	}
	else if state == "attack" or state == "cd"
	{
		part_particles_create(obj_particle.particle_system,x,y,
		obj_particle.particletype_demonbig_dead,30);	
	}
	else
	{
		part_particles_create(obj_particle.particle_system,x,y,
		obj_particle.particletype_demonbig,25);	
	}
}

alarm[2] = 5;

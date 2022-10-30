/// @description Insert description here
// You can write your code in this editor


show_debug_message(instance_place(x,y,obj_door).state)
if instance_place(x,y,obj_door).state == "close"{
	instance_destroy();
	part_particles_create(obj_particle.particle_system,x,y,
	obj_particle.particletype_bullethitwall,100);	
}
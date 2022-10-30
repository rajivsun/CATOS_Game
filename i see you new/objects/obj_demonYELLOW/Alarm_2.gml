/// @description effect
// You can write your code in this editor

//if place_meeting(x,y,obj_door){
//	if instance_place(x,y,obj_door).state == "close"{
//		part_particles_create(obj_particle.particle_system,x,y,
//		obj_particle.particletype_demon,10);	
//	}
//}
//else{
	
if state = "chase" {
	part_particles_create(obj_particle.particle_system,x,y,
	particle_chase,25);	
}
else if state == "attack" or state == "cd"{
	part_particles_create(obj_particle.particle_system,x,y,
	particle_dead,25);	
}
else{
	part_particles_create(obj_particle.particle_system,x,y,
	particle_idle,20);	
}
//}

alarm[2] = 5;
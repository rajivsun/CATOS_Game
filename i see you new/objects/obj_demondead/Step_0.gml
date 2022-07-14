/// @description Insert description here
// You can write your code in this editor

spark -= 0.1;
part_particles_create(obj_particle.particle_system,x,y,
obj_particle.particletype_demon_dead,spark);	

if spark<=-10{
	image_alpha -= 0.02;
}

if image_alpha <=0{
	instance_destroy();
	show_debug_message("dead");
	take_action(action);
}

audio_sound_gain(sd_boss_fight,0,2000)
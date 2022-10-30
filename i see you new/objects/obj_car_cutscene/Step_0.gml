/// @description Insert description here
// You can write your code in this editor

part_particles_create(obj_particle.particle_system,x+70,y,obj_particle.particletype_car_dust,1);	

if cutscene1_run {
	alarm[0] = 250;
	cutscene1_run = false;
}

if room == rm_home_pre{
	if place_meeting(x,y,obj_player){
		with obj_player audio_play_sound(sd_car_crash,1,false);
		instance_destroy();
		audio_stop_sound(sd_car_driving);
		fadetoroom(rm_home_pre,0,c_white,1514,1558);
	}

	audio_emitter_position(sd_emitter2,x,y,0);

	direction = point_direction(x,y,obj_player.x,obj_player.y);
}
/// @description Insert description here
// You can write your code in this editor

var hit_target = collision_point(x,y,obj_dart_board_pieces,true,true);
if hit_target != noone
{
	//get hit score
	add_number = hit_target.number * hit_target.multiple
	obj_dart_game.total_score += add_number;
	part_particles_create(obj_particle.particle_system_far,x,y,obj_particle.particletype_hit_flechette,50);
	
	// show the score added
	alarm[1] = 120;

}

// make the next flechette ready
obj_dart_game.flechette_ready = true;

if obj_dart_game.flechette_left == 0
{
	obj_dart_game.turn = -obj_dart_game.turn;
}
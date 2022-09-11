/// @description once hit the board
// You can write your code in this editor
	
// show the score added
alarm[1] = 60;


var hit_target = collision_point(x,y,obj_dart_board_pieces,true,true);
if hit_target != noone
{
	// get hit score
	add_number = hit_target.number * hit_target.multiple
	part_particles_create(obj_particle.particle_system_far,x,y,obj_particle.particletype_hit_flechette,50);
	
	// add score
	if obj_dart_game.turn == 1
		obj_dart_game.total_score += add_number;	
	else if obj_dart_game.turn == -1
		obj_dart_game.total_score_fbg += add_number;	

}


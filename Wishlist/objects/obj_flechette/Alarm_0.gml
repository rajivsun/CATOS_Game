/// @description Insert description here
// You can write your code in this editor

var hit_target = collision_point(x,y,obj_dart_board_pieces,true,true);
if hit_target != noone
{
	obj_dart_game.total_score += hit_target.number * hit_target.multiple;
}


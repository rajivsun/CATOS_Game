/// @description Insert description here
// You can write your code in this editor

// movement
direction = point_direction(x,y,obj_player.x,obj_player.y);


// dead
if hp <= 0
{
	instance_destroy();
	instance_create_layer(x,y,"enemy",obj_enemy_dead_body);
	part_particles_create(obj_particle_system.particle_system,x,y,obj_particle_system.particletype_explosion,100)
}

depth = -y;

if speed != 0
{
	sprite_index = spr_enemy;
}
else
{
	sprite_index = spr_enemy;
}

image_xscale = sign(obj_player.x - x) ;
//if (place_meeting(x, y, obj_enemy))
//{
//var push = 10;
//x -= lengthdir_x(push,point_direction(x,y,other.x,other.y));
//y-= lengthdir_y(push,point_direction(x,y,other.x,other.y));
//}
//else{}


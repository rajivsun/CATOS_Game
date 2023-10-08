/// @description Insert description here
// You can write your code in this editor

// movement
direction = point_direction(x,y,obj_player.x,obj_player.y);

// attack
attack_cd ++
if collision_circle(x,y,attack_range,obj_player,false,false) and attack_cd >= attack_speed
{
	with obj_player
	{ 
		hp -= other.dmg 
	}
	attack_cd = 0
}

// dead
if hp <= 0
{
	instance_destroy();
	instance_create_layer(x,y,"enemy",obj_enemy_dead_body);
	part_particles_create(obj_particle_system.particle_system,x,y,obj_particle_system.particletype_explosion,100)
}

// sprite
depth = -y;

if speed != 0
{
	sprite_index = spr_idle;
}
else
{
	sprite_index = spr_idle;
}

image_xscale = sign(obj_player.x - x) ;


/// @description Insert description here
// You can write your code in this editor

if !instance_exists(obj_player) exit;

image_xscale = scale * sign(x-obj_player.x);
image_yscale = scale;
depth = -y;
audio_emitter_position(sd_emitter2,x,y,0);

if alarm[5] > 0
{
	part_particles_create(obj_particle.particle_system,x,y,
	obj_particle.particletype_demon_dead,25);
}

//-------------------- if got hit --------------------
if hit
{
	path_end();
	if place_meeting(x + lengthdir_x(speed,direction),y +lengthdir_y(speed,direction),obj_concrete)
		speed = 0;
	speed = lerp(speed,0,0.1);
	exit;
}
//---------------- if pausing--------------

if pause()
{
	path_speed = 0;
	//speed = lerp(speed,0,0.1)
	exit;
}
else
{
	if state == "chase" path_speed = speedwalk * 2;
	if state == "wander" path_speed = speedwalk;
}

enemy_detect();

if !walking
{
	walking = true;
	alarm[0] = 0.6 * room_speed;
}

switch state
{
	case "free":
		enemystate_free();
		break;
		
	case "alarm":
		enemystate_alarm();
		break;
		
	case "chase":
		enemystate_chase();
		break;
		
	case "wander":
		enemystate_wander();
		break;
		
	case "attack":
		enemystate_attack();		
		break;
	
	case "cd":
		enemystate_cd()
		break;	
}

//attack 
enemy_sudden_attack();

// use special ability when hp below 1/2
if (hp <= hp_max/2 ) && use_special == false
{
	alarm[5] = 120;
	alarm[6] = 5;
	audio_play_sound_on(sd_emitter2,sd_monsterhowl,false,1);
	
	screen_shake(10,120);
	use_special = true;
	invisible = true;
}

if hit_count >= hp_max/5
{
	hit_count = 0;
	invisible = false;
}

//dead
if hp < 0{
	invisible = false;
	instance_destroy();
	with instance_create_depth(x,y,depth,obj_demondeadBIG)
	{
		image_xscale = other.image_xscale;
		image_yscale = other.image_yscale;
	}
	if obj_main.mode == 1
	{
		savegame_ext("core","important","hard_complete",true);
		obj_main.hard_complete = true;
	}
}


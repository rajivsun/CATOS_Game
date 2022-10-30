/// @description Insert description here
// You can write your code in this editor
if instance_exists(obj_player)
{
	if obj_player.boss_fight == false and room != rm_homeF1_arcade
		hp = hp_max;
}


if !instance_exists(follow) exit;
image_xscale = scale * sign(x-follow.x);
image_yscale = scale;
depth = -y;

//--------- glow effect ------------
if alarm[5] > 0{
	part_particles_create(obj_particle.particle_system,x,y,
	obj_particle.particletype_demon_dead,25);
}

//-------------------- if got hit --------------------
enemy_gethit();

//---------------- if pausing --------------
if pause() && acting == false{
	path_speed = 0;
	//speed = lerp(speed,0,0.1)
	exit; 
}
else{
	if state == "chase" path_speed = speedwalk * 2;
	if state == "wander" path_speed = speedwalk;
}

// ------- detecting ray ------------
enemy_detect();


if !walking{
	walking = true;
	alarm[0] = 0.6 * room_speed;
}

switch state{
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

//slowdown by door
//speedwalk = 0.2;
//if place_meeting(x,y,obj_door){
//	if instance_place(x,y,obj_door).state == "close"{
//		speedwalk = 0.1;	
//	}
//}

audio_emitter_position(sd_emitter2,x,y,0);

//----------------- dead ----------------------------
if hp < 0{
	instance_destroy();
	with instance_create_depth(x,y,depth,obj_demondead){
		image_xscale = other.image_xscale;
		image_yscale = other.image_yscale;
	}
}
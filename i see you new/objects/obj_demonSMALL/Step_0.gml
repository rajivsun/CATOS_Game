/// @description Insert description here
// You can write your code in this editor
if !instance_exists(obj_player) exit;
image_xscale = scale * sign(x-obj_player.x);
image_yscale = scale;
depth = -y;
if alarm[5] > 0{
	part_particles_create(obj_particle.particle_system,x,y,
	obj_particle.particletype_demon_dead,5);
}

//-------------------- if got hit --------------------
enemy_gethit();

//---------------- if pausing--------------

if pause(){
	path_speed = 0;
	//speed = lerp(speed,0,0.1)
	exit;
}

else{
	if state == "chase" path_speed = speedwalk * 2;
	if state == "wander" path_speed = speedwalk;
}

enemy_detect();

if !walking{
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
		enemystate_cd();
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

//dead
if hp < 0
{
	instance_destroy();
	with instance_create_depth(x,y,depth,obj_demondeadSMALL)
	{
		image_xscale = other.image_xscale;
		image_yscale = other.image_yscale;
	}
}
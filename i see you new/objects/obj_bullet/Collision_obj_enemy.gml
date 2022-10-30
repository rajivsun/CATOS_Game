/// @description Insert description here
// You can write your code in this editor

with other{
	//if obj_player.boss_fight == true or object_index == obj_demonSMALL
	//or obj_player.boss_fight2 == true
	//	hp-= other.damage;	
		
	hp -= other.damage;
	
	hit = true;
	alarm[4] = other.hitback_duration;//hitback duration
	alarm[2] = 1;
	image_index = 0;
	direction = other.direction;
	speed = other.hitback_power;
	audio_play_sound_on(sd_emitter2,choose(sd_monsterhit2,sd_monsterhit3,sd_monsterhit),false,99);
	with instance_create_depth(x,y,-9999,obj_bloodimpact){
		image_angle = other.direction+180;
	}
	
	//special
	if other.special == "elect"{
		with instance_create_depth(x,y,-9999,obj_elect){
			follow = other.id;
		}
	}
	
	// invisible hit count
	if invisible{
		hit_count ++;
	}
}
instance_destroy()
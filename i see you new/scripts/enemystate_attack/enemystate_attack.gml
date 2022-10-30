// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function enemystate_attack(){
	if sprite_index != spr_attack{
		sprite_index = spr_attack;
		image_index = 0;
	}
	if image_index >= image_number -1{
		image_index = image_number -1;	
	}
		
	attack_timer ++;
	if attack_timer >= 60{	
		invisible = false;
		mask_index = spr_attack;
		audio_play_sound_on(sd_emitter2,sd_monsterattack,false,1);
		screen_shake_lite(5,10);
		
		if place_meeting(x,y,follow) {
			var dir = point_direction(x,y,follow.x,follow.y);
			attack_sign_x = x+lengthdir_x(50,dir);
			attack_sign_y = y+lengthdir_y(50,dir);
			if image_xscale != 0 attack_sign_xscale = image_xscale;
			attack_sign = true;
			with follow{
				hp -= other.damage;
			}
		}
		state = "cd";
		attack_timer = 0;
		mask_index = spr_demon;
		depth = -9999;
	}
}


function enemystate_cd(){
	cd_timer ++;
	depth = -9999;
	if cd_timer >= 80{
		xTo = follow.x;
		yTo = follow.y;
		state = "chase";			
		see_player = true;
		pathRun = false;
		
		//state = "free";
		//direction = point_direction(x,y,obj_player.x,obj_player.y);
		cd_timer = 0;
		sprite_index = spr_idle;
		attack_sign = false;
	}	
}
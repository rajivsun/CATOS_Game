/// @description Insert description here
// You can write your code in this editor

//depth = -y;
if !instance_exists(obj_player) exit;

if obj_main.mode_bonus == "tour" or obj_main.mode_bonus == "museum"	image_alpha = 1
else{
	if hold != noone
	image_alpha = max(0,image_alpha - 1/60);
}

// ------------- guns --------------------------
cd = max(0,cd-1);
if object_get_parent(object_index) = obj_weapon && object_index == obj_player.weapon{
	
	if obj_joystick.release && ammo > 0 && cd <= 0{
		cd = 60;
		ammo --;
		screen_shake(3,5);
		audio_play_sound(sound_shot,1,false);
		
		// check gun accessory
		if object_index == obj_pistol{
			//show_debug_message(ds_list_find_index(ac,"电磁"))
			if  ds_list_find_index(ac,"电磁")!=-1
			{
				audio_play_sound(sd_gun_elect,1,false);
			}
		}
		
		//player recoil wait
		with obj_player
		{
			recoil = true;
			alarm[1] = 30;
		}
		// create bullet
		with instance_create_depth(obj_player.x,obj_player.y-17,-999,obj_bullet)
		{	
			show_debug_message("bullet")
			speed = 30;
			direction = obj_joystick.dirtofinger2;
			image_angle = direction;
			damage = other.damage;
			hitback_duration = other.hitback_duration;
			hitback_power = other.hitback_power;
			special = other.special;
		}
		
		//create gunfire
		if object_index == obj_pistol
		{
			with instance_create_depth(x,y,-999,obj_gunfire){
				var dir = obj_joystick.dirtofinger2;
				var face = (dir+22.5) div 45;
				image_angle = face*45;
				//image_angle = dir;
			}
		}
		else if object_index == obj_shotgun 
		{
			with instance_create_depth(x,y,-999,obj_gunfire2)
			{
				var dir = obj_joystick.dirtofinger2;
				var face = (dir+22.5) div 45;
				image_angle = face*45;
			}	
		}
		else if object_index == obj_shotgun_gold 
		{
			with instance_create_depth(x,y,-999,obj_gunfire2)
			{
				var dir = obj_joystick.dirtofinger2;
				var face = (dir+22.5) div 45;
				image_angle = face*45;
			}	
		}		
		else if object_index == obj_m4a1
		{
			with instance_create_depth(x,y,-999,obj_gunfire2)
			{
				var dir = obj_joystick.dirtofinger2;
				var face = (dir+22.5) div 45;
				image_angle = face*45;
			}	
			
		}
	}
	
	else if obj_joystick.release && ammo == 0{
		var _ammo = check_ressource(ammo_type)
			
		if !obj_joystick.ready
		&& _ammo > 0  && !obj_player.reloading{
			obj_player.reloading = true;
			audio_play_sound(sd_gun_reload,1,0);
			obj_player.alarm[2] = 60*reload_time; 		
		}	
	}
}

//if object_index == obj_pistol
//show_debug_message(instance_number(id))

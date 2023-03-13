/// @description Insert description here
// You can write your code in this editor

// --------------------------- player input --------------------------------
right = keyboard_check(vk_right) or keyboard_check(ord("D"));
left = keyboard_check(vk_left) or keyboard_check(ord("Q")); 
down = keyboard_check(vk_down) or keyboard_check(ord("S"));
up = keyboard_check(vk_up) or keyboard_check(ord("Z"));
//jump = keyboard_check(vk_space);
interact = keyboard_check_pressed(ord("E"));
//sprint = keyboard_check(vk_shift);
sprint = false;
scan = keyboard_check_pressed(ord("G"));

//   ------------ sprite -------------
player_sprite();

// ------------- main ---------------
switch (state){
	
	case "scene":
	
		if room == rm_CITY_HOME
		{
			if scene_on == true
			{
				sprite_index = spr_player_home_lay;
				image_speed = 0;
			}
			else
			{
				image_speed = 1;
				if image_index >= image_number - 1
				{
					state = "idle";
					take_action(action);
				}
			}
		}
		
		if room == rm_METRO
		{
			image_xscale = 1;
			if !standup
			{
				if !audio_is_playing(mc_far_away)
					audio_play_sound(mc_far_away,99,true);
				audio_sound_gain(mc_subway_long,0,2000);
				alpha_layer = min(1,alpha_layer+0.01);
				var lay_id = layer_get_id("black");
				var back_id = layer_background_get_id(lay_id);
				layer_background_alpha(back_id, alpha_layer);
				sprite_index = spr_player_knee;
				if image_index >= image_number - 1
				{
					image_index = image_number - 1;
					if actioned == false
					{
						actioned = true;
						if ! instance_exists(obj_commentor) 
							instance_create_layer(x,y,"system",obj_commentor);
					}
				}
			}
			else
			{
				alpha_layer = max(0,alpha_layer-0.01);
				var lay_id = layer_get_id("black");
				var back_id = layer_background_get_id(lay_id);
				layer_background_alpha(back_id, alpha_layer);	
				sprite_index = spr_player_standup;
				if image_index >= image_number - 1
				{
					image_index = image_number - 1;
					if alpha_layer <= 0
						state = "idle";
						audio_sound_gain(mc_far_away,0,2000);
						audio_sound_gain(mc_subway_long,0.2,2000);
				}
			}
		}
	
		if room == rm_BAR_drunk
		{
			count ++;
			sprite_index = spr_player_standup_drunk;
			if count <= 120
			{
				image_speed = 0;
			}
			else 
			{
				image_speed = 1;
				if image_index >= image_number - 1
				{
					state = "idle";
					count = 0;
					take_action(action);
				}
			}
		}
		
		if room == rm_FOREST_TRAVEL
		{
			count ++;
			if count >= 60
			{
				take_action(action);
				state = "idle";
			}
		}
		
		if room == rm_OLD_HOME
		{
			if do_action == false
			{
				sprite_index = spr_player_child_standup_lay;
				image_speed = 0;
			}
			else
			{
				count ++;
				sprite_index = spr_player_child_standup_lay;
				if count <= 1
				{
					image_speed = 0;
				}
				else 
				{
					image_speed = 1;
					if image_index >= image_number - 1
					{
						state = "idle";
						count = 0;
						take_action(action);
						
					}
				}
			}
		}
		
		break;
	
	case "idle":
		//--------------- movement --------------------
		
		player_run();

		if instance_exists(obj_textbox) or instance_exists(obj_fade)//or obj_controller.cutscene_on == true
		or instance_exists(obj_rcp_game) //or instance_exists(obj_cutscene)
		{
			sprite_index = spr_idle;
		}
		else
		{
			// ------------------- interact --------------------
			nearest =instance_nearest(x,y,obj_interactable);
			if interact and !scan_world and !instance_exists(obj_cellphone_call)
			{
				player_interact();
			}
			// ------------------- scan ---------------------
			if scan and !instance_exists(obj_textbox) and !instance_exists(obj_cutscene)
			{
				if room == rm_CITY_TOP or room == rm_METRO_STATION_QUAI or room == rm_BAR
				player_scan_switch();
			}
			
			if scan_world == true
			{
				fx_hack_thres = max( 0,fx_hack_thres - 0.02);
				var _fx = layer_get_fx("ef_scan");
				fx_set_parameter(_fx,"g_Threshold",fx_hack_thres);
			}
			player_movement_ground();
		}

		break;
		
	case "sit":
		sprite_index = spr_sit;
		break;
		
	case "douji":
		player_douji();
		break;
		
	case "fishing":
		sprite_index = spr_player_child_fishing;
		if instance_exists(obj_fishing_game)
		{
			if obj_fishing_game.state == "fishing" 
				sprite_index = spr_player_child_fishing;
			else 
			{
				sprite_index = spr_player_child_fishing_caught;
				if image_index >= image_number-1
				{
					image_index = image_number-1;
				}
			}
		}

		break;
	

}



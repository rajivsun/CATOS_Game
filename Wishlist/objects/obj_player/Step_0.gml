/// @description Insert description here
// You can write your code in this editor

// --------------------------- player input --------------------------------
right = keyboard_check(vk_right) or keyboard_check(ord("D"));
left = keyboard_check(vk_left) or keyboard_check(ord("Q")); 
down = keyboard_check(vk_down) or keyboard_check(ord("S"));
up = keyboard_check(vk_up) or keyboard_check(ord("Z"));
//jump = keyboard_check(vk_space);
interact = keyboard_check_pressed(ord("E"));
sprint = keyboard_check(vk_shift);
scan = keyboard_check_pressed(ord("G"));

//   ------------ sprite -------------
player_sprite();

// ------------- main ---------------
switch (state){
	
	case "idle":	
		//--------------- movement --------------------
		player_run();

		if instance_exists(obj_textbox) or instance_exists(obj_fade)//or obj_controller.cutscene_on == true
		{
			sprite_index = spr_idle;
		}
		else
		{
			player_movement_ground();
		}
		// ------------------- interact --------------------
		nearest =instance_nearest(x,y,obj_interactable);
		if interact
		{
			player_interact();
		}
		
		// ------------------- scan ---------------------
		if scan
		{
			if room == rm_CITY_TOP or room == rm_METRO_STATION_QUAI
			player_scan_switch();
		}
		if scan_world != false
		{
			fx_hack_thres = max( 0,fx_hack_thres - 0.02);
			var _fx = layer_get_fx("ef_scan");
			fx_set_parameter(_fx,"g_Threshold",fx_hack_thres);
		}
		break;
		
	case "sit":
		sprite_index = spr_sit;
		break;
		
	case "douji":
		
		player_douji();
		break;

}



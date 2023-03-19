/// @description Insert description here
// You can write your code in this editor

// --------------------------- player input --------------------------------
right = keyboard_check(vk_right) or keyboard_check(ord("D"));
left = keyboard_check(vk_left) or keyboard_check(ord("Q")); 
down = keyboard_check(vk_down) or keyboard_check(ord("S"));
up = keyboard_check(vk_up) or keyboard_check(ord("Z"));
interact = keyboard_check_pressed(ord("E"));
//sprint = keyboard_check(vk_shift);
sprint = false;
scan = keyboard_check_pressed(ord("G"));

//   ------------ sprite -------------
player_sprite();

// ------------- main ---------------
switch (state){
	
	case "scene":
		
		break;
	
	case "idle":
		//--------------- movement --------------------
		
		player_run();

		if instance_exists(obj_textbox) or instance_exists(obj_fade)
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
			
			player_movement_ground();
		}

		break;
		

}



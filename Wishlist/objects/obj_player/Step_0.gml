/// @description Insert description here
// You can write your code in this editor

right = keyboard_check(vk_right) or keyboard_check(ord("D"));
left = keyboard_check(vk_left) or keyboard_check(ord("Q")); 
down = keyboard_check(vk_down) or keyboard_check(ord("S"));
up = keyboard_check(vk_up) or keyboard_check(ord("Z"));
//jump = keyboard_check(vk_space);
interact = keyboard_check(ord("E"));
sprint = keyboard_check(vk_shift);


//--------------- movement --------------------
switch (state){
	
	case "idle":	
		player_run();

		if instance_exists(obj_textbox) or instance_exists(obj_fade)//or obj_controller.cutscene_on == true
		{
			sprite_index = spr_idle;
		}
		else
		{
			player_movement_ground();
		}
		// -------------- interact --------------------
		nearest =instance_nearest(x,y,obj_interactable);
		if interact
		{
			player_interact();
		}
		
		break;
		
	case "sit":
		sprite_index = spr_sit;
		break;

}



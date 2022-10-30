/// @description Insert description here
// You can write your code in this editor
if solve{
	instance_destroy()
	take_action(show_item.reward[show_item.current_reward]);
	show_item.exam = false;
	exit;

}
//close the puzzle
if keyboard_check_pressed(vk_escape){
	instance_destroy(obj_snake)
	obj_joystick.alarm[0] = 20;
	instance_destroy();
	if instance_exists(obj_cutscene){
		with obj_cutscene{
			end_scene();
		}
	}
	exit;
}

_puzzle = show_item.puzzle[show_item.current_puzzle] 
// safebox puzzle
if _puzzle == "safebox"{
	if keyboard_check_pressed(ord("H")){
		msg = get_string_async("pls enter the code",0);
	}
	
	if keyboard_check_pressed(vk_enter){
		if code == correct_code{
			solve = true;
		}
	}
}

// pc password puzzle
if _puzzle == "pc_password"{
	if keyboard_check_pressed(ord("H")){
		msg = get_string_async("pls enter the code",0);
	}
	
	if keyboard_check_pressed(vk_enter){
		if code == string(inst_9370057.pc_password){
			solve = true;
		}
	}	
}

// pc usb puzzle
if _puzzle == "pc_usb"{
	if keyboard_check_pressed(vk_enter){
		preset_inventory(show_item.key,show_item)
		obj_inventory.show_inventory = true;
		instance_destroy();exit;
	}
}

// gameboy puzzle
if _puzzle == "gameboy"{
	if !instance_exists(obj_snake){
		instance_create_depth(x,y,-9999,obj_snake);
	}
}

// if puzzle solved


//virtual_key_delete(vk_h);virtual_key_delete(vk_ent);
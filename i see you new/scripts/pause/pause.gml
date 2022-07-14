// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function pause(){
	
	//if object_index == obj_demon
	//{	
	//	if acting == true exit;
	//}
	
	if (obj_inventory.show_inventory && object_index != obj_inventory) 
		or instance_exists(obj_textbox) 
		or instance_exists(obj_itembox)
		or instance_exists(obj_cutscene)
		or instance_exists(obj_puzzlebox)
		or instance_exists(obj_itemtextbox)
		or instance_exists(obj_tutorialbox)
		or (obj_controller._pause == 1 && object_index != obj_controller)
		or (obj_crafting.show_inventory && object_index != obj_crafting)
		
		{
			
			
		if object_index == obj_player && obj_player.freeze == false{	

				if face == 0 sprite_index = sprR;
				if face == 1 sprite_index = sprU;
				if face == 2 sprite_index = sprL;
				if face == 3 sprite_index = sprD;
				freeze = true;
		}
		
		with obj_joystick{
			move = 0;
		}
		
		return true
		
		}
	else{
		freeze  = false;
		return false
	}

}
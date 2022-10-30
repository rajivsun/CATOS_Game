/// @description Insert description here
// You can write your code in this editor

//check if there is puzzle
if keyboard_check_pressed(ord("T")) && show_item.exam == true
{
	if show_item.object_index == obj_typewritter
	{
		if AdMob_Interstitial_IsLoaded()
		{
			AdMob_Interstitial_Show();
			//show_message("ready to show")
		}
		//if AdMob_RewardedVideo_IsLoaded()
		//{	
		//	AdMob_RewardedVideo_Show();
		//}
		save_all();
		obj_controller.alarm[1] = 150;
		instance_destroy();
		if instance_exists(obj_cutscene)
		{
			with obj_cutscene
			{
				end_scene();
			}
		}
	}
	
	else{
		if show_item.puzzle[show_item.current_puzzle] != false{
			//instance_destroy()
			show_item_code = show_item.code;
			puzzlebox(show_item);
			
		}
		else{
			//instance_destroy()
			if show_item.key != -1{
				preset_inventory(show_item.key,show_item)
				obj_inventory.show_inventory = true;
				instance_destroy();exit;
			}
			else{
				take_action(show_item.reward[show_item.current_reward]);
				show_item.exam = false;
			}
		}
	}
}

//if it is pickable
if keyboard_check_pressed(ord("P")) && show_item.pickable == true{
	audio_play_sound(sd_grab,1,0);
	//show_item.x = -99;show_item.y = -99;
	instance_destroy(show_item)
	if object_get_parent(show_item.object_index) == obj_resource{		
		pickupressource(show_item);
	}
	else pickupitem(show_item.object_index);
	obj_joystick.alarm[0] = 20;
	instance_destroy();
	if instance_exists(obj_cutscene){
		with obj_cutscene{
			end_scene();
		}
	}
}

// close the itembox
if keyboard_check_pressed(vk_escape) && alarm[0] <= 0{
	obj_joystick.alarm[0] = 20;
	instance_destroy();
	if instance_exists(obj_cutscene){
		with obj_cutscene{
			end_scene();
		}
	}
}


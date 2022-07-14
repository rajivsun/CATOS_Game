/// @description Insert description here
// You can write your code in this editor

if room == rm_start{
	mode_bonus = false;
	audio_stop_all();
}

if room == rm_homeF1{
	
	// clean room when tour mode
	if mode_bonus == "tour"{
		instance_destroy(obj_lighting);
		obj_item.actionable = false;obj_item.exam = false;obj_item.pickable = false;
		obj_furniture.actionable = false;
		obj_stairs.locked = false;
		obj_door.actionable = false;obj_door.key = -1;
		instance_destroy(obj_baobaochair)
	}
	
	else{
		if new_start == true{	
		
			// turn off saving and map
			if obj_main.mode == 1 {
				instance_destroy(obj_typewritter);
				instance_destroy(obj_gameboy);
			}
			// remove portrait
			if obj_main.bbportrait == true{
				instance_destroy(obj_bbportrait1)
				instance_destroy(obj_bbportrait2)
				instance_destroy(obj_bbportrait3)
			}
		
			take_action(action1);
		}
		else{
			alarm[0] = 2;//to make sure everything is loaded in maps then restore the saving file
		}
	}
}

if room == rm_sewer
{
	if new_start == true
	{
		save_all();
	}
	else
	{
		alarm[0] = 2;
	}
}
if room == rm_difficulty or room == rm_bonus or room == rm_gamemode or room == rm_choosechapiter
or room == rm_options{
	vk_m = virtual_key_add(1200-32,50-32,64,64,ord("M"));//next
	vk_m = virtual_key_add(60-32,50-32,64,64,ord("N"));//back
}


if room == rm_gg
{
	if AdMob_Interstitial_IsLoaded()
	{
		AdMob_Interstitial_Show();
	}
}

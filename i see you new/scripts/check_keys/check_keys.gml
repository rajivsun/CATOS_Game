
// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function preset_inventory(_key,_check_item){
	obj_inventory.category = 0;obj_inventory.check_key = true;
	obj_inventory.right_item = _key;
	obj_inventory.vk_esc = virtual_key_add(1100-32,50-32,64,64,vk_escape);
	obj_inventory.check_item = _check_item;
}

function check_keys(_rightitem,_item){
	
	var right_key = false;
	
	if _rightitem == _item{ right_key = true;}
	
	if _rightitem == -1 right_key = true;
	return right_key
}

function check_keys_whole(_item){
	if keyboard_check_pressed(ord("U")){
		if check_keys(right_item,_item) == true{
			//show_debug_message("fafaf")
			obj_inventory.show_inventory = false;m_slotx = 99;m_sloty = 99;check_key = false;			
			
			audio_play_sound(sd_discover,1,false);
			//remove the item/key
			if _item != obj_cutter{
			
				for (var yy=0;yy<obj_inventory.inv_slot;yy++){
					if obj_inventory.ds_inventory[# 0,yy] == _item 
					&& obj_inventory.ds_inventory[# 1,yy]>0{
						obj_inventory.ds_inventory[# 0,yy] = 0;
						obj_inventory.ds_inventory[# 1,yy] --;
					//show_debug_message(yy)
					}
				}
			}
			
			//if it is door then operate the door
			if object_get_parent(check_item.object_index) == obj_door{
				with check_item{
					key = -1;
					operate = true;
					if state == "close" audio_play_sound(sd_dooropen,99,0);
					if state == "open" {
						audio_play_sound(sd_doorclose,99,0);	
						obj_player.door_freeze = true;
					}
				}
			}
			
			//if it is stairs
			if object_get_parent(check_item.object_index) == obj_stairs{
				with check_item{
					image_index +=1;
					locked = false;
					take_action(reward[current_reward]);
				}
			}
			
			//if it is furniture
			if object_get_parent(check_item.object_index) == obj_furniture{
				with check_item{
					image_index +=1;
					locked = false;
					take_action(reward[current_reward]);
				}
			}
			
			//if it is furniture item and have rewards
			if object_get_parent(check_item.object_index) == obj_item{
				with check_item{
					exam = false;
					//key = -1;
					take_action(reward[current_reward]);
				}
			}
		}
	}
}
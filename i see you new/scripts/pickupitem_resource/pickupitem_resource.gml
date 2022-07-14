// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

function pickupitem(_item){
	
	if object_get_parent(_item)==obj_weapon{
		with(obj_inventory){	
			for (var ii = 0;ii < 2; ii++){
				if ds_weapon_ready[# 1,ii] == 0{
					ds_weapon_ready[# 0,ii] = _item;
					ds_weapon_ready[# 1,ii] += 1;
					break;
				}
			}
		}
	}
	
	else{
		with(obj_inventory){			
			var found = false;
			for (var ii = 0;ii < inv_slot; ii++){
				if ds_inventory[# 0,ii] == _item{
					ds_inventory[# 1,ii] ++; 	
					found = true;
					break;
				}
			}
			if found = false{
				for (var ii = 0;ii < inv_slot; ii++){
					if ds_inventory[# 1,ii] == 0{
						ds_inventory[# 0,ii] = _item;
						ds_inventory[# 1,ii] += 1;
						break;
					}
				}
			}
		}
	}
	
	if instance_exists(obj_cutscene) end_scene();
}

function pickupressource(_inst){
	with(obj_inventory){			
		var found = false;
		for (var ii = 0;ii < inv_slot; ii++)
		{
			if ds_inventory[# 0,ii] == _inst.object_index
			{
				ds_inventory[# 1,ii] += _inst.quantity;
				//show_message(_inst.quantity)
				found = true;
				break;		
			}
		}
		
		if found == false
		{
			for (var ii = 0;ii < inv_slot; ii++)
			{	
				if ds_inventory[# 1,ii] == 0
				{
					ds_inventory[# 0,ii] = _inst.object_index;
					ds_inventory[# 1,ii] += _inst.quantity;
					break;
				}
			}
		}
	}
}
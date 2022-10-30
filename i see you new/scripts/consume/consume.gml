// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function consume(_item,_ii){
	
	var remove = false;
	if obj_inventory.ds_weapon_ready[# 0,0] == obj_pistol
	or obj_inventory.ds_weapon_ready[# 1,0] == obj_pistol{
		if _item.object_index == obj_pistol_elect{
			remove = true;
			ds_list_add(obj_pistol.ac,"电磁");obj_pistol.ac_total+=1;
			obj_pistol.hitback_duration += 20;
			//obj_pistol.hitback_power += 1;
			obj_pistol.special = "elect";
		}
	}
	if _item.object_index == obj_firstaidkit {
		obj_player.hp += min(obj_player.hp_max-obj_player.hp,1);
		remove = true;	
	}
	
	if _item.object_index == obj_sonar {
		obj_player.sonar = true;
		remove = true;	
	}
	
	if remove == true{
		ds_inventory[# 1,_ii] --;
		if ds_inventory[# 1,_ii] = 0 ds_inventory[# 0,_ii] = -99;
	}

}
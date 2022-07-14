// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function reload(){
	var w = obj_player.weapon;
	with(obj_inventory){				
		for (var ii = 0;ii <= inv_slot; ii++){
				
			if ds_inventory[# 0,ii] == w.ammo_type{
				var ammo_exchange = w.defaut_ammo - w.ammo
				with w{
					ammo += min(ammo_exchange,other.ds_inventory[# 1,ii]);
				}
				
				ds_inventory[# 1,ii] -= min(ds_inventory[# 1,ii],ammo_exchange);
				if ds_inventory[# 1,ii] <= 0{
					ds_inventory[# 0,ii] = -99;
				}				
				break;
			}
		}
	}
}

function check_ressource(_item){
	var _ammo = 0
	
	with(obj_inventory){				
		for (var ii = 0;ii < inv_slot; ii++){
				
			if ds_inventory[# 0,ii] == _item{
				_ammo = ds_inventory[# 1,ii];
				break;			
			}
		}
	}
	return _ammo
}
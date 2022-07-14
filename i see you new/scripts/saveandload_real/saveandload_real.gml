// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function save_all(){
	
	if file_exists("user.sav") file_delete("user.sav")
	
	ini_open("user.sav"); 
	//save inventory
	savegame("inventory_slot","size",obj_inventory.inv_slot);
	for (var xx=0;xx<obj_inventory.inv_slot;xx++){

		savegame("inventory_item",string(xx),obj_inventory.ds_inventory[# 0,xx]);
		savegame("inventory_num",string(xx),obj_inventory.ds_inventory[# 1,xx]);
	}
	//weapon
	for (var xx=0;xx<2;xx++){	
		var _weapon = obj_inventory.ds_weapon_ready[# 0,xx];
		var _num = obj_inventory.ds_weapon_ready[# 1,xx];
		savegame("weapon_"+string(xx),"weapon_num",_num);
		savegame("weapon_"+string(xx),"weapon_item",_weapon);	
		savegame("weapon_"+string(xx),"ammo",_weapon.ammo);
		savegame("weapon_"+string(xx),"hitback_duration",_weapon.hitback_duration);
		savegame("weapon_"+string(xx),"hitback_power",_weapon.hitback_power);
		savegame_text("weapon_"+string(xx),"special",_weapon.special);	
		savegame("weapon_"+string(xx),"ac_total",_weapon.ac_total);		
		savegame("weapon_"+string(xx),"ac_num",ds_list_size(_weapon.ac));		
		//accessory
		for (var yy=0;yy<ds_list_size(_weapon.ac);yy++){			
			savegame_text("weapon_"+string(xx),"ac_"+string(yy),_weapon.ac[| yy]);	
		}
	}

	//save player
	savegame("player","x",obj_player.x);savegame("player","y",obj_player.y);
	savegame("player","hp",obj_player.hp);
	savegame("player","sonar",obj_player.sonar);	

	//save door
	for (var i = 0; i < instance_number(obj_door); ++i;){
	    savegame("door_key",string(instance_find(obj_door,i)),instance_find(obj_door,i).key);
		savegame("door_actionable",string(instance_find(obj_door,i)),instance_find(obj_door,i).actionable);
	}

	//save furniture
	for (var i = 0; i < instance_number(obj_furniture); ++i;){
		savegame("furniture_image_index",string(instance_find(obj_furniture,i)),instance_find(obj_furniture,i).image_index);
		savegame("furniture_locked",string(instance_find(obj_furniture,i)),instance_find(obj_furniture,i).locked);
		savegame("furniture_actionable",string(instance_find(obj_furniture,i)),instance_find(obj_furniture,i).actionable);
		savegame("furniture_current_action",string(instance_find(obj_furniture,i)),instance_find(obj_furniture,i).current_action);
		savegame("furniture_current_reward",string(instance_find(obj_furniture,i)),instance_find(obj_furniture,i).current_reward);
		savegame("furniture_hp",string(instance_find(obj_furniture,i)),instance_find(obj_furniture,i).hp);		
	}

	//save items
	savegame("item_number",string("number"),instance_number(obj_item));
	for (var i = 0; i < instance_number(obj_item); ++i;)
	{
		savegame("item_exam",string(instance_find(obj_item,i)),instance_find(obj_item,i).exam);
		savegame("item_actionable",string(instance_find(obj_item,i)),instance_find(obj_item,i).actionable);
		savegame("item_pickable",string(instance_find(obj_item,i)),instance_find(obj_item,i).pickable);
		savegame("item_current_action",string(instance_find(obj_item,i)),instance_find(obj_item,i).current_action);
		savegame("item_current_puzzle",string(instance_find(obj_item,i)),instance_find(obj_item,i).current_puzzle);
		savegame("item_current_reward",string(instance_find(obj_item,i)),instance_find(obj_item,i).current_reward);
		savegame("item_instance",string(i),instance_find(obj_item,i).id);
	}

	//save stairs
	for (var i = 0; i < instance_number(obj_stairs); ++i;){
		savegame("stairs_locked",string(instance_find(obj_stairs,i)),instance_find(obj_stairs,i).locked);
	}

	//save controller
	if room == rm_homeF1
	{
		savegame("controller","check_cactus",obj_controller.check_cactus);
		savegame("controller","check_pc",obj_controller.check_pc);
	}
	
	savegame("controller","scene",obj_controller.scene);
	savegame("controller","timer",obj_controller.timer);
	savegame("controller","current_mission",obj_controller.current_mission);
	savegame("controller","map",obj_controller.map);

	//sounds
	if instance_exists(obj_sounds) {
		savegame("sound","x",obj_sounds.x);savegame("sound","y",obj_sounds.y);
		savegame("sound","real_x",obj_sounds.real_x);savegame("sound","real_y",obj_sounds.real_y);
		savegame("sound","icon",obj_sounds.icon);savegame("sound","sound",obj_sounds.sound);
		savegame("sound","exist",true);
	}
	else savegame("sound","exist",false);
	
	//demon
	//if instance_exists(obj_demon){
	//	savegame("demon","exist",true);
	//	savegame("demon","x",obj_demon.x);savegame("demon","y",obj_demon.y);
	//	savegame("demon","hp",obj_demon.hp);
	//}
	//else savegame("demon","exist",false);
	
	//if instance_exists(obj_demonSMALL){
	//	savegame("demonsmall","exist",true);
	//	savegame("demonsmall","x",obj_demonSMALL.x);savegame("demonsmall","y",obj_demonSMALL.y);
	//	savegame("demonsmall","hp",obj_demonSMALL.hp);
	//}
	//else savegame("demonsmall","exist",false);
	
	//save enemy
	savegame("enemy_number",string("number"),instance_number(obj_enemy));
	for (var i = 0; i < instance_number(obj_enemy); ++i;)
	{
		savegame("enemy_hp",string(i),instance_find(obj_enemy,i).hp);
		savegame("enemy_x",string(i),instance_find(obj_enemy,i).x);
		savegame("enemy_y",string(i),instance_find(obj_enemy,i).y);
		savegame("enemy_instance",string(i),instance_find(obj_enemy,i).object_index);
		savegame("enemy_range_x1",string(i),instance_find(obj_enemy,i).range_x[0]);
		savegame("enemy_range_x2",string(i),instance_find(obj_enemy,i).range_x[1]);
		savegame("enemy_range_y1",string(i),instance_find(obj_enemy,i).range_y[0]);
		savegame("enemy_range_y2",string(i),instance_find(obj_enemy,i).range_y[1]);
	}
	
	//game difficulty
	savegame("main","mode",obj_main.mode);
	
	//journal
	savegame("journal","num",ds_list_size(obj_inventory.journal))
	for (var ii=0;ii<ds_list_size(obj_inventory.journal);ii++){
		savegame_text("journal",string(ii+1),obj_inventory.journal[| ii]);
	}
	
	//random password
	if room == rm_homeF1
	{
		//show_debug_message(inst_9370057.pc_password)
		savegame("password","pc_password",inst_9370057.pc_password)
	}

	savegame("main","chapter",room);
	ini_close();
}

function load_all(){
	 if file_exists("user.sav")
	 {
		 
		ini_open("user.sav");
		 
		//mode
		obj_main.mode = loadgame("main","mode");
		
		//chapîter
		//obj_main.current_end = loadgame("main","chapter");
	
		//item check existance
		var _num = loadgame("item_number","number");

		var item_ls = ds_list_create()
		for (var i = 0; i < instance_number(obj_item); ++i;){
			var match = false;
		
			for (var ii =0;ii<_num;++ii){
				//show_debug_message(string(instance_find(obj_item,i)))
				if instance_find(obj_item,i) == loadgame("item_instance",string(ii)){
					match = true;				
					break;
				}	
			}
		
			if match == false{
				ds_list_add(item_ls,instance_find(obj_item,i))
			}
		}
	
		for (var i =0;i<ds_list_size(item_ls);i++){
			//show_debug_message(object_get_name(item_ls[| i].object_index))
			instance_destroy(item_ls[| i]);
		}
		ds_list_destroy(item_ls);

		//enemy check existance
		var _num_enemy = loadgame("enemy_number","number");
		
		//var enemy_ls = ds_list_create();
		//for (var i = 0; i < instance_number(obj_enemy); ++i;){
		//	var enemy_match = false;
		
		//	for (var ii =0;ii<_num_enemy;++ii){
		//		//show_debug_message(string(instance_find(obj_item,i)))
		//		if instance_find(obj_enemy,i) == loadgame("enemy_instance",string(ii)){
		//			enemy_match = true;
		//			break;
		//		}
		//	}
		
		//	if enemy_match == false{
		//		ds_list_add(enemy_ls,instance_find(obj_enemy,i));
		//	}
		//}
		
		//for (var i =0;i<ds_list_size(enemy_ls);i++){
		//	//show_debug_message(object_get_name(item_ls[| i].object_index))
		//	instance_destroy(enemy_ls[| i]);	
		//}
		//ds_list_destroy(enemy_ls);
		
		instance_destroy(obj_enemy);
		for (var ii = 0; ii < _num_enemy; ii++)
		{
			var _obj_enemy = loadgame("enemy_instance",string(ii));
			var _enemy_x = loadgame("enemy_x",string(ii));
			var _enemy_y = loadgame("enemy_y",string(ii));
			var _enemy_hp = loadgame("enemy_hp",string(ii));
			
			show_debug_message("haha"+string(_obj_enemy));
			with instance_create_layer(_enemy_x,_enemy_y,"world",_obj_enemy)
			{
				var x1 = loadgame("enemy_range_x1",string(ii));
				var x2 = loadgame("enemy_range_x2",string(ii));
				var y1 = loadgame("enemy_range_y1",string(ii));
				var y2 = loadgame("enemy_range_y2",string(ii));
				range_x = [x1,x2];
				range_y = [y1,y2];
				hp = _enemy_hp;
			}
			
		}
		
		//inventory
		if loadgame("inventory_slot","size") != 0
			obj_inventory.inv_slot = loadgame("inventory_slot","size");

		for (var xx=0;xx<obj_inventory.inv_slot;xx++){	
			obj_inventory.ds_inventory[# 0,xx] = loadgame("inventory_item",string(xx));
			obj_inventory.ds_inventory[# 1,xx] = loadgame("inventory_num",string(xx));
		}
	
		//weapon
		for (var xx=0;xx<2;xx++){	
		
			obj_inventory.ds_weapon_ready[# 0,xx] = loadgame("weapon_"+string(xx),"weapon_item");
			obj_inventory.ds_weapon_ready[# 1,xx] = loadgame("weapon_"+string(xx),"weapon_num");
			obj_inventory.ds_weapon_ready[# 0,xx].ammo = loadgame("weapon_"+string(xx),"ammo");
			obj_inventory.ds_weapon_ready[# 0,xx].ac_total = loadgame("weapon_"+string(xx),"ac_total");
			obj_inventory.ds_weapon_ready[# 0,xx].special = loadgame_text("weapon_"+string(xx),"special");
			obj_inventory.ds_weapon_ready[# 0,xx].hitback_duration = loadgame("weapon_"+string(xx),"hitback_duration");
			obj_inventory.ds_weapon_ready[# 0,xx].hitback_power = loadgame("weapon_"+string(xx),"hitback_power");
			var ac_num = loadgame("weapon_"+string(xx),"ac_num")
			//accessory
			obj_inventory.ds_weapon_ready[# 0,xx].ac = ds_list_create()
			for (var yy=0;yy<ac_num;yy++){			
				ds_list_add(obj_inventory.ds_weapon_ready[# 0,xx].ac,loadgame_text("weapon_"+string(xx),"ac_"+string(yy)));
				show_debug_message(obj_inventory.ds_weapon_ready[# 0,xx].ac[| yy])
				show_debug_message(obj_inventory.ds_weapon_ready[# 0,xx].ac)
				show_debug_message(object_get_name(obj_player.weapon.object_index));
				show_debug_message(object_get_name(obj_inventory.ds_weapon_ready[# 0,xx].object_index))
			}		
		}

	
		//player
		obj_player.x = loadgame("player","x");
		obj_player.y = loadgame("player","y");
		obj_player.hp = loadgame("player","hp");
		obj_player.sonar = loadgame("player","sonar");

		//furniture
		for (var i = 0; i < instance_number(obj_furniture); ++i;){
			instance_find(obj_furniture,i).locked=loadgame("furniture_locked",string(instance_find(obj_furniture,i)));
			instance_find(obj_furniture,i).image_index=loadgame("furniture_image_index",string(instance_find(obj_furniture,i)));
			instance_find(obj_furniture,i).actionable=loadgame("furniture_actionable",string(instance_find(obj_furniture,i)));
			instance_find(obj_furniture,i).current_action=loadgame("furniture_current_action",string(instance_find(obj_furniture,i)));
			instance_find(obj_furniture,i).current_reward=loadgame("furniture_current_reward",string(instance_find(obj_furniture,i)));
			instance_find(obj_furniture,i).hp = loadgame("furniture_hp",string(instance_find(obj_furniture,i)));
		}

		//door 
		for (var i = 0; i < instance_number(obj_door); ++i;){
			instance_find(obj_door,i).actionable=loadgame("door_actionable",string(instance_find(obj_door,i)));
			instance_find(obj_door,i).key=loadgame("door_key",string(instance_find(obj_door,i)));
		}

		//item
		for (var i = 0; i < instance_number(obj_item); ++i;){
			instance_find(obj_item,i).exam=loadgame("item_exam",string(instance_find(obj_item,i)));
			instance_find(obj_item,i).actionable=loadgame("item_actionable",string(instance_find(obj_item,i)));
			instance_find(obj_item,i).pickable =loadgame("item_pickable",string(instance_find(obj_item,i)));
			instance_find(obj_item,i).current_action=loadgame("item_current_action",string(instance_find(obj_item,i)));
			instance_find(obj_item,i).current_puzzle=loadgame("item_current_puzzle",string(instance_find(obj_item,i)));
			instance_find(obj_item,i).current_reward=loadgame("item_current_reward",string(instance_find(obj_item,i)));
		}

		//stairs
		for (var i = 0; i < instance_number(obj_stairs); ++i;){
			instance_find(obj_stairs,i).locked=loadgame("stairs_locked",string(instance_find(obj_stairs,i)));	
		}

		//controller
		obj_controller.scene = loadgame("controller","scene");
		obj_controller.timer = loadgame("controller","timer");
		obj_controller.check_cactus = loadgame("controller","check_cactus");
		obj_controller.check_pc = loadgame("controller","check_pc");
		obj_controller.current_mission = loadgame("controller","current_mission");
		obj_controller.map = loadgame("controller","map");

		//sounds
		var sd_exist = loadgame("sound","exist");
		if sd_exist == true{
			var xx = loadgame("sound","x");var yy = loadgame("sound","y");
			var _real_x = loadgame("sound","real_x");var _real_y = loadgame("sound","real_y");
			var _icon = loadgame("sound","icon");var _sound = loadgame("sound","sound");
			with instance_create_depth(xx,yy,-999,obj_sounds){
				icon = _icon;sound = _sound;
				real_x = _real_x; real_y = _real_y;
			}
		}
	
		////demon
		//var demon_exist = loadgame("demon","exist");
		//if demon_exist == true{
		//	var xx = loadgame("demon","x");var yy = loadgame("demon","y");
		//	var _hp = loadgame("demon","hp");
		//	with instance_create_depth(xx,yy,-yy,obj_demon){
		//		hp = _hp;
		//	}
		//}
	
		//var demonsmall_exist = loadgame("demonsmall","exist");
		//if demonsmall_exist == true{
		//	var xx = loadgame("demonsmall","x");var yy = loadgame("demonsmall","y");
		//	var _hp = loadgame("demonsmall","hp");
		//	with instance_create_depth(xx,yy,-yy,obj_demonSMALL){
		//		hp = _hp;
		//	}
		//}
		

		
		//journal
		ds_list_destroy(obj_inventory.journal)
		obj_inventory.journal = ds_list_create()
		var num = loadgame("journal","num");
		for (var ii=0;ii<num;ii++){
			ds_list_add(obj_inventory.journal,loadgame_text("journal",string(ii+1)));
		}
			
		ini_close();
	 }
	else{
	}
	//random password
	//inst_9370057.pc_password = loadgame("password","pc_password");
}
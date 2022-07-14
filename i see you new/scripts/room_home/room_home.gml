// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function room_home(){
	if !instance_exists(obj_player) exit;
	
	switch scene{
		case 0: 
	
			// tv sound 
			if instance_exists(obj_tv){
				if point_distance(obj_player.x,obj_player.y,obj_tv.x,obj_tv.y) <= 300{
					with instance_create_depth(obj_tv.x,obj_tv.y,-999,obj_sounds){
						icon = spr_icon_tv;;real_x = obj_tv.x;real_y = obj_tv.y;
						sound = sd_tv;
					}
					tutorialbox(0);
					scene += 0.5;
				}
			}
			break;	
		
		case 1: 
	
			// bathroom
			timer ++;
			if timer >= room_speed *5{
				with instance_create_depth(inst_bath.x,inst_bath.y,-999,obj_sounds){
					icon = spr_icon_bath;real_x = inst_bath.x;real_y = inst_bath.y;
					sound = sd_bath;
				}
				scene += 0.5;
				timer = 0;
				inst_bath.actionable = true;
				inst_bathdoor.key = -1;
			
			}
		
			break;
		
		
		case 2:
	
			// delivery guy
			timer ++;
			if timer >= room_speed *20{
				with instance_create_depth(inst_gate.x,inst_gate.y,-999,obj_sounds){
					icon = spr_icon_doorbell;real_x = inst_gate.x;real_y = inst_gate.y;
					sound = sd_doorbell;
				}
				scene += 0.5;
				timer = 0;
				inst_gate.actionable = true;
			}
		
			break;
		
		case 3:
	
			// telephone
				if check_cactus
				timer ++;
		
			if timer >= room_speed*30{
				with instance_create_depth(obj_phone.x,obj_phone.y,-999,obj_sounds){
					icon = spr_icon_telephone;real_x = obj_phone.x;real_y = obj_phone.y;
					sound = sd_telephone;
				}
				scene += 0.5;
				timer = 0;
				obj_phone.actionable = true;
			}
			break;
		
		case 4: 
	
			// piano room
			timer ++;
			if timer >= room_speed *5{
				//with instance_create_depth(inst_piano.x,inst_piano.y,-999,obj_sounds){
					//icon = spr_icon_music;real_x = inst_piano.x;real_y = inst_piano.y;
					//sound = sd_piano_soundeffect;
				//}
				//inst_pianodoor1.actionable = true
				//inst_pianodoor2.actionable = true
				scene += 1;
				timer = 0;			
			}
		
			break;
		
		case 5:
	
			//telephone 2
			if check_pc
				timer++;
			
			if timer >= room_speed * 5{
				with instance_create_depth(2268,684,-999,obj_sounds){
					icon = spr_icon_telephone;real_x = obj_phone.x;real_y = obj_phone.y;
					sound = sd_telephone;
				}
				scene += 1;
				timer = 0;
				obj_phone.actionable = true;
			
			}
			break;
		
		case 6:
	
		////monster 1
		//	if monster1 && {
		//		take_action(action1);
		//		scene += 0.5;
		//	}
		//	break;
	
			break;
			
		
	}
}
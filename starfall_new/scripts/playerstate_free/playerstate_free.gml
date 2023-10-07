// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function playerstate_free(){
	
	#region ------------ movement ------------------------------
	
	image_speed = 1;
	input_direction = point_direction(0,0,keyright-keyleft,keydown-keyup);
	input_magnitude = abs(keyright - keyleft) or abs(keydown - keyup);
	if instance_exists(obj_joystick)
	{
		if obj_joystick.move
		{
			input_direction = obj_joystick.dirtofinger;
			input_magnitude = speedwalk;
		}
	}

	hs = lengthdir_x(input_magnitude * speedwalk ,input_direction);
	vs = lengthdir_y(input_magnitude * speedwalk,input_direction);
	
	//collision with concrete	
	var _list = ds_list_create();
	var _num = instance_place_list(x+hs, y, obj_concrete, _list, false);
	if _num > 0{
		for (var i = 0; i < _num; ++i;){
		    with(_list[| i]){	
				if object_get_parent(_list[| i].object_index) == obj_door{
					if _list[| i].state == "close" && other.pass_door = false
					
					other.hs = 0;
				}
				else other.hs = 0;
			}			
		}
	}
	ds_list_destroy(_list);
	
	var _list = ds_list_create();
	var _num = instance_place_list(x, y+vs, obj_concrete, _list, false);
	if _num > 0{
	    for (var i = 0; i < _num; ++i;){
	        with(_list[| i]){
				if object_get_parent(_list[| i].object_index) == obj_door{
					
					if _list[| i].state == "close" && other.pass_door = false
					other.vs = 0;
				}
				else other.vs = 0;
			}			
	    }
	}
	ds_list_destroy(_list);
	
	//if place_meeting(x,y,obj_stairs){
	//	hs = lengthdir_x(input_magnitude * speedwalk ,input_direction);
	//	vs = 0;
		
	//}
	
	x += hs;
	y += vs;
	

	// animation 
	if hs != 0 or vs != 0{
		//image_speed = 1;
		var dir = input_direction;
		if (dir >= 0 and dir <= 45) or (dir >= 315 and dir <= 360){
			sprite_index = sprRR; face = 0;
		}
		if dir > 45 and dir < 135{
			sprite_index = sprRU; face = 1;
		}
		if dir >= 135 and dir <= 225{
			sprite_index = sprRL; face = 2;
		}
		if dir > 225 and dir < 315{
			sprite_index = sprRD; face = 3;
		}
		
		// footprint
		if !walking{
			walking = true;
			alarm[0] = 0.5 * room_speed;
		}
		
		if !walking2{
			walking2 = true;
			alarm[1] = 30;
		}
	}
	// standing still
	else {
		if face == 0 sprite_index = sprR;
		if face == 1 sprite_index = sprU;
		if face == 2 sprite_index = sprL;
		if face == 3 sprite_index = sprD;
	}
	#endregion
	
	#region ------------ interact -----------------------------------
	if obj_joystick.alarm[0] > 0 exit;
	
	//near = instance_nearest(x,y,obj_interactable);
	near_item = instance_nearest(x,y,obj_item)
	
	if keyinteract && !obj_joystick.ready{
		
		// **************** open the door **********************
		with collision_circle(x,y,action_range*0.75,obj_door,0,0){
			if !obj_player.boss_fight{
				//if there is no action to do when opening the door
				if actionable = false{
					// check keys
					if key!= -99 and key != -1{
						audio_play_sound(sd_door_block,1,false)
						preset_inventory(key,id)
						take_action([[textbox,wrong_msg_text,wrong_msg_spk],
										[change_variable,obj_inventory,"show_inventory",true]]);
					}
					// open without keys
					else if key == -1{
						operate = true;
						if state == "close" audio_play_sound(sd_dooropen,99,0);
						if state == "open" {
							audio_play_sound(sd_doorclose,99,0);	
							obj_player.door_freeze = true;
						}
					}// cant open whatsoever
					else if key == -99{
						audio_play_sound(sd_door_block,1,false);
						textbox(wrong_msg_text,wrong_msg_spk);	
					}
				}
				// if there is action to do, then do the action
				else {
					take_action(action[current_action]);
					actionable = false;
				}
			}
		}
		
		// ************** furniture *********************
		with collision_circle(x,y,action_range,obj_furniture,0,0){	
			if collision_line(obj_player.x,obj_player.y,x,y,obj_wallsmall,0,0) == noone{
			
				// crafting
				if collision_circle(x,y,other.action_range,obj_furniture,0,0).object_index == obj_workshop{
					with obj_crafting{
						audio_play_sound(sd_interact,1,false);
						show_inventory = !show_inventory;
						m_slotx = 99;m_sloty = 99;picked_slot=99;
				
						if show_inventory {
							vk_c = virtual_key_add(1100-50,400-50,100,120,ord("C"));
							esc = virtual_key_add(1100-32,50-32,64,64,vk_escape);
						}
					}
				}
							
				if actionable = false{				
					if locked{
						audio_play_sound(sd_interact,1,false);
						if itembox_furniture != -1
							itembox(itembox_furniture,false);
						else {
							preset_inventory(key,id)
							take_action([[textbox,wrong_msg_text,[obj_player]],
							[change_variable,obj_inventory,"show_inventory",true]]);
						}
					}
				}
				
				// if there is action to do, then do the action
				else {
					audio_play_sound(sd_interact,1,false);
					take_action(action[current_action]);
					actionable = false;
				}
			}	
		}
		
		//************* stairs **********************
		with instance_place(x,y,obj_stairs){	
			//if id == other.near{
			if actionable == false{
				if !locked {
					if obj_player.boss_fight2 == false{
						audio_play_sound(sd_interact,1,false);
						fadetoroom(dest_room,60,c_black,dest_x,dest_y);
					}
				}
				else{
					if key == 99
					textbox(wrong_msg_text,wrong_msg_spk);
					else{
						preset_inventory(key,id)
						take_action([[textbox,wrong_msg_text,wrong_msg_spk],
								[change_variable,obj_inventory,"show_inventory",true]]);
					}
				}
			}
			else{
				take_action(action[current_action]);
			}
		}
		
		with collision_circle(x,y,action_range,obj_exposition,1,0){
			var _expo = instance_nearest(x,y,obj_exposition);
			textbox(_expo.text,_expo.spk);
		}
				
		// ************** items *********************
		if collision_circle(x,y,action_range,obj_item,0,0){
			with near_item{
				if collision_line(obj_player.x,obj_player.y,x,y,obj_wallsmall,0,0) == noone{
					if actionable = false{	
							audio_play_sound(sd_interact,1,false);
							itembox(id,0);
							if id.object_index == obj_cactus obj_controller.check_cactus = true;		
							if id.object_index == obj_pc obj_controller.check_pc = true;	
					}
					// if there is action to do, then do the action
					else{
						take_action(action[current_action]);
						actionable = false;
					}
				}
			}	
		}		
	}
	
	#endregion
	
	#region ------------ sign --------------------------------------
	//------------sign-------------------
	interactsign = false;
	
	if collision_circle(x,y,action_range*0.75,obj_door,0,0) {
		interactsign = true;
	}
	
	with collision_circle(x,y,action_range,obj_item,0,0){
		if collision_line(obj_player.x,obj_player.y,x,y,obj_wallsmall,0,0) == noone
		other.interactsign = true;
	}
	
	with collision_circle(x,y,action_range,obj_furniture,0,0){
		if actionable == true or locked == true{
			if collision_line(obj_player.x,obj_player.y,x,y,obj_wallsmall,0,0) == noone
			other.interactsign = true;
		}
	}
	
	with collision_circle(x,y,action_range,obj_workshop,0,0){
		if collision_line(obj_player.x,obj_player.y,x,y,obj_wallsmall,0,0) == noone
		other.interactsign = true;
	}
	
	if place_meeting(x,y,obj_stairs){
		interactsign = true;
	}
	
	if collision_circle(x,y,action_range,obj_exposition,1,0) interactsign = true;
	#endregion
	//show_debug_message(near)
}


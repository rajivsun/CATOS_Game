// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function end_scene(){
	scene ++;
	if scene > array_length_1d(action) - 1{
		instance_destroy();

		//show_debug_message(obj_player.state)
	}
}

function cutscene_wait(_dur){
	timer ++;
		
	if timer >= room_speed * _dur{
		timer = 0;
		end_scene();
	}
}

function cutscene_create(_x,_y,_layer,_obj){
	instance_create_layer(_x,_y,_layer,_obj);
	end_scene();
}

function cutscene_create_ext(_x,_y,_layer,_obj,_var,_value){
	var _id = instance_create_layer(_x,_y,_layer,_obj);
	with(_id){
		variable_instance_set(id,_var,_value);		
	}
	end_scene();
}

function cutscene_create_sound(_x,_y,_realx,_realy,_icon,_sound){
	with instance_create_layer(_x,_y,"world",obj_sounds){
		icon = _icon; sound = _sound;real_x = _realx;real_y = _realy;
	}
	end_scene();
}

function cutscene_destroy(_obj){
	if _obj == "sound"{
		instance_destroy(instance_nearest(x,y,obj_sounds));
	}
	else
		instance_destroy(_obj);
	end_scene();
}

function next_scene(){
	with(obj_controller){
		scene += 0.5;
	}
	end_scene();
}

function change_variable(_id,_var,_value){
	
	if _id == false{
			variable_global_set(_var,_value);
	}
		
	else {
		with(_id){
			variable_instance_set(id,_var,_value);		
		}
	}
		
	end_scene();
}

function animation_wait(_obj,_spr,_dur,_loop){
	
	//obj_controller.freeze_player = false;
	//show_debug_message("wtf")
	with _obj{	
		//if sprite_index != _spr{
			sprite_index  = _spr;
			image_speed = 1;	
			//image_index = 0;
		//}
		if _loop == false{
			if image_index >= image_number -1{
				image_index = image_number - 1;
				//show_debug_message("sdgsdqg")
			}
		}
	}
		
	timer ++;
		
	if timer >= room_speed * _dur{
		timer = 0;
		end_scene();
		_obj.image_speed = 0;
		_obj.image_index = 0;
		//obj_controller.freeze_player = true;
	}
	
}

function next_event(){
	with obj_controller{
		scene += 0.5;
	}
	end_scene();
}
	
function cutscene_fade(_room,_duration,_color){
	fadetoroom(_room,_duration,_color)	
	end_scene();
	
}
	
function cutscene_sound(_sound,_action,_loop){
	
	if _action = "play" {	
		audio_play_sound(_sound,1,_loop);
		audio_sound_gain(_sound,1,1);
	}
	if _action = "stop" audio_sound_gain(_sound,0,2000);
	end_scene();
}
	
function cutscene_deactivate(_item){
	instance_deactivate_object(_item);
	end_scene();
}
	
function cutscene_close_door(_id){

	with _id{
		if state == "open"{
			operate = true;
		}
	}		
	end_scene();
}
	
function cutscene_sound_ext(_sound,_icon,_x,_y,_realx,_realy){
	with instance_create_depth(_x,_y,-999,obj_sounds){
		icon = _icon;;real_x = _realx;real_y = _realy;
		sound = _sound;
	}
	end_scene();
}
	
function cutscene_move(_x,_y,_obj,_spd){
	
	with _obj{
		speed = _spd;
		direction = point_direction(x,y,_x,_y);
		if distance_to_point(_x,_y) < 0.1{
			speed = 0;
			with obj_cutscene end_scene()
		}
	}
}
	
function add_journal(_msg){
	obj_important_msg.journal = true
	ds_list_add(obj_inventory.journal,_msg);	
	if instance_exists(obj_cutscene){
		with obj_cutscene end_scene();
	}
}
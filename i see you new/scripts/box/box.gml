// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function textbox(_text,_speakers){
	
	if !instance_exists(obj_textbox){
		with instance_create_layer(x,y,"text",obj_textbox){
			text = _text; 
			speakers = _speakers
		}
	}
}

function itemtextbox(_text){
	
	if !instance_exists(obj_itemtextbox){
		with instance_create_layer(x,y,"text",obj_itemtextbox){
			text = _text; 
		}
	}
}

function itembox(_item,_shine){
	var original = id;
	if !instance_exists(obj_itembox){
		with instance_create_layer(x,y,"text",obj_itembox){
			
			// transfer all the informations of items to the itembox
			show_item = _item;
			xscale = _item.xscale;
			yscale = _item.yscale;
			original_item = original;

		}
		
		if _shine == true{
			part_particles_create(obj_particle.particle_system,obj_player.x,obj_player.y,
			obj_particle.particletype_smoke,1);	
			audio_play_sound(sd_discover,1,0);
		}
	}
}

function puzzlebox(_item){
	instance_destroy(obj_itembox);
	if !instance_exists(obj_puzzlebox){
		with instance_create_layer(x,y,"text",obj_puzzlebox){
			//puzzle = _item.puzzle;
			show_item = other.show_item;
			correct_code = other.show_item_code;
		}
	}
}
	
function tutorialbox(_tutorial){
	if !instance_exists(obj_tutorialbox){	
		with instance_create_depth(0,0,-9999,obj_tutorialbox){
			tutorial = _tutorial;
		}
		//obj_controller.tutorial ++;
	}
}

// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information

function take_action(_action){
	if !instance_exists(obj_cutscene){
		with instance_create_layer(x,y,"text",obj_cutscene){
			action = _action;
		}
	}
}


//function take_reward(_reward){
	

//	if !instance_exists(obj_cutscene){
//		with instance_create_layer(x,y,"text",obj_cutscene){
//			action = _reward;
//		}
//	}
//}


			
			
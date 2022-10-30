/// @description Insert description here
// You can write your code in this editor

//camera back to previous position
obj_camera.follow = obj_player;
//player back to previous state
//with obj_player{
//	state = other.playerstate;
//}
				
//end cutscene if its a cutscene dialogue
if instance_exists(obj_cutscene){
	with obj_cutscene{
		end_scene();
	}
}

//delete space key
virtual_key_delete(sp);

obj_player.alarm[4] = 5;
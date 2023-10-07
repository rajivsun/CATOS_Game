// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function player_sprite(){
	var cardinal_direction = round(direction/90);
	var total_frame = sprite_get_number(sprite_index)/4;
	
	image_index = localframe + (cardinal_direction * total_frame);
	
	localframe += sprite_get_speed(sprite_index) / 60;
	
	if localframe >= total_frame{
		localframe -= total_frame;	
		animationend = true;
	}
	
	else animationend = false;
	

}
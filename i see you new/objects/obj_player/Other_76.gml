/// @description Insert description here
// You can write your code in this editor

if (event_data[? "event_type"] == "sprite event"){
	
	switch (event_data[? "message"]){
		case "footstep":
			audio_play_sound(sd_footstep,99,0);
			break;
	}
}
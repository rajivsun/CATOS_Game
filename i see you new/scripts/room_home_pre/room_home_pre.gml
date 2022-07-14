// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function room_home_pre(){
	switch scene{
		
		case -1:
			take_action(action_pre)
			scene ++;
			break;		
		
		case 0:
			
			if !audio_is_playing(sd_background_wind)
			audio_play_sound(sd_background_wind,1,false);
			if obj_player.y <= 2200 && obj_player.x<1000{
			timer ++;
			
			if !audio_is_playing(sd_monsterhowl2)
			audio_play_sound(sd_monsterhowl2,1,false);
			
			if timer >= room_speed * 2{
				take_action(action);	
				scene += 1;
				timer = 0;
				}
			}
			break;	
			
		case 1:
		
			if obj_player.y <= 1800 && obj_player.x<1000{
			
				take_action(action1_1);	
				scene += 1;
			}
			break;		
	
		case 2:
			if obj_player.x > 1000{
				take_action(action1_2);
				scene += 1;
			}
			break;
		
		case 3:
			if obj_player.x>1000 && obj_player.y <= 1100{
				take_action(action2);
				scene += 1;				
			}
			break;
	}
}
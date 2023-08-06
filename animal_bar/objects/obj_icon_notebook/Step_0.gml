/// @description Insert description here
// You can write your code in this editor


x = obj_camera.x - (obj_camera.view_w_half - xstart);

if show_ui == true
{
	y_to = lerp(y_to,0,0.2);
	if keyboard_check_pressed(vk_escape)
	{
		show_ui = false;
		
	}
}
else
{
	y_to = lerp(y_to,540,0.2);
}

// scrolling through the characters
if device_mouse_x_to_gui(0) > 15 and device_mouse_x_to_gui(0) < 380 
and device_mouse_y_to_gui(0) > 100 and device_mouse_y_to_gui(0) < 600
{
	if mouse_wheel_down() and current_npc_index < array_length(character_list)-4
	{
		current_npc_index ++;
	}
	if mouse_wheel_up() and current_npc_index > 0
	{
		current_npc_index --;
	}
	
}
//	if keyboard_check_pressed(vk_right)
//	{
//		audio_stop_all();
//		current_music = min(current_music+1,array_length(music_list)-1);
//		audio_play_sound(music_list[current_music],99,true);
//		audio_resume_all();
//		music_playing = true;
//	}
//	if keyboard_check_pressed(vk_left)
//	{
//		audio_stop_all();
//		current_music = max(current_music-1,0);
//		audio_play_sound(music_list[current_music],99,true);
//		audio_resume_all();
//		music_playing = true;
//	}
//	if keyboard_check_pressed(vk_add)
//	{
//		if music_playing == true
//			audio_pause_all();
//		else audio_resume_all();
//		music_playing = -music_playing;
//	}
//}
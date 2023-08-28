/// @description Insert description here
// You can write your code in this editor


x = obj_camera.x - (obj_camera.view_w_half - xstart);

if show_platine == true
{
	if keyboard_check_pressed(vk_escape)
	{
		show_platine = false;
	}

	if keyboard_check_pressed(vk_right)
	{
		audio_stop_all();
		current_music = min(current_music+1,array_length(music_list)-1);
		audio_play_sound(music_list[current_music],99,true);
		audio_resume_all();
		music_playing = true;
	}
	if keyboard_check_pressed(vk_left)
	{
		audio_stop_all();
		current_music = max(current_music-1,0);
		audio_play_sound(music_list[current_music],99,true);
		audio_resume_all();
		music_playing = true;
	}
	if keyboard_check_pressed(vk_add)
	{
		if music_playing == true
			audio_pause_all();
		else audio_resume_all();
		music_playing = -music_playing;
	}
}
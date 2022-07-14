/// @description Insert description here
// You can write your code in this editor
if !instance_exists(obj_player) exit;

if obj_player.x > 1800 && obj_player.y <1200 && (real_x < 1800 or real_y < 1200){
	x = 2275; y = 678;
}
else if obj_player.x < 1800 && obj_player.y < 1200 && (real_y > 1200 && real_x < 1200){
	x = 487; y = 824;
}
else{
	x = real_x;
	y = real_y;
}

if !playing{
	//audio_play_sound_at(sd_tv,x,y,0,ref_amount,max_amount,factor_amount,1,1);
	audio_play_sound_on(sd_emitter,sound,true,1);
	playing = true;
}

audio_emitter_position(sd_emitter,x,y,0);
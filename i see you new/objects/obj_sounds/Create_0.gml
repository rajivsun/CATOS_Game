/// @description Insert description here
// You can write your code in this editor

//sound = -1;
icon = -1;
alarm[0] = 1;
_num = 0;
real_x = 0;
real_y = 0;
sound = -1;
playing = false;

sd_emitter = audio_emitter_create();
ref_amount = 200;
max_amount = 50;
factor_amount = 10;

audio_falloff_set_model(audio_falloff_linear_distance);
audio_emitter_position(sd_emitter,x,y,0);
audio_emitter_falloff(sd_emitter,100,700,1);

one_time = false;


/// @description Insert description here
// You can write your code in this editor

cutscene1_run = false;

sd_emitter2 = audio_emitter_create();
audio_falloff_set_model(audio_falloff_linear_distance);
audio_emitter_position(sd_emitter2,x,y,0);
audio_emitter_falloff(sd_emitter2,1000,2500,1)

sound_on = false;


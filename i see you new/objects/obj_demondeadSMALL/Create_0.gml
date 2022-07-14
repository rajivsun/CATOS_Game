/// @description Insert description here
// You can write your code in this editor

spark = 30;
sd_emitter2 = audio_emitter_create();
audio_falloff_set_model(audio_falloff_linear_distance);
audio_emitter_position(sd_emitter2,x,y,0);
audio_emitter_falloff(sd_emitter2,50,300,1)
audio_play_sound_on(sd_emitter2,sd_monsterdead,false,99);

screen_shake(15,120);

actiontext = [
"这种小家伙也想阻挠我？想多了吧"];

actionspk = [obj_player];

action = [
[textbox,actiontext,actionspk],
]


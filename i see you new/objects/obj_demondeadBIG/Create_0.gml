/// @description Insert description here
// You can write your code in this editor

spark = 30;
sd_emitter2 = audio_emitter_create();
audio_falloff_set_model(audio_falloff_linear_distance);
audio_emitter_position(sd_emitter2,x,y,0);
audio_emitter_falloff(sd_emitter2,50,300,1)
audio_play_sound_on(sd_emitter2,sd_monsterdead,false,99);

screen_shake(15,120);

if obj_main.language == "chinese"
{
	actiontext = [
	"呼...呼...呼...",
	"终于...结束了...",];
}
else if obj_main.language == "english"
{
	actiontext = [
	"That was intense...",
	"It's finally over.",];
}

actionspk = [obj_player,obj_player];

action = [
[cutscene_destroy,obj_itembox],
[textbox,actiontext,actionspk],
[change_variable,obj_baobaochair,"actionable",true],
//[change_variable,obj_controller,"current_mission",6],
[change_variable,obj_player,"boss_fight2",false],

]

if obj_main.mode == 1{
	obj_important_msg.kill_hardboss = true;
}
	
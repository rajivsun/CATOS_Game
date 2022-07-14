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
"这到底是个什么东西...",
"我到底是怎么了.......",
"不管了，我要去找我的番，这是我首先要做的事情"];
actiontext = 
[
"什么声音？是地下室传来的！",
];

actionspk = [obj_player,obj_player,obj_player];
actionspk = [obj_player];
action = [
[cutscene_destroy,obj_itembox],
//[change_variable,obj_car,"actionable",true],
[cutscene_sound,sd_collapse,"play",false],
[change_variable,inst_stairsUNDERDOWN,"image_index",1],
[change_variable,obj_camera,"follow",inst_stairsUNDERDOWN],
[change_variable,inst_stairsUNDERDOWN,"acting",true],
[screen_shake,10,200],
[cutscene_wait,2],
[textbox,actiontext,actionspk],
[change_variable,inst_stairsUNDERDOWN,"locked",false],
[change_variable,obj_controller,"current_mission",6],
[change_variable,obj_player,"boss_fight",false],
[change_variable,inst_stairsUNDERDOWN,"acting",false],
]


	
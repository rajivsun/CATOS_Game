/// @description Insert description here
// You can write your code in this editor


txt[0] = 
[
["",portrait.player_little],
[1,0],
];

action = 
[
[cutscene_fade_in,60,c_black],
[cutscene_destroy,obj_fishing_pod],
[cutscene_change_variable,obj_player,"state","fishing"],
[cutscene_fade_out,60,c_black],
[cutscene_create,x,y,"system",obj_tutorial],
//[cutscene_text,txt,0],
];
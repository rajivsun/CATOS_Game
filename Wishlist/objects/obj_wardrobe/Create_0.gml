/// @description Insert description here
// You can write your code in this editor

interactable = true;
sign_xscale = 0;
sign_yscale = 0;
show_sign = false;


action = 
[
	[cutscene_fade_in,60,c_black],
	[cutscene_change_variable,obj_player,"naked","false"],
	[cutscene_fade_out,60,c_black],
	
]
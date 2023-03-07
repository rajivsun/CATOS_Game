/// @description Insert description here
// You can write your code in this editor

draw_self();

//talk_sign_show = false;

if instance_exists(obj_player) 
{
	if obj_player.scan_world == false or instance_exists(obj_cellphone_call)
	sign_show(spr_talksign,0.2,0.2);
}


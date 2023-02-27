/// @description Insert description here
// You can write your code in this editor

draw_self();
if instance_exists(obj_player)
{
	if obj_player.scan_world == false
	sign_show(spr_interact_sign,0.12,0.12);
}


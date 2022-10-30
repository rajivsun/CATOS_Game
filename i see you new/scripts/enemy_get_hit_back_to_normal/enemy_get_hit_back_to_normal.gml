// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function enemy_get_hit_back_to_normal(){
	hit = false;
	direction = direction + 180;

	pathRun = false;
	state = "chase";

	_count1 = 0;
	_count2 = 0;
	_count3 = 0;
	if instance_exists(follow)
	{
		xTo = follow.x;
		yTo = follow.y;
	}
	see_player = true;
	cd_timer = 0;
	sprite_index = spr_idle;
	attack_sign = false;
}
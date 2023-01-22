// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function player_sprite(){

	if room == rm_CITY_TOP 
	{
		scale = 1;
		spr_idle = spr_player_worker;
		spr_run = spr_playerRUN;
		spr_walk = spr_playerWALK_worker;
	}
	else if room == rm_CITY_HOME
	{
		scale = 2;
		spr_idle = spr_player_home;
		spr_run = spr_player_home;
		spr_walk = spr_player_home;
	}
	else
	{
		scale = 1;
		spr_idle = spr_player;
		spr_sit = spr_playerSIT;
		spr_run = spr_playerRUN;
		spr_walk = spr_playerWALK;
	}
}
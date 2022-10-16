// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function playing_pc(){
	
	count_playing++;
	if count_playing >= 180
	{
		show_money(to_pc_id.money_unit);
		count_playing = 0;
		count_playing_time ++;
	}
	if count_playing_time >= 10
	{
		state = "go_home";
		to_pc_id.occupied = false;
		to_pc_id.active = false;
	}
}
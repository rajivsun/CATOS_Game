/// @description Insert description here
// You can write your code in this editor

if room == rm_ELEVATOR_INSIDE
{
	//count ++;
	//if count >= 180
	//{
	//	count = 0;
	//	fade(rm_METRO_SCENE,120);
	//}
}

if room == rm_METRO_SCENE
{
	//count ++;
	//if count >= 180
	//{
	//	count = 0;
	//	fade(rm_CITY_TOP,120);
	//}
}

if room == rm_METRO{
	count ++;
	if count >= 60
	{
		if play_scene == false
		{
			play_scene = true;
			take_action(action);
		}
	}
}
//if keyboard_check_pressed(vk_add)
//{
//	if room == rm_VILL_RIVER room_goto(rm_VILL_RIVER_123)
//	else if room == rm_VILL_RIVER_123 room_goto(rm_VILL_RIVER_douji)
//	else if room == rm_VILL_RIVER_douji room_goto(rm_VILL_RIVER_douji_game)
//	else if room == rm_VILL_RIVER_douji_game room_goto(rm_CITY_HOME)
//	//else if room == rm_CITY_HOME room_goto(rm_ELEVATOR_INSIDE)
//	//else if room == rm_CITY_TOP room_goto(rm_METRO_STATION_QUAI)
//	//else if room == rm_METRO_STATION_QUAI room_goto(rm_METRO)
//	//else if room == rm_METRO room_goto(rm_BAR)
//	//else if room == rm_BAR room_goto(rm_FOREST_TRAVEL)
//	//else if room == rm_FOREST_TRAVEL room_goto(rm_OLD_HOME)
//}

if room == rm_BAR
{
	if obj_player.x >= 200
	{
		if play_scene == false
		{
			play_scene = true;
			take_action(action);
		}
	}
}
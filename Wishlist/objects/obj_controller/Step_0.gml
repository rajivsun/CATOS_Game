/// @description Insert description here
// You can write your code in this editor


if room == rm_ELEVATOR_INSIDE
{
	count ++;
	if count >= 180
	{
		count = 0;
		fade(rm_METRO_SCENE,120);
	}
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

if keyboard_check_pressed(vk_add)
{
	if room == rm_VILL_RIVER room_goto(rm_VILL_RIVER_123)
	if room == rm_VILL_RIVER_123 room_goto(rm_VILL_RIVER_douji)
	if room == rm_VILL_RIVER_douji room_goto(rm_VILL_RIVER_douji_game)
	if room == rm_VILL_RIVER_douji_game room_goto(rm_CITY_HOME)
	if room == rm_CITY_HOME room_goto(rm_ELEVATOR_INSIDE)
	if room == rm_CITY_TOP room_goto(rm_METRO_STATION_QUAI)
	if room == rm_METRO_STATION_QUAI room_goto(rm_METRO)
	if room == rm_METRO room_goto(rm_BAR)
	if room == rm_BAR room_goto(rm_FOREST_TRAVEL)
	if room == rm_FOREST_TRAVEL room_goto(rm_OLD_HOME)
}
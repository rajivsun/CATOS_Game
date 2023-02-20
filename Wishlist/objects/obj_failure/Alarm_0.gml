/// @description Insert description here
// You can write your code in this editor

if pass == false
	fade(rm_VILL_RIVER_123,120);
else
{
	if obj_controller.game_123 = 0
	{
		obj_controller.game_123 ++;
		fade(rm_VILL_RIVER_123,120);
	}
	else
	{
		fade(rm_VILL_RIVER_douji,120);
	}
}



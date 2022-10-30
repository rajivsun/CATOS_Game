/// @description Insert description here
// You can write your code in this editor

if obj_main.language == "chinese"
{
	if obj_main.mode_bonus == "arcade" image_index = 1;
	else image_index = 0;
}

else if obj_main.language == "english"
{
	if obj_main.mode_bonus == "arcade" image_index = 3;
	else image_index = 2;
}

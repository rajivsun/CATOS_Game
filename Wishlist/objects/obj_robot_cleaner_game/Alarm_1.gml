/// @description between show result and next step
// You can write your code in this editor

if obj_controller.robot_cleaner_game_level <= obj_controller.robot_cleaner_game_level_all
{
	fade(rm_ROBOT_CLEANER,60);
}
else // if complete the cleaning mission
{ 
	obj_controller.clean_building = true;
	fade(rm_CITY_TOP,60,c_black,obj_player,225,303);
	
}
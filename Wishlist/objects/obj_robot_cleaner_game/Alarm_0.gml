/// @description Insert description here
// You can write your code in this editor


if instance_number(obj_tache) <= 0
{
	result = "win";
	obj_controller.robot_cleaner_game_level ++;
}
else
{
	result = "lose";
}

alarm[1] = 120;
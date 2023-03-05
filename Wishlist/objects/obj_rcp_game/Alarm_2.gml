/// @description Insert description here
// You can write your code in this editor


instance_destroy();


if win == true  
{
	if obj_controller.rcp_game_win == false
	{
		obj_controller.reward_beer = true;
		obj_controller.rcp_game_win = true;
	}
	obj_robot_rcp.interactable = false;	
	
}
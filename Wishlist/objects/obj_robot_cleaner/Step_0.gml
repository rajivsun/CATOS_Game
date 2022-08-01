/// @description Insert description here
// You can write your code in this editor

// robot cleaning start
if keyboard_check_pressed(vk_alt) && array_length(obj_robot_cleaner_game.mark_list) != 0 
{
	start = true;
}

if start = true 
{
	//set target position that robot goes to
	target_x = obj_robot_cleaner_game.mark_list[current_target][0];
	target_y = obj_robot_cleaner_game.mark_list[current_target][1];
	
	speed = robot_cleaner_speed;
	direction = point_direction(x,y,target_x,target_y);
	image_angle = direction;
	if point_distance(x,y,target_x,target_y) <= 2 
	{
		//if robot meet one mark then either it will stop, either it will go to the next mark
		if array_length(obj_robot_cleaner_game.mark_list)-1 > current_target
		{
			current_target ++;
		}
		else
		{
			finish = true;
			speed = 0;
		}
	}
}

//clean the taches
with instance_place(x,y,obj_tache)
{
	instance_destroy();
}



/// @description Insert description here
// You can write your code in this editor

// if it is show sign time then we dont do anything
if obj_dart_game.alarm[0] > 0
{
	speed = 0;
	x = 160;
	y = 90;
}
else
{
	speed = 0.5;
	if obj_dart_game.turn == 1
	{
		// add random movement to the pointer
		image_index = 0;
		direction = point_direction(x,y,rand_x,rand_y);

		if point_distance(x,y,rand_x,rand_y) <= 1 or alarm[0] = 30
		{
			rand_x = random_range(mouse_x - 10 , mouse_x + 10);
			rand_y = random_range(mouse_y - 10 , mouse_y + 10);

		}
	
		// if click, then launch the flechette
		if mouse_check_button_pressed(mb_left) 
		and obj_dart_game.flechette_left >= 1 
		and obj_dart_game.flechette_ready == true
		{
			obj_dart_game.flechette_left --;
			obj_dart_game.flechette_ready = false;
			var _rand_x = random_range(x-10,x+10);
			var _rand_y = random_range(y-10,y+10);
			with instance_create_layer(_rand_x,_rand_y,"flechette",obj_flechette) image_index = 0;
		}
	}

	else if obj_dart_game.turn == -1 
	{
		if current_target < 3
			{
			image_index = 1;
			var _target_x = obj_dart_game.fbg_targets[current_target][0];
			var _target_y = obj_dart_game.fbg_targets[current_target][1];
	
			direction = point_direction(x,y,_target_x, _target_y);

			// if reach target position, then launch the flechette
			if point_distance(x,y,_target_x,_target_y) <= 1 && obj_dart_game.flechette_ready == true
			{
				obj_dart_game.flechette_ready = false;
				obj_dart_game.flechette_left --;
				var _rand_x = random_range(_target_x-10,_target_x+10);
				var _rand_y = random_range(_target_y-10,_target_y+10);
				with instance_create_layer(_rand_x,_rand_y,"flechette",obj_flechette) image_index = 1;
				current_target ++;
		
			}
		}
		else
		{
			speed = 0;
		}
	
	}
}
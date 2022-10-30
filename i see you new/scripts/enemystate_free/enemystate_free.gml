// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function enemystate_free(){
	
	randomize();
	_count3 ++;
	
	if _count3 >= room_speed * 3{	
		
		if range_x[1] != 0 or range_y[1] != 0
		{
			var x_goal= random_range(range_x[0],range_x[1]);
			var y_goal= random_range(range_y[0],range_y[1]);
			while mp_grid_get_cell(global.grid,floor(x_goal/global.grid_size),floor(y_goal/global.grid_size)) == -1
			{
				x_goal= random_range(range_x[0],range_x[1]);
				y_goal= random_range(range_y[0],range_y[1]);
				//show_debug_message("gotcha")
			}
		}
		else
		{
			if room == rm_homeF1 or rm_homeF1_arcade
			{
				//floor 1
				if x < 1800 && y <= 1200{
					var x_goal= random_range(0,1800);
					var y_goal= random_range(0,1200);
					while mp_grid_get_cell(global.grid,floor(x_goal/global.grid_size),floor(y_goal/global.grid_size)) == -1
					{
						x_goal= random_range(0,1800);
						y_goal= random_range(0,1200);
						//show_debug_message("gotcha")
					}
				}
				//floor 2
				if x >= 1800 && y <= 1200{
					var x_goal= random_range(2200,2700);
					var y_goal= random_range(400,900);
					while mp_grid_get_cell(global.grid,floor(x_goal/global.grid_size),floor(y_goal/global.grid_size)) == -1
					{
						x_goal= random_range(2200,2700);
						y_goal= random_range(400,900);
						//show_debug_message("gotcha")
					}
				}
				// Floor 3
				if x >= 2400 && y >= 1200{
					var x_goal= random_range(2670,2878);
					var y_goal= random_range(1764,1900);
					while mp_grid_get_cell(global.grid,floor(x_goal/global.grid_size),floor(y_goal/global.grid_size)) == -1
					{
						x_goal= random_range(2670,2878);
						y_goal= random_range(1764,1900);
						//show_debug_message("gotcha")
					}	
				}
				// Underground
				if x <= 1200 && y >= 1200{
					var x_goal= random_range(227,809);
					var y_goal= random_range(1611,1939);
					while mp_grid_get_cell(global.grid,floor(x_goal/global.grid_size),floor(y_goal/global.grid_size)) == -1
					{
						x_goal= random_range(227,809);
						y_goal= random_range(1611,1939);
						//show_debug_message("gotcha")
					}	
				}
			}
		
			else if room == rm_sewer 
			{
				var x_goal= random_range(460,1400);
				var y_goal= random_range(420,1400);
				while mp_grid_get_cell(global.grid,floor(x_goal/global.grid_size),floor(y_goal/global.grid_size)) == -1
				{
					x_goal= random_range(460,1400);
					y_goal= random_range(420,1400);
					//show_debug_message("gotcha")
				}	
			}
		}
		var _path = path_add();
		mp_grid_path(global.grid, _path, x, y, x_goal, y_goal, true);
		path_start(_path,0.5,path_action_stop,false);
		_count3 = 0;
		state = "wander";
		//show_debug_message(string(x_goal)+string(y_goal))
	}

}


/// @description show added number
// You can write your code in this editor


// make the next flechette ready
obj_dart_game.flechette_ready = true;

// if no flechette left, then switch to next person

with obj_dart_game
{
	if flechette_left == 0
	{
		alarm[0] = 120; // show the turn sign
		turn = -turn;
		flechette_left = 3;
		instance_destroy(obj_flechette); // clean all the flechettes
		if turn == -1 // if its fbgs turn, he needs to do some AI
		{
			obj_pointer.current_target = 0;
			// generate random targets for feibiaoge
			for (var i=0;i<3;i++)
			{
				var rad = random(pi*2);
				var r = random(70);
				var _x = r * cos(rad) + 160;
				var _y = r * sin(rad) + 90;
				show_debug_message("x" + string(r * cos(rad)));
				show_debug_message("y" + string(r * sin(rad)));
				obj_dart_game.fbg_targets[i] = [_x,_y];	
			}
		}
		else if turn == 1
		{
				
		}
	}
}


/// @description Insert description here
// You can write your code in this editor

if obj_dart_game.turn == 1
{
	direction = point_direction(x,y,rand_x,rand_y);

	if point_distance(x,y,rand_x,rand_y) <= 1 or alarm[0] = 30
	{
		rand_x = random_range(mouse_x - 10 , mouse_x + 10);
		rand_y = random_range(mouse_y - 10 , mouse_y + 10);

	}
}

else if obj_dart_game.turn == -1
{
	
}
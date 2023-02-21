/// @description Insert description here
// You can write your code in this editor

speed = 0.5;
point_x = 140;
point_y = 84;
current_target = 0;
alarm[0] = 30;

if obj_controller.game_mode == "pc"
{
	rand_x = random_range(mouse_x - 10 , mouse_x + 10);
	rand_y = random_range(mouse_y - 10 , mouse_y + 10);
}
else
{
	rand_x = random_range(point_x - 10 , point_x + 10);
	rand_y = random_range(point_y - 10 , point_y + 10);
}
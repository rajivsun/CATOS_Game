/// @description Insert description here
// You can write your code in this editor


if keyboard_check_pressed(vk_numpad0) && !open_book_ui // open bird ui
{
	open_bird_ui = -open_bird_ui;
	if open_bird_ui == -1
	{
		obj_camera.y_to = clamp(obj_camera.y_to,0,room_height-obj_camera.view_h); // get back to original view
	}
}
if keyboard_check_pressed(vk_numpad1) && !open_bird_ui // open book ui
{
	open_book_ui = -open_book_ui;
}

if current_level_money >= current_level_need_money
{
	current_level_money = 0;
	//var new_level_up_money = level_up_need_money *2;
	current_level_need_money *= 2;
	level ++;
	//level_up_need_money = new_level_up_money;
}

/// @description Insert description here
// You can write your code in this editor


if turn == 1 // player turn
	{
		
	obj_pointer.image_index = 0;
	if mouse_check_button_pressed(mb_left) and flechette_left >= 1 && flechette_ready == true
	{
		flechette_left --;
		flechette_ready = false;
		var rand_x = random_range(obj_pointer.x-10,obj_pointer.x+10);
		var rand_y = random_range(obj_pointer.y-10,obj_pointer.y+10);
		instance_create_layer(rand_x,rand_y,"flechette",obj_flechette);
	}
}
else if turn == -1 // fbg turn
{

	obj_pointer.image_index = 1;
	
	
	
}
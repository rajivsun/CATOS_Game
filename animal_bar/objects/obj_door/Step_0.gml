/// @description Insert description here
// You can write your code in this editor

if open_door == true
{
	open_door = false;
	image_index = 1; // open door animation
	alarm[0] = 60; // delay to let the client come
	alarm[1] = 120; // close the door
}

x = layer_get_x("Bg") - dist_relative
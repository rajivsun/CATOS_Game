/// @description Insert description here
// You can write your code in this editor


speed = obj_train.speed;

if open == true
{
	image_speed = 1;
	if image_index >= image_number - 1
	{
		image_speed = 0;
		image_index = image_number - 1;
		interactable = true;
	}
}
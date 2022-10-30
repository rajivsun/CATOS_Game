/// @description Insert description here
// You can write your code in this editor

if obj_main.language == "chinese"
{
	image_index = 0;
	if obj_main.choose_chapiter == 2 image_index = 1;
	else image_index = 0;
}

else if obj_main.language == "english"
{
	image_index = 1;
	if obj_main.choose_chapiter == 2 image_index = 3;
	else image_index = 2;
}

/// @description Insert description here
// You can write your code in this editor


if alarm[0] <= 0 && !stopping
{
	stopping = true;
	speed = -5;
}

if x <= 900
{
	speed = min(0,speed+0.04);
	if speed = 0
	{
		obj_train_door.open = true;
	}
}


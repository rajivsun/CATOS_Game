/// @description Insert description here
// You can write your code in this editor


if room == rm_ELEVATOR_INSIDE
{
	count ++;
	if count >= 180
	{
		count = 0;
		fade(rm_METRO_SCENE,120);
	}
}

if room == rm_METRO_SCENE
{
	count ++;
	if count >= 180
	{
		count = 0;
		fade(rm_CITY_TOP,120);
	}
}

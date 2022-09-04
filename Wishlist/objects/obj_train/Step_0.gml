/// @description Insert description here
// You can write your code in this editor



if obj_player.x >= 224 && !stopping
{
	stopping =true;
	speed = -5;
}

if x <= 900
{
	speed = min(0,speed+0.04);

}
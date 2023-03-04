/// @description Insert description here
// You can write your code in this editor


if keyboard_check_pressed(ord("O"))
{
	stopping = true;
}

if stopping
{
	alpha -= 0.02;
}
if alpha <= 0
{
	instance_destroy();
	instance_create_layer(x,y,"system",obj_arcade_shoot_game);
}
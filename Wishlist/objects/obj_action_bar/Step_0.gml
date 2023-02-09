/// @description Insert description here
// You can write your code in this editor

if keyboard_check_pressed(ord("E"))
{
	hp +=10;
}

if hp >= hp_max
{
	take_action(action);
	instance_destroy();
}
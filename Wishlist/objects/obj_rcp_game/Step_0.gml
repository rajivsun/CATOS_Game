/// @description Insert description here
// You can write your code in this editor

if over == true exit;

hit = false;
if keyboard_check_pressed(vk_numpad7)
{
	out = "paper";
	hit = true;
}
if keyboard_check_pressed(vk_numpad8)
{
	out = "rock";
	hit = true;
}
if keyboard_check_pressed(vk_numpad9)
{
	out = "scisor";
	hit = true;  
}

if hit == true and ! played
{
	played = true;
	alarm[0] = 60;
}





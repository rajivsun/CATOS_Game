/// @description Insert description here
// You can write your code in this editor

draw_self();

if obj_controller.start == true
{
	if keyctrl and obj_controller.start_wave == false
	draw_healthbar(x-10,y-10,x+10,y-13,count_night/180*100,c_black,c_green,c_green,0,true,true)
}
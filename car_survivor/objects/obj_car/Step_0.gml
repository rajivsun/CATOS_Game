/// @description Insert description here
// You can write your code in this editor


//dir = point_direction(x,y,mouse_x,mouse_y);
var _x =( keyboard_check(vk_left) - keyboard_check(vk_right)) | keyboard_check(ord("Q")) - keyboard_check(ord("D"));
var _y =( keyboard_check(vk_up) - keyboard_check(vk_down)) |  keyboard_check(ord("Z")) - keyboard_check(ord("S"));



if _x != 0 or _y != 0
{
	dir = point_direction(_x,_y,0,0);
	friction = 0;
	motion_add(dir,acceleration);
	speed = min(speed,top_speed);
}
else
{
	friction = acceleration;
}

if speed > 0
{
	var _turn_amount = angle_difference(image_angle,dir) * acceleration;
	image_angle -= _turn_amount;
	
	var _dust_x = x + lengthdir_x(20,image_angle+180);
	var _dust_y = y + lengthdir_y(20,image_angle+180);
	instance_create_layer(_dust_x+random_range(-4,4),_dust_y+random_range(-4,4),"Player",obj_dust);
	
}




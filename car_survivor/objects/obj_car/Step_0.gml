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
	
	var _dust_x1 = x + lengthdir_x(18,image_angle+60);
	var _dust_y1 = y + lengthdir_y(18,image_angle+60);
	var _dust_x2 = x + lengthdir_x(18,image_angle+120);
	var _dust_y2 = y + lengthdir_y(18,image_angle+120);
	var _dust_x3 = x + lengthdir_x(18,image_angle+240);
	var _dust_y3 = y + lengthdir_y(18,image_angle+240);
	var _dust_x4 = x + lengthdir_x(18,image_angle+300);
	var _dust_y4 = y + lengthdir_y(18,image_angle+300);	
	var _dust_x5 = x + lengthdir_x(20,image_angle+180);
	var _dust_y5 = y + lengthdir_y(20,image_angle+180);		
	instance_create_layer(_dust_x1+random_range(-4,4),_dust_y1+random_range(-4,4),"Player",obj_dust_small);
	instance_create_layer(_dust_x2+random_range(-4,4),_dust_y2+random_range(-4,4),"Player",obj_dust_small);
	instance_create_layer(_dust_x3+random_range(-4,4),_dust_y3+random_range(-4,4),"Player",obj_dust_small);
	instance_create_layer(_dust_x4+random_range(-4,4),_dust_y4+random_range(-4,4),"Player",obj_dust_small);
	instance_create_layer(_dust_x5+random_range(-4,4),_dust_y5+random_range(-4,4),"Player",obj_dust);	
}




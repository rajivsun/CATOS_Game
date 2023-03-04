/// @description Insert description here
// You can write your code in this editor

right = keyboard_check(vk_right) or keyboard_check(ord("D"));
left = keyboard_check(vk_left) or keyboard_check(ord("Q")); 
down = keyboard_check(vk_down) or keyboard_check(ord("S"));
up = keyboard_check(vk_up) or keyboard_check(ord("Z"));
shoot = keyboard_check(ord("E"));

var move = right - left;
var vertical = down - up;
vspd = vertical * walkspd;
hspd = move * walkspd;
	
// Collisions horizontales
if (place_meeting(x + hspd, y, obj_wall))
{
	while (!place_meeting(x + sign(hspd),y,obj_wall))
	{
		x = x + sign(hspd);
	}
	hspd = 0;
}
// Collisions verticales
if (place_meeting(x,y + vspd, obj_wall))
{
	while(!place_meeting(x, y + sign(vspd), obj_wall))
	{
		y = y + sign(vspd);
	}
	vspd = 0;
}

x = x + hspd;
y = y + vspd;

// shooting
cd --;
if shoot && cd <= 0 
{
	cd = 10;
	if level == 0
	{
		instance_create_layer(x,y,"ship",obj_arcade_bullet);
	}
	else if level == 1
	{
		instance_create_layer(x+7,y,"ship",obj_arcade_bullet);
		instance_create_layer(x-7,y,"ship",obj_arcade_bullet);
	}
	else if level == 2
	{
		instance_create_layer(x+14,y,"ship",obj_arcade_bullet);
		instance_create_layer(x,y,"ship",obj_arcade_bullet);		
		instance_create_layer(x-14,y,"ship",obj_arcade_bullet);		
	}
	else if level >= 3
	{
		with instance_create_layer(x-14,y,"ship",obj_arcade_bullet)
		{
			direction = 120;
			image_angle = direction-90;
		}
		with instance_create_layer(x+14,y,"ship",obj_arcade_bullet)
		{
			direction = 60;
			image_angle = direction-90;
		}
		instance_create_layer(x+14,y,"ship",obj_arcade_bullet);
		instance_create_layer(x,y,"ship",obj_arcade_bullet);		
		instance_create_layer(x-14,y,"ship",obj_arcade_bullet);		
	}
}
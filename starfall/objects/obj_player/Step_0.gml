/// @description Insert description here
// You can write your code in this editor

keyleft = keyboard_check(ord("Q"));
keyright = keyboard_check(ord("D"));
keyup = keyboard_check(ord("Z"));
keydown = keyboard_check(ord("S"));
//keyactive = keyboard_check_pressed(ord("E"));

//movement
player_movement();
if place_meeting(x,y,obj_coin)
{
	instance_destroy(instance_place(x,y,obj_coin));
	obj_controller.gold += 1;
}

// shooting
shoot_cd ++;
//if collision_circle(x,y,shoot_range,obj_enemy,false,false) and shoot_cd >= shoot_speed * room_speed
if mouse_check_button(mb_left) and shoot_cd >= shoot_speed * room_speed
{
	var _nearest_enemy = instance_nearest(x,y,obj_enemy)
	shoot_cd = 0;
	with instance_create_layer(x,y,"player",obj_bullet)
	{
		speed = 20;
		damage = other.shoot_dmg;
		direction = point_direction(x,y,mouse_x,mouse_y);
		image_angle = direction;
	}
}
// pass to night
if obj_controller.start = true
{
	if keyboard_check_pressed(vk_control)
	{
		obj_controller.start_wave = true;
	}
}


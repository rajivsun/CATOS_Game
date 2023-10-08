/// @description Insert description here
// You can write your code in this editor
depth = -y

keyleft = keyboard_check(ord("Q"));
keyright = keyboard_check(ord("D"));
keyup = keyboard_check(ord("Z"));
keydown = keyboard_check(ord("S"));
keyctrl = keyboard_check(vk_control);
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

	shoot_bullet(x,y,speed_bullet,shoot_dmg,point_direction(x,y,mouse_x,mouse_y))
}

// pass to night
count_night = max(0,count_night -1)
if obj_controller.start = true 
{
	if keyctrl and obj_controller.start_wave == false
	{
		count_night +=2;
		if count_night >= 180
			obj_controller.start_wave = true;
			
	}
}


/// @description Insert description here
// You can write your code in this editor
if room != rm_home_pre if pause() or alarm[0] > 0  exit;
if !instance_exists(obj_player) exit;

// move
if obj_main.platform == "mobile"
{
	var device_move = 0;
	var device_shoot = 0;

	if device_mouse_x_to_gui(0) < 500 {
		device_move = 0; device_shoot = 1;
		//else move = 0;
	}
	if device_mouse_x_to_gui(0) > 500{
		device_move = 1; device_shoot = 0;
	}

	move = device_mouse_check_button(device_move,mb_left);
	shoot = device_mouse_check_button(device_shoot,mb_left);
	
	if ready  && device_mouse_check_button_released(device_shoot,mb_left)
	{
		release = true;
		//se = virtual_key_add(e_x-15*4,e_y-15*4,30*4,30*4,ord("E"));
	}
	else
	{
		//virtual_key_delete(se);
		release = false;
	}

	// moving button-----------------------------
	var fingerx = device_mouse_x_to_gui(device_move);
	var fingery = device_mouse_y_to_gui(device_move);
	//var distostable = point_distance(fingerx,fingery,joystickSx,joystickSy);

	dirtofinger = point_direction(joystickSx,joystickSy,fingerx,fingery);

	if move
	{
		joystickMx = joystickSx + lengthdir_x(joystickW,dirtofinger);
		joystickMy = joystickSy +  lengthdir_y(joystickW,dirtofinger);
	}
	else
	{
		joystickMx = joystickSx;
		joystickMy = joystickSy;
	}
}

// shooting -------------------------------------------
if obj_player.weapon == 0 exit;

if obj_main.platform == "mobile"
{
	var fingerx2 = device_mouse_x_to_gui(device_shoot);
	var fingery2 = device_mouse_y_to_gui(device_shoot);

	//var distostable = point_distance(fingerx,fingery,joystickSx,joystickSy);
	dirtofinger2 = point_direction(shotSx,shotSy,fingerx2,fingery2);

	if fingerx2 >= shotSx-r && fingery2 >=shotSy-r && fingerx2 <= shotSx+r && fingery2 <= shotSy+r
	&& obj_player.reloading == false{
		if shoot{
			shotMx = shotSx + lengthdir_x(shotW,dirtofinger2);
			shotMy = shotSy +  lengthdir_y(shotW,dirtofinger2);
			r = 300;
			ready = true;
		}

		else{
			shotMx = shotSx;
			shotMy = shotSy;
			r = 50;
			ready = false;
		}
	}
}
else if obj_main.platform == "PC"
{
	shoot = mouse_check_button(mb_right);
	if ready  && mouse_check_button(mb_left)
	{
		release = true;
	}
	else
	{
		release = false;
	}
	if obj_player.reloading == false
	{
		dirtofinger2 = point_direction(obj_player.x,obj_player.y,mouse_x,mouse_y);
		if shoot
		{
			ready = true;
			r = 300;
		}
		else
		{
			ready = false;
			r = 50;
		}
	}
}


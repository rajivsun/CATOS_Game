/// @description Insert description here
// You can write your code in this editor


//inst_wall_elevator.vspeed = vspeed;


if start == true
{
	if dir == "down"
	{
		vspeed = elevator_speed;
		if y >= end_pos{
			vspeed = 0;
			start = false;
			dir = "up";
		}
		//obj_player.vspeed = vspeed;
		
	}
	else if dir == "up"
	{
		vspeed = -elevator_speed;
		if y <= start_pos
		{
			vspeed = 0;
			start = false;
			dir = "down";
		}
	}
	obj_player.vspeed = vspeed;
}

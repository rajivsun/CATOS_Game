/// @description Insert description here
// You can write your code in this editor



dir = point_direction(x,y,obj_car.x,obj_car.y);


if x != 0 or y != 0
{
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
}

if (place_meeting(x, y, obj_enemy))
{
    var ii = instance_place(x, y, obj_enemy);
    if (ii != noone)
    {
        direction = darctan2( (y - ii.y), (ii.x - x) );
        speed = -2;
        if (alarm[4] == -1) alarm[4] = 15;
    }
} else {}
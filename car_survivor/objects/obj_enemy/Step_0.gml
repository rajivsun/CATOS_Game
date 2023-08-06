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
	//var _dust_x1 = x + lengthdir_x(18,image_angle+60);
	//var _dust_y1 = y + lengthdir_y(18,image_angle+60);
	//var _dust_x2 = x + lengthdir_x(18,image_angle+120);
	//var _dust_y2 = y + lengthdir_y(18,image_angle+120);
	//var _dust_x3 = x + lengthdir_x(18,image_angle+240);
	//var _dust_y3 = y + lengthdir_y(18,image_angle+240);
	//var _dust_x4 = x + lengthdir_x(18,image_angle+300);
	//var _dust_y4 = y + lengthdir_y(18,image_angle+300);	
	//var _dust_x5 = x + lengthdir_x(20,image_angle+180);
	//var _dust_y5 = y + lengthdir_y(20,image_angle+180);		
	//instance_create_layer(_dust_x1+random_range(-4,4),_dust_y1+random_range(-4,4),"Player",obj_dust_small);
	//instance_create_layer(_dust_x2+random_range(-4,4),_dust_y2+random_range(-4,4),"Player",obj_dust_small);
	//instance_create_layer(_dust_x3+random_range(-4,4),_dust_y3+random_range(-4,4),"Player",obj_dust_small);
	//instance_create_layer(_dust_x4+random_range(-4,4),_dust_y4+random_range(-4,4),"Player",obj_dust_small);
	//instance_create_layer(_dust_x5+random_range(-4,4),_dust_y5+random_range(-4,4),"Player",obj_dust);	
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
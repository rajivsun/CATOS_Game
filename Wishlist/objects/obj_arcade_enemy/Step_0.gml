/// @description Insert description here
// You can write your code in this editor

if !instance_exists(obj_arcade_ship) exit;

switch state
{
	case "born":
		if point_distance(x,y,obj_arcade_ship.x,obj_arcade_ship.y) <= 150
		{
			vspeed = 1;
			state = "attack";
		}
		break;
		
	case "attack":
		cd--;
		if cd <= 0
		{
			cd = 180;
			instance_create_layer(x,y,"enemy",obj_aracade_bullet_enemy);
		}
		break;
}


if y >= room_height or hp <= 0
{
	instance_destroy();
	if random(10) < 2
	{
		if random(10) < 5
			instance_create_layer(x,y,"enemy",obj_arcade_upgrade);
		else
			instance_create_layer(x,y,"enemy",obj_arcade_heart);
	}
	instance_create_layer(x,y,"enemy",obj_explosion);
}


	
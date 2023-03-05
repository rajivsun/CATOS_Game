/// @description Insert description here
// You can write your code in this editor

if !instance_exists(obj_arcade_ship) exit;

switch state
{
	case "born":
		if y >= 30
		{
			vspeed = 0;
			state = "attack";
		}
		break;

	case "attack":
		cd--;
		if cd <= 0
		{
			cd = 60;
			instance_create_layer(x,y,"enemy",obj_aracade_bullet_enemy);
		}
		break;
}

if y >= room_height or hp <= 0
{
	instance_destroy();
	obj_arcade_shoot_game.win = true;
	obj_arcade_shoot_game.alarm[2] = 180;
	instance_create_layer(x-20,y-20,"enemy",obj_explosion);
	instance_create_layer(x,y+20,"enemy",obj_explosion);	
	instance_create_layer(x+10,y,"enemy",obj_explosion);
}
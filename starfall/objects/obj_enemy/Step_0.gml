/// @description Insert description here
// You can write your code in this editor

// movement
direction = point_direction(x,y,obj_player.x,obj_player.y);


// dead
if hp <= 0
{
	instance_destroy();
	//instance_create_layer(x,y,"enemy",obj_coin);
}

depth = -y;

if speed != 0
{
	sprite_index = spr_enemy_run;
}
else
{
	sprite_index = spr_enemy;
}

//if (place_meeting(x, y, obj_enemy))
//{
//var push = 10;
//x -= lengthdir_x(push,point_direction(x,y,other.x,other.y));
//y-= lengthdir_y(push,point_direction(x,y,other.x,other.y));
//}
//else{}


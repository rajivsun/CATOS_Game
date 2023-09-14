/// @description Insert description here
// You can write your code in this editor

// movement
direction = point_direction(x,y,obj_player.x,obj_player.y);


// dead
if hp <= 0
{
	instance_destroy();
	instance_create_layer(x,y,"enemy",obj_coin);
}
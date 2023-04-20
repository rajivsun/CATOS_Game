// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function gun_movement(){
	var angle = point_direction(obj_player.x,obj_player.y,mouse_x,mouse_y); 
	image_angle = angle;
	var base_x = obj_player.x + obj_player.image_xscale*2;
	var base_y = obj_player.y - 14;
	var r = 50;
	x = base_x;
	y = base_y;
}
// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function player_movement(){
	input_direction = point_direction(0,0,keyright-keyleft,keydown-keyup);
	input_magnitude = abs(keyright - keyleft) or abs(keydown - keyup);

	hs = lengthdir_x(input_magnitude * speedwalk,input_direction);
	vs = lengthdir_y(input_magnitude * speedwalk,input_direction);

	if place_meeting(x+hs,y,obj_wall){
		hs = 0;
	}
	if place_meeting(x,y+vs,obj_wall){
		vs = 0;
	}

	x += hs;
	y += vs;
	
	// animation 
	if hs != 0 or vs != 0
	{
		sprite_index = spr_playerRL;
	}
	else
	{
		sprite_index = spr_playerL;
	}
	image_xscale = -sign(mouse_x - x)
	//if hs != 0 or vs != 0{
	//	//image_speed = 1;
	//	var dir = input_direction;
	//	if (dir >= 0 and dir <= 45) or (dir >= 315 and dir <= 360){
	//		sprite_index = sprRR; face = 0;
	//	}
	//	if dir > 45 and dir < 135{
	//		sprite_index = sprRU; face = 1;
	//	}
	//	if dir >= 135 and dir <= 225{
	//		sprite_index = sprRL; face = 2;
	//	}
	//	if dir > 225 and dir < 315{
	//		sprite_index = sprRD; face = 3;
	//	}		
	//}
	//	// standing still
	//else {
	//	if face == 0 sprite_index = sprR;
	//	if face == 1 sprite_index = sprU;
	//	if face == 2 sprite_index = sprL;
	//	if face == 3 sprite_index = sprD;
	//}
}
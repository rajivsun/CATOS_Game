// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function player_shoot(){
	
	// ANIMATION
	if (hspd == 0)
	{
		sprite_index = spr_shoot_pistol_idle;
	}
	else
	{
		sprite_index = spr_shoot_pistol_walk;
	}
	
	player_movement_ground();
	if mouse_check_button_released(mb_right) state = "idle";
	if sign(mouse_x - obj_player.x) != 0 image_xscale = sign(mouse_x - obj_player.x)
	
	cd_shoot --;
	// click shooting
	if mouse_check_button_pressed(mb_left) and cd_shoot <= 0
	{
		cd_shoot = 5;
		instance_create_layer(x,y,"player",obj_gun_shoot_effect);
		screen_shake();
		
		// recoil
		if point_direction(x,y,mouse_x,mouse_y) >= 90 and point_direction(x,y,mouse_x,mouse_y) <= 270 recoil_angle = -recoil_magnitude;
		else recoil_angle = recoil_magnitude;
	}
}
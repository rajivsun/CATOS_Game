// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function player_idle(){
	
	//--------------- movement --------------------		
	player_run();

	if instance_exists(obj_textbox) or instance_exists(obj_fade)
	{
		sprite_index = spr_idle;
	}
	else
	{
		// ------------------- interact --------------------
		nearest =instance_nearest(x,y,obj_interactable);
		if interact and !scan_world and !instance_exists(obj_cellphone_call)
		{
			player_interact();
		}
			
		player_movement_ground();
	}
	
	// ANIMATION
	if (hspd == 0)
	{
		sprite_index = spr_idle;
	}
	else
	{
		sprite_index = spr_walk;
	}
	if (hspd != 0 ) image_xscale = sign(hspd)*scale;
}
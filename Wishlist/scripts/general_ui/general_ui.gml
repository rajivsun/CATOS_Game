// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function general_ui(){


	// game mode 
	if game_mode == "mobile" and !instance_exists(obj_rcp_game) and !instance_exists(obj_hack_UI_AC)
	and !instance_exists(obj_commentor) and room != rm_DART and obj_controller.camera_scene == false
	and !instance_exists(obj_arcade_shoot_game_open) and room != rm_BAR_pre and !instance_exists(obj_textbox)
	and !instance_exists(obj_commentor_pre)
	{
		draw_sprite_ext(spr_key_E,0,1800,800,2,2,0,c_white,1);
		if room == rm_METRO_SCENE exit;
		draw_sprite_ext(spr_key_left,0,100,button_y-100,2,2,0,c_white,1);
		draw_sprite_ext(spr_key_right,0,400,button_y-100,2,2,0,c_white,1);
		//draw_sprite(spr_key_space,0,1500,button_y);
		//draw_sprite(spr_key_shift,0,1300,button_y);
	}
	// pause menu
	// draw_sprite_ext(spr_pause_button,0,1820,50,1.5,1.5,0,c_white,1);
}
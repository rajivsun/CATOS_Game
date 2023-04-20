// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function general_ui()
{
	
	// game mode 
	if game_mode == "mobile" 
	and !instance_exists(obj_commentor) 
	and !instance_exists(obj_textbox)
	and !instance_exists(obj_commentor_pre)
	{
		draw_sprite_ext(spr_key_E,0,1800,800,2,2,0,c_white,1);
		draw_sprite_ext(spr_key_left,0,100,button_y-100,2,2,0,c_white,1);
		draw_sprite_ext(spr_key_right,0,400,button_y-100,2,2,0,c_white,1);
	}
}
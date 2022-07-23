// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function sign_show(_sign_to_show,_sign_xscale,_sign_yscale){
	
	if place_meeting(x,y,obj_player) and id == obj_player.nearest and !instance_exists(obj_cutscene) 
	and interactable and !instance_exists(obj_textbox)
	{
		show_sign = true;
	}
	else
	{
		show_sign = false;
	}

	if show_sign == true 
	{	
		sign_xscale = lerp(sign_xscale,_sign_xscale,0.1);
		sign_yscale = lerp(sign_yscale,_sign_xscale,0.1);
		draw_sprite_ext(_sign_to_show,0,x,y-sprite_height/2+sign_y_buffer,sign_xscale,sign_yscale,0,c_white,1);
	}
	else
	{
		sign_xscale = lerp(sign_xscale,0,0.1);
		sign_yscale = lerp(sign_yscale,0,0.1);
		draw_sprite_ext(_sign_to_show,0,x,y-sprite_height/2+sign_y_buffer,sign_xscale,sign_yscale,0,c_white,1);	
	}


}
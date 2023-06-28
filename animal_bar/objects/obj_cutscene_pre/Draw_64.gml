/// @description Insert description here
// You can write your code in this editor

// draw cutscene text
draw_set_font(ft_chinese);
draw_set_valign(fa_middle);draw_set_halign(fa_center);
draw_set_alpha(alpha);
draw_text_transformed(display_get_gui_width()/2,display_get_gui_height()/2,msg,0.6,0.6,0);
draw_set_alpha(1);

//// pass sign
//if pass = false{
//	draw_text(1100,50,_skip);
//	draw_sprite_ext(spr_next,0,1200,50,2,2,0,c_white,1);
//}

//_count += 4/60;
	
//if obj_main.current_end == -1
//{

//	var lay_id = layer_get_id("rail");
//	var back_id = layer_background_get_id(lay_id);
//	layer_background_alpha(back_id, alpha_train);
//	//draw_sprite_ext(spr_cutscene_train,_count,0,0,4,3.2,0,c_white,alpha_train);
//}

//else if obj_main.current_end = 0
//{
//	if current == 6
//		alpha_train -= 0.5/60;
//	draw_sprite_ext(spr_playerRL,_count,640,500,4,4,0,c_white,alpha_train);
//}
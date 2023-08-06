/// @description Insert description here
// You can write your code in this editor


if show_ui
{
	draw_set_alpha(alpha_fond)
	draw_rectangle_color(0,0,display_get_gui_width(),display_get_gui_height(),c_black,c_black,c_black,c_black,false);
	draw_set_alpha(1)
	alpha_fond = lerp(alpha_fond,0.5,0.1);
	depth = -9999;
	

}
//else
//{
//	rotation_plate = 0;
//	depth = initial_depth;
//	alpha_fond = lerp(alpha_fond,0,0.1);
//	draw_set_alpha(alpha_fond)
//	draw_rectangle_color(0,0,display_get_gui_width(),display_get_gui_height(),c_black,c_black,c_black,c_black,false);
//	draw_set_alpha(1)
//}


// draw whats on the notebook
draw_sprite_ext(spr_ui_notebook,0,0,y_to,2,2,0,c_white,1);
draw_set_font(ft_chinese);
draw_set_halign(fa_right);
draw_set_valign(fa_middle);
//draw_text_transformed_color(350,65+y_to,"Contact",2,2,0,#FFDC65,#FFDC65,#FFDC65,#FFDC65,1);
draw_text_transformed(350,65+y_to,"Contact",2,2,0);

for (var i=0;i<4;i++)
{
	
	// draw block
	draw_sprite_ext(spr_ui_notebook_block,0,0,y_to+i*100,2,2,0,c_white,1);
	draw_sprite_ext(character_list[i+current_npc_index],0,100,y_to+220+i*100,0.5,0.5,0,c_white,1);
	draw_set_font(ft_chinese);
	draw_set_halign(fa_left);
	draw_set_valign(fa_middle);
	// character info
	draw_text_transformed_color(150,155+y_to+i*100,npc_names[i+current_npc_index],0.5,0.5,0,c_black,c_black,c_black,c_black,1);
	draw_text_transformed_color(150,185+y_to+i*100,npc_description[i+current_npc_index],0.5,0.5,0,c_dkgray,c_dkgray,c_dkgray,c_dkgray,1);
	
	// slider
	var _interval_height = 172/(array_length(character_list)-4)
	draw_sprite_ext(spr_ui_notebook_slider,0,0,y_to+current_npc_index*_interval_height*2,2,2,0,c_white,1);
}

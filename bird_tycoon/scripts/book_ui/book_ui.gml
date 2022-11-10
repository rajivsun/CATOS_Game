// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function book_ui()
{
	// book overall ui
	draw_set_alpha(0.8*book_ui_alpha);
	draw_rectangle_color(0,0,display_get_gui_width(),2100,c_black,c_black,c_black,c_black,false);
	draw_set_alpha(1);
	draw_sprite_ext(spr_book_ui,0,display_get_gui_width()/2,display_get_gui_height()/2,5.5,5.5,0,c_white,book_ui_alpha);
		
	// change page 
	draw_sprite_ext(spr_change_page_icon,0,800,1950,5.5,5.5,0,c_white,book_ui_alpha);
	draw_sprite_ext(spr_change_page_icon,0,300,1950,-5.5,5.5,0,c_white,book_ui_alpha);
		
	if open_book_ui == 1
	{
		if keyboard_check_pressed(vk_right)
			current_page = min(current_page+1,array_length(ls_bird_possesed)-1)
		if keyboard_check_pressed(vk_left)
			current_page = max(current_page-1,0);
	}	
			
	draw_set_font(ft_info_num_big)
	draw_set_valign(fa_middle);
	draw_set_halign(fa_center);
	draw_text_color(550,1950,string(current_page+1) + " / " + string(array_length(ls_bird_possesed)),
	c_white,c_white,c_white,c_white,book_ui_alpha);
		
	// bird page
	var spr = object_get_sprite(ls_bird_possesed[current_page].object);
	var spr_width = sprite_get_width(spr)
	draw_sprite_ext(spr,0,532,680,6.5*spr_width/128,6.5*spr_width/128,0,c_white,book_ui_alpha);
	draw_set_font(ft_info_num_big);
	draw_set_valign(fa_middle);
	draw_set_halign(fa_left); 
	draw_text_color(149,285,ls_bird_possesed[current_page]._name[language],c_black,c_black,c_black,c_black,book_ui_alpha);
	draw_set_color(c_white);
	draw_set_font(ft_info_num);
	draw_set_valign(fa_top);
	draw_set_halign(fa_left); // bird description
	draw_text_ext_color(140,1010,ls_bird_possesed[current_page].description[language],string_height("M"),960-140,c_black,c_black,c_black,c_black,book_ui_alpha);

	// trust score
	if instance_exists(ls_bird_possesed[current_page].object) 
	{
		draw_set_valign(fa_middle);
		draw_set_halign(fa_center);
		draw_set_font(ft_info_num_big);
		var _trust_score = ["Trust Score","信任值"];
		draw_text_color(550,1400,_trust_score[language],c_black,c_black,c_black,c_black,book_ui_alpha);
		draw_set_alpha(book_ui_alpha);
		draw_healthbar(150,1480,950,1520,ls_bird_possesed[current_page].object.trust_score/100,
		c_gray,c_green,c_green,-1,true,true);
		draw_set_alpha(1);
	}	
}

/// @description Insert description here
// You can write your code in this editor


var down_speed = 0.1;

if state == "mixing"
{
	anime_y_1 = lerp(anime_y_1,0,down_speed);
	if anime_y_1 > -2
	{
		anime_y_2 = lerp(anime_y_2,0,down_speed);
	}
	if anime_y_2 > -2
	{
		anime_y_3 = lerp(anime_y_3,0,down_speed);
	}
	if anime_y_3 > -2
	{
		anime_y_4 = lerp(anime_y_4,display_get_gui_height()-100*2,0.1);
		alpha_2 = lerp(alpha_2,0.8,0.1);
		alpha_text = lerp(alpha_text,1,0.1);
	}
	
	draw_set_alpha(0.7);
	draw_rectangle_color(0,0,display_get_gui_width(),display_get_gui_height(),c_black,c_black,c_black,c_black,false)
	draw_set_alpha(1);
	
	draw_sprite_ext(spr_cocktail_mixing_anime_1,0,0,anime_y_1,2,2,0,c_white,1);
	draw_sprite_ext(spr_cocktail_mixing_anime_2,0,display_get_gui_width()/3,anime_y_2,2,2,0,c_white,1);
	draw_sprite_ext(spr_cocktail_mixing_anime_3,0,display_get_gui_width()/3*2,anime_y_3,2,2,0,c_white,1);
		
	// draw hand holding the cocktail
	draw_set_alpha(alpha_2);
	draw_rectangle_color(0,0,display_get_gui_width(),display_get_gui_height(),c_black,c_black,c_black,c_black,false)
	draw_set_alpha(1);
	
	draw_sprite_ext(spr_hand_holding,0,display_get_gui_width()/2+90,anime_y_4,2,2,0,c_white,1);
	
	// draw options
	draw_set_valign(fa_middle);
	draw_set_halign(fa_center);
	draw_text_color(display_get_gui_width()/4,display_get_gui_height()/2,"SERVE",#E5C55B,#E5C55B,#E5C55B,#E5C55B,alpha_text);
}
else
{
	anime_y_1 = -270*2;
	anime_y_2 = anime_y_1;
	anime_y_3 = anime_y_1;
	anime_y_4 = display_get_gui_height()+100*2;
	alpha_2 = 0;
	alpha_text = 0;
}
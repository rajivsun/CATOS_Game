/// @description Insert description here
// You can write your code in this editor

var card_scale = 1;
draw_set_font(ft_normal);
draw_set_valign(fa_middle);
draw_set_halign(fa_center);

if type == "battle"
{
	if reveal == true
	{
		draw_sprite_ext(spr_battlecard,0,x,y,card_scale,card_scale,0,c_white,1);
	
		draw_set_color(c_black); 
		draw_text_transformed(x-11*card_scale,y-25*card_scale,string(point),0.2,0.2,0);
		draw_text_transformed(x,y-25*card_scale,name,0.08,0.08,0);
		draw_text_transformed(x,y-18*card_scale,effect,0.15,0.15,0);
		draw_set_color(c_white);
	}
	else
	{
		draw_sprite_ext(spr_battlecard_back,0,x,y,card_scale,card_scale,0,c_white,1);		
	}
}
else if type == "explore"
{
	if reveal == true
	{
		draw_sprite_ext(spr_battlecard,0,x,y,card_scale,card_scale,0,c_white,1);
	
		draw_set_color(c_black); 
		draw_text_transformed(x-11*card_scale,y-25*card_scale,string(point),0.2,0.2,0);
		draw_text_transformed(x,y-25*card_scale,name,0.08,0.08,0);
		draw_text_transformed(x,y-18*card_scale,effect,0.15,0.15,0);

		draw_text_transformed(x,y*card_scale,second_name,0.08,0.08,0);
		draw_text_transformed(x-11,y*card_scale,card_to_draw,0.15,0.15,0);
		for (var i=0;i<3;i++)
		{
			draw_circle_color(x+10,y+8+i*6*card_scale,3,color[i],color[i],false)
			draw_text_transformed(x+11,y+10+i*6*card_scale,point_needed[i],0.15,0.15,0);
		}
		draw_set_color(c_white);
	}
	else
	{
		draw_sprite_ext(spr_battlecard_back,0,x,y,card_scale,card_scale,0,c_white,1);		
	}
}
else if type == "pirate"
{
	if reveal == true
	{
		draw_sprite_ext(spr_piratecard,0,x,y,card_scale,card_scale,0,c_white,1);
	
		draw_set_color(c_black); 

		draw_text_transformed(x,y-18*card_scale,effect,0.15,0.15,0);
		draw_text_transformed(x-11,y-10*card_scale,card_to_draw,0.15,0.15,0);
		draw_text_transformed(x+11,y+10*card_scale,point_needed,0.15,0.15,0);
		draw_set_color(c_white);
	}
	else
	{
		draw_sprite_ext(spr_piratecard,0,x,y,card_scale,card_scale,0,c_white,1);		
	}
}




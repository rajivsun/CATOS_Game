/// @description Insert description here
// You can write your code in this editor

draw_sprite_ext(spr_shaker_table,image_index,x,y,1,1,0,c_white,1);

switch state
{
	case "mixing":
		y_offset_2 = lerp(y_offset_2,0,0.1);
		draw_sprite_ext(spr_shaker,0,x,y+y_offset_2,1,1,0,c_white,1);
		draw_sprite_ext(spr_shaker,1,x,y+y_offset+y_offset_2,1,1,0,c_white,1);

		for (var i=0;i<array_length(ls_drinks);i++)
		{
			draw_set_valign(fa_middle);
			draw_set_halign(fa_center);
			draw_set_font(ft_chinese);
			draw_set_alpha(0.7);
			draw_roundrect_color(x-50,y-58-i*20,x+50,y-42-i*20,c_black,c_black,false)
			draw_set_alpha(1)
			draw_text_transformed(x,y-(50+i*20),ls_drinks[i].name[0],0.3,0.3,0);
		}
		
		break;
		
	case "finish":
		if current_cocktail = -1
		{
			draw_sprite_ext(spr_cocktails_ugly,0,x,y,1,1,0,c_white,1);
		}
		else
		{
			draw_sprite_ext(spr_cocktails,current_cocktail,x,y,1,1,0,c_white,1);
			draw_set_valign(fa_middle);
			draw_set_halign(fa_center);
			draw_set_font(ft_chinese);
			draw_text_transformed(x,y-50,all_drinks_name[current_cocktail][0],0.5,0.5,0);

		}
		break;
}



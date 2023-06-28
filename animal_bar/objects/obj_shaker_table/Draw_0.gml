/// @description Insert description here
// You can write your code in this editor

draw_sprite_ext(spr_shaker_table,image_index,x,y,1,1,0,c_white,1);

switch state
{
	case "mixing":
		draw_sprite_ext(spr_shaker,image_index,x,y,1,1,0,c_white,1);

		for (var i=0;i<array_length(ls_drinks);i++)
		{
			draw_set_valign(fa_middle);
			draw_set_halign(fa_center);
			draw_set_font(ft_chinese);
			draw_text_transformed(x,y-(50+i*20),ls_drinks[i].name[0],0.5,0.5,0);
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



/// @description Insert description here
// You can write your code in this editor

draw_self();
switch state
{
	case "main":
	for (var i=0;i<array_length(obj_shaker_table.all_drinks);i++)
	{
		if mouse_x > x-10 and mouse_x < x + 110 and mouse_y > y + i*28 and mouse_y < y + 28 + 28*i
		{	
			draw_sprite_ext(spr_cocktail_menu_rect,0,x-4,y-1+i*28,1,1,0,c_white,1);
			if mouse_check_button_pressed(mb_any) 
			{
				state = "drink";
				current_drink = i;
				exit;
			}
		}
		draw_sprite_ext(spr_cocktails,i,x+10,y+10+i*28,0.5,0.5,0,c_white,1);
		draw_set_font(ft_chinese);
		draw_set_valign(fa_middle);
		draw_set_halign(fa_left);
		draw_set_color(#CCB051);
		draw_text_transformed(x+30,y+5+i*28,obj_shaker_table.all_drinks_name[i][0],0.3,0.3,0);
		draw_set_color(c_white);
		draw_text_transformed(x+30,y+17+i*28,obj_shaker_table.all_drinks_description[i][0],0.3,0.3,0);
	}	
	break;

			
	case "drink":
		// back sign
		draw_sprite_ext(spr_cocktail_menu_backsign,0,x,y,1,1,0,c_white,1);
		// write cocktail name and description
		draw_set_valign(fa_middle);
		draw_set_halign(fa_left);
		draw_set_font(ft_chinese);
		draw_set_color(#CCBE7A);
		draw_text_transformed(x,y+10,obj_shaker_table.all_drinks_name[current_drink][0],0.3,0.3,0);			
		draw_sprite_ext(spr_cocktails,current_drink,x+20,y+60,1,1,0,c_white,1);
		
		draw_set_color(c_white);
		draw_text_transformed(x,y+20,obj_shaker_table.all_drinks_description[current_drink][0],0.3,0.3,0);
		for (var i = 0;i<array_length(obj_shaker_table.all_drinks[current_drink]);i++)
		{
			draw_text_transformed(x+60,y+50+i*15,"·"+obj_shaker_table.all_drinks[current_drink][i].name[0],0.3,0.3,0);
		}
		
		// if click on back button
		if mouse_x > x + 90 and mouse_x < x + 120 and mouse_y > y and mouse_y < y + 20
		{
			if mouse_check_button_pressed(mb_any)
			{
				state = "main";
				break;
			}
		}
		break;
}
/// @description Insert description here
// You can write your code in this editor

//if obj_button_mix.state == "mixing"
//{
//	exit
//}

if show_ui
{
	if obj_controller.make_drinks = false
	{
		// draw the black background
		draw_set_alpha(alpha_fond)
		draw_rectangle_color(0,0,display_get_gui_width(),display_get_gui_height(),c_black,c_black,c_black,c_black,false);
		draw_set_alpha(1)
		alpha_fond = lerp(alpha_fond,0.5,0.1);
		//depth = -9999;
	}
}

// ---------- page contact ------------------
if page == 0
{
	// draw whats on the notebook
	draw_sprite_ext(spr_ui_notebook,0,0,y_to,2,2,0,c_white,1);
	draw_set_font(ft_chinese);
	draw_set_halign(fa_left);
	draw_set_valign(fa_middle);
	draw_text_transformed_color(50,125+y_to,"通讯录",1.5,1.5,0,c_dkgray,c_dkgray,c_dkgray,c_dkgray,1);
	//draw_text_transformed(350,65+y_to,"Contact",2,2,0);

	for (var i=0;i<4;i++)
	{
	
		// draw block
		draw_sprite_ext(spr_ui_notebook_block,0,0,40+y_to+i*90,2,2,0,c_white,1);
		draw_sprite_ext(character_list[i+current_npc_index],0,80,y_to+240+i*90,0.4,0.4,0,c_white,1);

		// character info
		draw_set_font(ft_chinese);
		draw_set_halign(fa_left);
		draw_set_valign(fa_middle);
		draw_text_transformed_color(150,195+y_to+i*90,npc_names[i+current_npc_index],0.5,0.5,0,c_black,c_black,c_black,c_black,1);
		draw_text_transformed_color(150,225+y_to+i*90,npc_description[i+current_npc_index],0.5,0.5,0,c_dkgray,c_dkgray,c_dkgray,c_dkgray,1);
		
		// slider
		var _interval_height = 172/(array_length(character_list)-4)
		draw_sprite_ext(spr_ui_notebook_slider,0,0,y_to+current_npc_index*_interval_height*2,2,2,0,c_white,1);
	}
}
else if page == 1
{
	draw_sprite_ext(spr_ui_notebook,1,0,y_to,2,2,0,c_white,1);
	switch page_cocktail
	{
		case 0:
			for (var i=0;i<array_length(obj_shaker_table.all_drinks);i++)
			{
				//if mouse_x > x-10 and mouse_x < x + 110 and mouse_y > y + i*28 and mouse_y < y + 28 + 28*i
				if mouse_collision(50,320,100+i*80,180+i*80)
				{	
					draw_sprite_ext(spr_cocktail_menu_rect,0,55,y_to+200+i*80,2,2,0,c_white,1);
					if mouse_check_button_pressed(mb_any) 
					{
						page_cocktail = 1;
						current_drink = i;
						exit;
					}
				}
				draw_sprite_ext(spr_cocktail_only,i,80,y_to+230+i*80,0.7,0.7,0,c_white,1);
				draw_set_font(ft_chinese);
				draw_set_valign(fa_middle);
				draw_set_halign(fa_left);
				draw_set_color(#CCB051);
				draw_text_transformed(150,y_to+220+i*80,obj_shaker_table.all_drinks_name[i][0],0.7,0.7,0);
				draw_set_color(c_white);
				draw_text_transformed(150,y_to+250+i*80,obj_shaker_table.all_drinks_description[i][0],0.5,0.5,0);
			}	
			break;
			
		case 1:
			draw_sprite_ext(spr_cocktail_menu_backsign,0,270,y_to+200,2,2,0,c_white,1);
			// write cocktail name and description
			draw_set_valign(fa_middle);
			draw_set_halign(fa_right);
			draw_set_font(ft_chinese);
			draw_set_color(#CCBE7A);
			draw_text_transformed(300,y_to+250,obj_shaker_table.all_drinks_name[current_drink][0],1,1,0);			
			draw_sprite_ext(spr_cocktail_only,current_drink,100,y_to+250,1,1,0,c_white,1);
			draw_set_color(c_white);
			draw_text_transformed(x,y-30,obj_shaker_table.all_drinks_description[current_drink][0],0.3,0.3,0);
			
			// ingredient
			for (var i = 0;i<array_length(obj_shaker_table.all_drinks[current_drink]);i++)
			{
				draw_text_transformed(x+60,y-5+i*15,"·"+obj_shaker_table.all_drinks[current_drink][i].name[0],0.3,0.3,0);
			}
		
			draw_chinese("left",15,obj_shaker_table.all_drinks_intro[current_drink][0],x,y+60,0.25,#CCBE7A);
		
			// if click on back button
			if mouse_x > x + 90 and mouse_x < x + 120 and mouse_y > y -50 and mouse_y < y + 20 -50
			{
				if mouse_check_button_pressed(mb_any)
				{
					state = "main";
					break;
				}
			}

			break;
	}
}
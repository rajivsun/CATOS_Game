/// @description Insert description here
// You can write your code in this editor
if debug
	draw_text(300,100,string(device_mouse_x_to_gui(0))+"   "+string(device_mouse_y_to_gui(0)));
		
bird_ui();
book_ui();
part_system_drawit(obj_particle.particle_system_gui);

// -------------- top info ----------------
// birb
draw_set_alpha(0.8);
draw_roundrect_color(-10,-10,1100,80,c_white,c_white,false);
draw_set_alpha(1);

draw_sprite_ext(spr_icon_birb,0,80,45,1,1,0,c_white,1);
draw_set_valign(fa_middle);
draw_set_halign(fa_left);
draw_set_font(ft_info_num_big);
draw_text_color(160,46,money_conversion(birb),c_black,c_black,c_black,c_black,1);


// level
draw_set_valign(fa_top);
draw_set_halign(fa_left);
draw_set_font(ft_info_num_small);
draw_text_color(890,20,"Level:"+string(level),c_black,c_black,c_black,c_black,1);
draw_healthbar(880,60,1050,75,min(100,current_level_money/current_level_need_money*100),c_black,c_lime,c_lime,-1,true,false);

// ----------- draw bottom -------------
draw_set_alpha(0.7);
draw_roundrect_color_ext(0,2100,1100,2300,20,20,c_white,c_white,false); // docker
draw_set_alpha(1);
draw_roundrect_color_ext(50,2120,200,2260,20,20,c_white,c_white,false); // icon_fond_bird
draw_roundrect_color_ext(1100-50-150,2120,1100-50,2260,20,20,c_white,c_white,false); //icon_fond_book


if open_bird_ui == 1 // draw bird ui
{
	bird_ui_alpha = min(bird_ui_alpha + 0.1,1);
	draw_roundrect_color_ext(50,2120,200,2260,20,20,c_ltgray,c_ltgray,false);
}	
else
{
	bird_ui_alpha = max(0,bird_ui_alpha-0.1);
}

if open_book_ui == 1 // draw book ui
{
	book_ui_alpha = min(book_ui_alpha + 0.1,1);
	draw_roundrect_color_ext(1100-50-150,2120,1100-50,2260,20,20,c_ltgray,c_ltgray,false);
}
else
{
	book_ui_alpha = max(0,book_ui_alpha-0.1);
}

// draw icons
draw_sprite_ext(spr_icon_bird,0,50+75,2125+75,1,1,0,c_white,1);
draw_sprite_ext(spr_icon_book,0,1100-50-75,2125+75,1,1,0,c_white,1);


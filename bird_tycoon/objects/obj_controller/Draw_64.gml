/// @description Insert description here
// You can write your code in this editor

//draw_text(300,50,string(device_mouse_x_to_gui(0))+"   "+string(device_mouse_y_to_gui(0)));

// ----------- top info ----------------
// birb
draw_set_alpha(0.8);
draw_roundrect_color(20,20,980,80,c_white,c_white,false);
draw_set_alpha(1);

draw_sprite_ext(spr_icon_birb,0,80,51,1,1,0,c_white,1);
draw_set_valign(fa_top);
draw_set_halign(fa_left);
draw_set_font(ft_info_num);
draw_text_color(160,30,birb,c_black,c_black,c_black,c_black,1);

// level
draw_set_valign(fa_top);
draw_set_halign(fa_left);
draw_text_color(830,30,"Level : "+string(level),c_black,c_black,c_black,c_black,1)


// ----------- draw bottom -------------
draw_set_alpha(0.7);
draw_roundrect_color_ext(20,1850,980,1980,20,20,c_white,c_white,false);
draw_set_alpha(1);
draw_roundrect_color_ext(50,1870,200,1960,20,20,c_white,c_white,false);

if open_bird_ui == 1 // draw bird ui
{
	bird_ui();

}	
// draw icons
draw_sprite_ext(spr_icon_bird,0,50+75,1850+75,1,1,0,c_white,1);


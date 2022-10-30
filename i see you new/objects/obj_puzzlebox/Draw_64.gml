/// @description Insert description here
// You can write your code in this editor

//// draw the fond
draw_set_alpha(0.8);
draw_rectangle_color(0,0,
1300,700,c_black,c_black,c_black,c_black,false);
draw_set_alpha(1);

//draw close sign
draw_sprite_ext(spr_exit,0,1100,50,2,2,0,c_white,1);

//draw puzzle
if _puzzle == "safebox"{
	
	draw_set_font(ft_numberBIG);
	draw_set_halign(fa_left); draw_set_valign(fa_top);
	draw_sprite_ext(spr_safeboxpuzzle,0,640,320,6,6,0,c_white,1);
	draw_text(400,180,code)
	
}

if _puzzle == "pc_password"{
	draw_set_font(ft_numberBIG);
	draw_set_halign(fa_center); draw_set_valign(fa_bottom);
	draw_sprite_ext(spr_pcpass,0,640,320,6,6,0,c_white,1);
	draw_text(640,250,string(code))
	
}

if _puzzle == "pc_usb"{
	draw_set_font(ft_chineseBIG);
	draw_set_halign(fa_center); draw_set_valign(fa_bottom);
	draw_sprite_ext(spr_pcpass,0,640,320,6,6,0,c_white,1);
	if obj_main.language == "chinese"
	{
		draw_text(640,250,"请插入无线追踪器")
	}
	else if obj_main.language == "english"
	{
		draw_text(640,250,"Please insert wireless tracker")
	}	
}
//draw_text(50,300,code)



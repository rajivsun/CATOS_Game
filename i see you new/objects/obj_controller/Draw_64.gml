/// @description Insert description here
// You can write your code in this editor
if !instance_exists(obj_player)  exit;

//draw mangdao indication
if alarm[2] > 0{
	
	draw_set_font(ft_chineseULTRA);
	draw_set_halign(fa_center); draw_set_valign(fa_middle)
	draw_text(640,100,"沿着盲道往前走");
}

//draw saved sign
if alarm[1] > 0{
	
	draw_set_alpha(0.8);draw_set_color(c_black);
	draw_rectangle(300,0,980,100,false);
	draw_set_alpha(1);draw_set_color(c_white);
	
	draw_set_font(ft_chinese);
	draw_set_halign(fa_center); draw_set_valign(fa_middle)
	if obj_main.language == "chinese"
	{
		draw_text(640,50,"游戏已保存");
	}
	else if obj_main.language == "english"
	{
		draw_text(640,50,"Game Saved");
	}
}

//pause game
if _pause == 1{
	// draw the fond
	draw_set_alpha(0.8);
	draw_rectangle_color(0,0,1300,700,c_black,c_black,c_black,c_black,false);
	draw_set_alpha(1);
	
	draw_sprite_ext(spr_backtomenu,0,640,320,1.5,1.5,0,c_white,1);
}

//if room != rm_home_pre
draw_sprite_ext(spr_pausesign,0,1200,50,2,2,0,c_white,1);


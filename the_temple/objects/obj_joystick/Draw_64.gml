/// @description Insert description here
// You can write your code in this editor

if !instance_exists(obj_player) or obj_main.platform == "PC" exit;
//draw_text(100,200,alarm[0])
if room != rm_home_pre if pause() exit;

// moving icon
draw_set_alpha(0.6);
draw_sprite(spr_joystickBG,0,joystickSx,joystickSy);
draw_sprite(spr_joystickBT,0,joystickMx,joystickMy);
draw_set_alpha(1);
// interact icon
if obj_player.interactsign
draw_sprite_ext(spr_Ebutton,0,e_x,e_y,1,1,0,c_white,1);

//shooting icon and reload icon
if obj_player.weapon != 0{
	
	if obj_player.reloading draw_set_alpha(0.2);
	else draw_set_alpha(0.6);
	draw_sprite(spr_joystickBG,0,shotSx,shotSy);
	draw_sprite(spr_joystickBTS,0,shotMx,shotMy);
	draw_set_alpha(1);
	draw_sprite_ext(spr_reloadbutton,0,reload_x,reload_y,1,1,0,c_white,1);
	draw_sprite_ext(spr_switchbutton,0,switch_x,switch_y,1,1,0,c_white,1);
}

if ready == true{
	draw_circle_color(870,250,30,c_white,c_white,true)
	draw_set_font(ft_chinese);
	draw_set_valign(fa_middle);draw_set_halign(fa_center);
	draw_text(870,250,"取消");
	
}
//draw_sprite_ext(spr_shotBT,0,shot_x,shot_y,1,1,0,c_white,1);

//draw_sprite_ext(spr_switchBT,0,switch_x,switch_y,2,2,0,c_white,1);
//if obj_player.interact 
//draw_sprite_ext(spr_interactBT,0,e_x,e_y,3,3,0,c_white,1);
//var r = 80

//draw_rectangle(shotSx-r,shotSy-r,shotSx+r,shotSy+r,false)
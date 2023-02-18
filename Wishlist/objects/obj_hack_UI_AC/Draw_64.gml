/// @description Insert description here
// You can write your code in this editor


draw_set_alpha(0.7);
draw_rectangle_color(0,0,2500,1580,c_black,c_black,c_black,c_black,false);
draw_set_alpha(1);

//draw UI
if room == rm_BAR
draw_sprite_ext(spr_Hack_UI,0,display_get_gui_width()/2,display_get_gui_height()/2,2,2,0,c_white,1);
else if room == rm_CITY_TOP
draw_sprite_ext(spr_Hack_UI,1,display_get_gui_width()/2,display_get_gui_height()/2,2,2,0,c_white,1);
else if room == rm_METRO_STATION_QUAI
draw_sprite_ext(spr_Hack_UI,2,display_get_gui_width()/2,display_get_gui_height()/2,2,2,0,c_white,1);

//escape button
if keyboard_check_pressed(vk_escape)
{
	instance_destroy();
} 

if room == rm_BAR
{
	draw_set_alpha(0.3);draw_set_color(c_black);
	draw_rectangle(1190,247,1450,347,false);
	draw_rectangle(1190,540,1450,640,false);
	draw_rectangle(1190,780,1450,880,false);
	draw_set_alpha(1);draw_set_color(c_white);
	
	draw_set_color(c_red);
	draw_set_font(ft_chinese_big)
	draw_set_valign(fa_center);
	draw_set_halign(fa_left);

	draw_text_transformed(1250,304,convert_rcp_slot(obj_robot_rcp.slot[0]),1.5,1.5,0);
	draw_text_transformed(1250,584,convert_rcp_slot(obj_robot_rcp.slot[1]),1.5,1.5,0);
	draw_text_transformed(1250,838,convert_rcp_slot(obj_robot_rcp.slot[2]),1.5,1.5,0);
	
	if select != -1
	{
		draw_sprite_ext(spr_select_slot_rcp2,0,362,200,1,1,0,c_white,1);
		draw_sprite_ext(spr_select_slot_rcp2,0,362,295,1,1,0,c_white,1);
		draw_sprite_ext(spr_select_slot_rcp2,0,362,390,1,1,0,c_white,1);		
	}
	if select = 0 	draw_sprite_ext(spr_select_slot_rcp,0,1190,247,1,1,0,c_white,1);
	if select = 1 	draw_sprite_ext(spr_select_slot_rcp,0,1190,540,1,1,0,c_white,1);
	if select = 2 	draw_sprite_ext(spr_select_slot_rcp,0,1190,780,1,1,0,c_white,1);
	
	draw_set_color(c_white);
}

if room = rm_CITY_TOP
{
	draw_set_alpha(0.3);draw_set_color(c_black);
	draw_rectangle(1288,300,1288+260,400,false);
	draw_rectangle(1350,170,1350+260,270,false);
	draw_set_alpha(1);draw_set_color(c_white);
	
	draw_set_color(c_red);
	draw_set_font(ft_chinese_big)
	draw_set_center()
	draw_text_transformed(1487,212,inst_broken_ac.slot[0],1.5,1.5,0);	
	draw_text_transformed(1420,350,inst_broken_ac.slot[1],1.5,1.5,0);	
	draw_set_color(c_white);
	
	if select != -1 // left side selection
	{
		draw_sprite_ext(spr_select_slot_rcp2,0,362,200,1,1,0,c_white,1);
		draw_sprite_ext(spr_select_slot_rcp2,0,362,295,1,1,0,c_white,1);
	}
	// select the code that you want to change
	if select = 0 	draw_sprite_ext(spr_select_slot_rcp,0,1350,170,1,1,0,c_white,1);
	if select = 1 	draw_sprite_ext(spr_select_slot_rcp,0,1288,300,1,1,0,c_white,1);
}
if room = rm_METRO_STATION_QUAI
{
	draw_set_alpha(0.3);draw_set_color(c_black);
	draw_rectangle(1135,400,1135+260,500,false);
	draw_set_alpha(1);draw_set_color(c_white);
	
	draw_set_color(c_red);
	draw_set_font(ft_chinese_big)
	draw_set_center()
	draw_text_transformed(1212,446 ,inst_head_police.slot[0],1.5,1.5,0);	
	draw_set_color(c_white);
	
	if select != -1 // left side selection
	{
		draw_sprite_ext(spr_select_slot_rcp2,0,362,200,1,1,0,c_white,1);
		draw_sprite_ext(spr_select_slot_rcp2,0,362,295,1,1,0,c_white,1);
	}
	// select the code that you want to change
	if select = 0 	draw_sprite_ext(spr_select_slot_rcp,0,1135,400,1,1,0,c_white,1);

}
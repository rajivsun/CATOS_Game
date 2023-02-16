/// @description Insert description here
// You can write your code in this editor

draw_set_alpha(0.7);
draw_rectangle_color(0,0,2500,2000,c_black,c_black,c_black,c_black,false);
draw_set_alpha(1);

if played == false
{
	draw_sprite_ext(spr_rcp_paper,0,500,300,4,4,0,c_white,1);
	draw_sprite_ext(spr_rcp_rock,0,1100,300,4,4,0,c_white,1);
	draw_sprite_ext(spr_rcp_scisor,0,1700,300,4,4,0,c_white,1);
}




if show_hand 
{
	if out == "paper" 
	{
		draw_sprite_ext(spr_player_rcp_p,0,400,1050,10,10,0,c_white,1);
	}
	else if out == "rock"
	{
		draw_sprite_ext(spr_player_rcp_r,0,400,1050,10,10,0,c_white,1);
	}
	else if out == "scisor" 
	{
		draw_sprite_ext(spr_player_rcp_s,0,400,1050,10,10,0,c_white,1);
	}
}
else
{
	draw_sprite_ext(spr_player,0,400,1050,10,10,0,c_white,1);
}

// robot strategy
if show_hand
{
	if out == "paper"
	{
		draw_sprite_ext(obj_robot_rcp.slot_1,0,1700,1050,10,10,0,c_white,1);
	}
	if out == "rock"
	{
		draw_sprite_ext(obj_robot_rcp.slot_2,0,1700,1050,10,10,0,c_white,1);
	}
	if out == "scisor"
	{
		draw_sprite_ext(obj_robot_rcp.slot_3,0,1700,1050,10,10,0,c_white,1);
	}
}
else
{
	draw_sprite_ext(spr_robot_rcp,0,1700,1050,10,10,0,c_white,1);
}
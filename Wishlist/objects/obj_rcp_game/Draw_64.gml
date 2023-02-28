 /// @description Insert description here
// You can write your code in this editor

draw_set_alpha(0.7);
draw_rectangle_color(0,0,2500,2000,c_black,c_black,c_black,c_black,false);
draw_set_alpha(1);

draw_set_center();
draw_set_font(ft_chinese);
for (var ii=0;ii<ds_list_size(result_count);ii++)
{	draw_text_transformed(800,50,"",3,3,0);
	
	draw_text_transformed(900+ii*300,80,result_count[| ii],3,3,0);
}

if played == false and over == false
{
	draw_sprite_ext(spr_rcp_paper,0,500,300,4,4,0,c_white,1);
	draw_sprite_ext(spr_rcp_rock,0,1100,300,4,4,0,c_white,1);
	draw_sprite_ext(spr_rcp_scisor,0,1700,300,4,4,0,c_white,1);
}

if show_hand 
{
	draw_sprite_ext(spr_rcp_fond,0,750,450,5,5,0,c_white,1);
	draw_sprite_ext(spr_rcp_fond,0,1400,450,-5,5,0,c_white,1);
	if out == "paper" 
	{
		draw_sprite_ext(spr_rcp_paper,0,750,450,5,5,0,c_white,1);
		draw_sprite_ext(spr_player_rcp_p,0,400,1050,10,10,0,c_white,1);
		draw_sprite_ext(obj_robot_rcp.slot[0],0,1700,1050,10,10,0,c_white,1);
		if obj_robot_rcp.slot[0] == spr_robot_rcp_s {result = "输了"; win = false;spr_to_draw=spr_rcp_scisor }
		if obj_robot_rcp.slot[0] == spr_robot_rcp_p {result = "平了"; win = false;spr_to_draw=spr_rcp_paper}
		if obj_robot_rcp.slot[0] == spr_robot_rcp_r {result = "赢了";spr_to_draw=spr_rcp_rock}	
		//draw_sprite_ext(spr_to_draw,0,1400,450,5,5,0,c_white,1);
		//out_robot = "scisor";
	}
	else if out == "scisor"
	{
		draw_sprite_ext(spr_rcp_scisor,0,750,450,5,5,0,c_white,1);
		draw_sprite_ext(spr_player_rcp_s,0,400,1050,10,10,0,c_white,1);
		draw_sprite_ext(obj_robot_rcp.slot[1],0,1700,1050,10,10,0,c_white,1);
		if obj_robot_rcp.slot[1] == spr_robot_rcp_r {result = "输了"; win = false;spr_to_draw=spr_rcp_rock }
		if obj_robot_rcp.slot[1] == spr_robot_rcp_s {result = "平了"; win = false;spr_to_draw=spr_rcp_scisor }
		if obj_robot_rcp.slot[1] == spr_robot_rcp_p {result = "赢了";spr_to_draw=spr_rcp_paper }	

		//out_robot = "paper";
	}
	else if out == "rock" 
	{
		draw_sprite_ext(spr_rcp_rock,0,750,450,5,5,0,c_white,1);
		draw_sprite_ext(spr_player_rcp_r,0,400,1050,10,10,0,c_white,1);
		draw_sprite_ext(obj_robot_rcp.slot[2],0,1700,1050,10,10,0,c_white,1);
		if obj_robot_rcp.slot[2] == spr_robot_rcp_p {result = "输了"; win = false;spr_to_draw=spr_rcp_paper }
		if obj_robot_rcp.slot[2] == spr_robot_rcp_r {result = "平了"; win = false;spr_to_draw=spr_rcp_rock }
		if obj_robot_rcp.slot[2] == spr_robot_rcp_s {result = "赢了";spr_to_draw=spr_rcp_scisor }		
		//out_robot = "rock";
	}
	draw_sprite_ext(spr_to_draw,0,1400,450,5,5,0,c_white,1);
	draw_set_center();
	draw_set_font(ft_chinese);
	draw_text_transformed(2160/2,400,result,3,3,0);
}
else
{
	draw_sprite_ext(spr_robot_rcp,0,1700,1050,10,10,0,c_white,1);
	draw_sprite_ext(spr_player,0,400,1050,10,10,0,c_white,1);
}

if over == true
{
	draw_set_center();
	draw_set_font(ft_chinese);
	if win == true
	{
		draw_text_transformed(2160/2,1080/2,"你赢了",3,3,0);
	}
	else
	{
		draw_text_transformed(2160/2,1080/2,"你输了",3,3,0);
	}
}

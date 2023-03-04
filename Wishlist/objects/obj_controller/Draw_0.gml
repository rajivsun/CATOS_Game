/// @description Insert description here
// You can write your code in this editor

y_buffer += sign_speed;
if y_buffer >= 2.5
{
	sign_speed = -sign_speed;
}
if y_buffer <= -2.5
{
	sign_speed = -sign_speed;
}

//if room == mission[current_mission][3]
//{
//	draw_sprite_ext(spr_mission_sign,0,mission[current_mission][1],mission[current_mission][2]+y_buffer,0.5,0.5,0,c_white,1);
//	draw_sprite_ext(spr_mission_sign,0,mission[current_mission][1],mission[current_mission][2]-y_buffer,0.5,0.5,0,c_white,1);
//}

// ---------- scan world -----------------------
if room == rm_CITY_TOP
{
	if instance_exists(obj_player)
	{
		if obj_player.scan_world == true and inst_broken_ac.broken == true and obj_controller.repair_ac == false
		{
			rot_highlight_sign += 2;
			//depth = -9999;
			
			if abs(obj_player.x - inst_broken_ac.x) <= 30
			{
				highlight_sign_scale = 1;
				
				player_scan_world(obj_hack_UI_AC);
			}    
			else
			{
				highlight_sign_scale = 0.7;
			}
			//draw_set_color(c_aqua);g
			//draw_circle(x-5,y,r,true);
			//draw_set_color(c_white);
			draw_sprite_ext(spr_hightlight,0,inst_broken_ac.x-5,inst_broken_ac.y,highlight_sign_scale,highlight_sign_scale,rot_highlight_sign,c_white,1);
		}
	}
}

if room == rm_METRO_STATION_QUAI
{
	if instance_exists(obj_player)
	{
		if obj_player.scan_world == true and obj_oldman.play_scene == true
		{
			rot_highlight_sign += 2;
			//depth = -9999;
			if abs(obj_player.x - inst_head_police.x) <= 30
			{
				highlight_sign_scale = 1;
				player_scan_world(obj_hack_UI_AC);
			}    
			else
			{
				highlight_sign_scale = 0.7;
			}

			draw_sprite_ext(spr_hightlight,0,inst_head_police.x,inst_head_police.y-10,highlight_sign_scale,highlight_sign_scale,rot_highlight_sign,c_white,1);
		}
	}
}

if room == rm_BAR
{
	if instance_exists(obj_player)
	{
		if obj_player.scan_world == true
		{
			rot_highlight_sign += 2;
			if abs(obj_player.x - obj_robot_rcp.x) <= 30
			{
				highlight_sign_scale = 1;
				player_scan_world(obj_hack_UI_AC);
			}    
			else
			{
				highlight_sign_scale = 0.7;
			}

			draw_sprite_ext(spr_hightlight,0,obj_robot_rcp.x,obj_robot_rcp.y-30,highlight_sign_scale,highlight_sign_scale,rot_highlight_sign,c_white,1);
		}
	}
}
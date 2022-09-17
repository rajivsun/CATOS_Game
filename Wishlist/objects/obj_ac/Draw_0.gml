/// @description Insert description here
// You can write your code in this editor

depth = depth_original;

draw_self();

if broken == true
{
	if obj_player.scan_world == true
	{
		//depth = -9999;
		if collision_point(mouse_x,mouse_y,id,false,false)
		{
			r = 30;
			player_scan_world(obj_hack_UI_AC);
		}
		else
		{
			r = 20;
		}
		draw_set_color(c_aqua);
		draw_circle(x-5,y,r,true);
		draw_set_color(c_white);
	}
}

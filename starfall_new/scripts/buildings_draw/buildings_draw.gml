// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function buildings_draw(){

	// if not built
	if level == 0
	{
		draw_sprite(spr_dot,0,x,y)
	}
	// if is already built
	else
	{
		if object_index == obj_gun_tower_top 
			draw_sprite_ext(spr_gun_towers_bot,0,xstart,ystart,1,1,0,c_white,1);
		draw_self();
		
	}
	
	// draw money need
	if collision_circle(x,y,collision_range,obj_player,false,false)
	{
		if object_index == obj_gun_tower_top draw_sprite_ext(spr_gun_towers_bot,0,x,y,1,1,0,c_white,1);
		draw_sprite_ext(sprite_index,0,x,y,1,1,0,c_white,0.7);
		
		if level < array_length(money_need)
		{
			for (var i=0;i<(money_need[level]);i++)
			{
				var xi = i mod 4
				var yi = i div 4
				var line_buffer 
				if money_need[level] >= (yi+1 )* 4 line_buffer = -22.5
				else line_buffer = -15*((money_need[level] mod 4)-1)/2 //-15*((money_need mod 4)-1)
			
				draw_sprite_ext(spr_sign_coin_slot,0,x+xi*15+line_buffer,y-y_buffer-yi*15,0.5,0.5,0,c_white,1)
				if i <= money_depot and keyboard_check(vk_space)
				{
					if i = money_depot 
					draw_sprite_ext(spr_coin,0,x+xi*15+line_buffer,y-y_buffer-yi*15,coin_sign_scale,coin_sign_scale,0,c_white,1)
					else draw_sprite_ext(spr_coin,0,x+xi*15+line_buffer,y-y_buffer-yi*15,0.5,0.5,0,c_white,1)
				}
			}
			//draw_text_transformed(x,y-10,"Need:" + string(money_need),0.2,0.2,0);
		}
	}

}
// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function buildings_step(){
	
	// update 
	if collision_circle(x,y,collision_range,obj_player,false,false) and level < array_length(money_need)
	{
		if money_need[level] <= obj_controller.gold
		{
			if keyboard_check(vk_space) and building == false
			{
				
				if obj_controller.gold - money_depot > 0 and money_depot <money_need[level]
				{
					depot_count += 1;
					coin_sign_scale = lerp(coin_sign_scale,0.5,0.1)
					if depot_count > 20
					{
						depot_count = 0
						money_depot ++
						coin_sign_scale = 0
					}
				}
				if money_depot >= money_need[level]
				{
					coin_sign_scale = lerp(coin_sign_scale,0.5,0.1)
					if money_depot >= money_need[level]
					{
					
						obj_controller.gold -= money_need[level];
						level += 1
						building = true // if not release the button, it wont continue build
						coin_sign_scale = 0
					}
					money_depot = 0
				}
			}
			if keyboard_check_released(vk_space) 
			{
				building = false
				depot_count = 0
				money_depot = 0
			}
		}
	}
	
	
	depth = -y
}
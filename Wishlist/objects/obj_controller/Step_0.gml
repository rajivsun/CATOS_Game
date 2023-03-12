/// @description Insert description here
// You can write your code in this editor

if room == rm_ELEVATOR_INSIDE
{
	//count ++;
	//if count >= 180
	//{
	//	count = 0;
	//	fade(rm_METRO_SCENE,120);
	//}
}

if room == rm_METRO_SCENE
{
	//count ++;
	//if count >= 180
	//{
	//	count = 0;
	//	fade(rm_CITY_TOP,120);
	//}
}

if room == rm_METRO
{
	count ++;
	if count >= 180
	{
		if play_scene == false
		{
			play_scene = true;
			take_action(action);
		}
	}
	
	if metro_boss_call == true
	{
		count2 ++;
		if count2 >= 180
		{
			if play_scene2 == false
			{
				play_scene2 = true;
				take_action(action3);
			}
		}
	}
}

if room == rm_BAR
{
	if reward_beer = true
	{
		reward_beer = false;
		alarm[0] = 60; // reward showing delay
		//instance_create_layer(x,y,"system",obj_reward_beer_token);
	}
	//if !bar_shaoda_talk
	//{
	//	if obj_player.x >= 200
	//	{
	//		if play_scene == false
	//		{
	//			play_scene = true;
	//			take_action(action);
	//		}
	//	}
	//}
}

if room == rm_BAR_drunk
{
	
}

if room == rm_CITY_TOP
{
	if clean_building and repair_ac and city_top_home_talk == false
	{
		alarm[1] = 180;
		city_top_home_talk = true;
	}
	
	if clean_building == true
	{
		obj_lifter.interactable = false;
		
	}
	count ++;
	if count >= 120
	{
		if clean_building == true and repair_ac == true obj_elevator_skycraper.interactable = true;
		if first_time_citytop == true
		{
			if play_scene == false
			{
				play_scene = true;
				take_action(action);
			}
		}
	}
}

if room == rm_ROBOT_CLEANER
{
	if play_scene == false
	{
		play_scene = true;
		if tutorial == 2
		instance_create_layer(x,y,"system",obj_tutorial);
	}
}

if room == rm_DEMO_fin instance_destroy();

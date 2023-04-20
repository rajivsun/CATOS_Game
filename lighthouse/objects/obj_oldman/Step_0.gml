/// @description Insert description here
// You can write your code in this editor


if room == rm_METRO_SCENE
{
	switch state
	{
		case "walk":
			if hspeed == 0
				sprite_index = spr_oldman;
			else 
				sprite_index  = spr_oldman_walk;
	
			if point_distance(x,y,obj_player_metro.x,obj_player_metro.y) <= 50 
			{
				hspeed = 0;
				
				//take_action(action);
				instance_create_layer(428,68,"system",obj_action_bar);
				state = "action";
			}
			break;
			
		case "action":
			sprite_index = spr_oldman;
			break;
			
			
		case "second_walk":
			hspeed = 0.2;
			sprite_index = spr_oldman_walk;
			break;
	}
}

if room == rm_METRO_STATION_QUAI 
{
	if !play_scene
	{
		if obj_player.x >= 270
		{
			take_action(action);
			play_scene = true;
		}
	}
	if obj_policeman.hacked = true
	{
		interactable = true;
		txt[0] = 
		[
		["小伙子又是你啊，真的谢谢你啊，要不是你，我今晚可能就要睡外面了。",portrait.old_man],
		["我这把年纪了，身体经不起冻啊。",portrait.old_man],
		["没事大爷，小事而已。",portrait.player],
		[1,0],
		];
	}
}

if room == rm_METRO
{
	if disappear == true
	{
		image_alpha -= 0.01;
		if image_alpha <= 0
		{
			instance_destroy();
		}
	}
	if obj_player.state == "scene"
	{
		hspeed = -0.3;
		sprite_index = spr_oldman_walk;
		
		if distance_to_object(obj_player) <= 100
		{
			hspeed = 0;
			sprite_index = spr_oldman;
			if !play_scene
			{
				play_scene = true;
				take_action(action);
			}
		}
	}
}

if room == rm_FOREST_TRAVEL
{
	if transform
	{
		instance_create_layer(x,y+50,"immobile_near",obj_reveal_smoke);		
		instance_create_layer(x,y-10  ,"immobile_near",obj_tudigong);
		instance_destroy();
	}
}

if room == rm_BAR_drunk
{
	if !play_scene
	{
		if obj_player.x >= 400
		{
			take_action(action);
			play_scene = true;
		}
	}

}
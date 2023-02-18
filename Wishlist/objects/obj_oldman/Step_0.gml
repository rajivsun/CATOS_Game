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
	if!play_scene
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


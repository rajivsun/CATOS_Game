// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function create_card(card_name,_x=100,_y=100){
	
	new_card = instance_create_layer(_x,_y,"cards",obj_card);

	with new_card
	{
		type = card_name.type;
		if card_name.type == "battle" or card_name.type == "explore"
		{
			point = card_name.point;
			name = card_name.name;
			if card_name.type == "explore"
			{
				second_name = card_name.second_name;
				card_to_draw = card_name.card_to_draw;
				point_needed = card_name.point_needed;
			}
		}
		else if card_name.type == "pirate"
		{
			point_needed = card_name.point_needed;
			card_to_draw = card_name.card_to_draw;
		}
	}

	return new_card
}
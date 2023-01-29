/// @description Insert description here
// You can write your code in this editor

concentrate = {
	point:1,
	name:"concentrate",
	type:"battle",
}

ship = {
	point : 0,
	name: "conscience",
	type: "explore",	
	second_name:"ship",
	point_needed:[0,1,3],
	card_to_draw:1,
}

pirate1 = {
	type:"pirate",
	point_needed:40,
	card_to_draw:10,
}

count = 0;
state = "prepare";
ls_battlecards = ds_list_create();
ls_explorecards = ds_list_create();
ls_piratecards = ds_list_create();
ls_explorecards_discard = ds_list_create();
ls_battlecards_discard = ds_list_create();

ds_list_add(ls_battlecards,create_card(concentrate));
ds_list_add(ls_battlecards,create_card(concentrate));
ds_list_add(ls_explorecards,create_card(ship));
ds_list_add(ls_explorecards,create_card(ship));
ds_list_add(ls_piratecards,create_card(pirate1,25,18));
ds_list_add(ls_piratecards,create_card(pirate1,80,18));

show_debug_message("-------------------------------------");
show_debug_message(ls_piratecards[| 0]);
show_debug_message("-------------------------------------");





/// @description Insert description here
// You can write your code in this editor

birb = 0;
pc_occupy_num = 0;
open_bird_ui = -1;
level = 0;

game_set_speed(60,gamespeed_fps);
virtual_key_add(52,2124,203-52,2264-2124,vk_numpad0);


// birds info
wb = {
	_name : "Western Bluebird",
	level : 1,
	birb_per_sec : 1,
	sprite : spr_western_bluebird,
	object : obj_western_bluebird,
	level_need : 0,
	upgrade_need : 2,
};
nc = {
	_name : "Northen Cardinal",
	level : 1,
	birb_per_sec : 1,
	sprite : spr_northen_cardinal,
	object : obj_northen_cardinal,
	level_need : 2,
};
ct = {
	_name : "Cockatiel",
	level : 1,
	birb_per_sec : 1,
	sprite : spr_cockatiel,	
	object : obj_cockatiel,
	level_need : 6,
}
br = {
	_name : "Budgerigar",
	level : 1,
	birb_per_sec : 1,
	sprite : spr_budgerigar,
	object : obj_budgerigar,
	level_need : 10,
}


ls_bird = [wb,nc,ct,br];

// birds possession
// ls_bird_possesed = array_create(1,wb);
//array_insert(ls_bird_possesed,array_length(ls_bird_possesed),nc);


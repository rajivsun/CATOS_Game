/// @description Insert description here
// You can write your code in this editor

birb = 0;
pc_occupy_num = 0;
open_bird_ui = -1;
level = 0;
current_level_money = 0;
//level_up_need_money = 200;
current_level_need_money = 200;
game_set_speed(60,gamespeed_fps);
virtual_key_add(52,2124,203-52,2264-2124,vk_numpad0);
virtual_key_add(0,0,1100,1000,vk_space);

// birds info
wb = {
	_name : "Western Bluebird",
	level : 1,
	birb_per_sec : 1,
	birb_coef : 1,
	sprite : spr_western_bluebird,
	object : obj_western_bluebird,
	level_need : 0,
	upgrade_need : 2,
	egg_time : 60*60*0.05,
	hatching : true,
};
nc = {
	_name : "Northen Cardinal",
	level : 1,
	birb_per_sec : 5,
	birb_coef : 1.2,
	sprite : spr_northen_cardinal,
	object : obj_northen_cardinal,
	level_need : 2,
	upgrade_need : 20,
	egg_time : 60*60*0.05,
	hatching : false,
};
ct = {
	_name : "Cockatiel",
	level : 1,
	birb_per_sec : 10,
	birb_coef : 1.5,
	sprite : spr_cockatiel,	
	object : obj_cockatiel,
	level_need : 6,
	upgrade_need : 100,
	egg_time : 60*60*0.05,
	hatching : false,
}
br = {
	_name : "Budgerigar",
	level : 1,
	birb_per_sec : 20,
	birb_coef : 2,
	sprite : spr_budgerigar,
	object : obj_budgerigar,
	level_need : 10,
	upgrade_need : 200,
	egg_time : 60*60*0.05,
	hatching : false,
}


ls_bird = [wb,nc,ct,br];

// birds possession
// ls_bird_possesed = array_create(1,wb);
//array_insert(ls_bird_possesed,array_length(ls_bird_possesed),nc);


/// @description Insert description here
// You can write your code in this editor

birb = 0;
pc_occupy_num = 0;
open_bird_ui = -1;
level = 0;

game_set_speed(60,gamespeed_fps);
virtual_key_add(52,1862,208-52,100,vk_numpad0);



// birds info
wb = {
	_name : "Western Bluebird",
	level : 1,
	birb_per_sec : 1,
	sprite : spr_western_bluebird,
};
nc = {
	_name : "Northen Cardinal",
	level : 1,
	birb_per_sec : 1,
	sprite : spr_northen_cardinal,
};
ct = {
	_name : "Cockatiel",
	level : 1,
	birb_per_sec : 1,
	sprite : spr_cockatiel,	
}
br = {
	_name : "Budgerigar",
	level : 1,
	birb_per_sec : 1,
	sprite : spr_budgerigar,	
}

ls_bird = [wb,nc,ct,br];

// birds possession
ls_bird_possesed = array_create(1,wb);
//array_insert(ls_bird_possesed,array_length(ls_bird_possesed),nc);


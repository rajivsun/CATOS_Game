/// @description Insert description here
// You can write your code in this editor

bird_ui_alpha = 0;
book_ui_alpha = 0;
birb = 0;
pc_occupy_num = 0;
open_bird_ui = -1;
open_book_ui = -1;
level = 0;
current_page = 0;
current_level_money = 0;
current_level_need_money = 200;
button_w = 230; 
button_h = 90;
clicked = -1;

game_set_speed(60,gamespeed_fps);
virtual_key_add(52,2124,150,140,vk_numpad0);
virtual_key_add(900,2124,150,140,vk_numpad1);
virtual_key_add(0,0,1100,1000,vk_space);
virtual_key_add(195,1867,200,2031-1867,vk_left);
virtual_key_add(700,1863,200,2040-1863,vk_right);

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
	description : "The western bluebird is a small stocky bird. "
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
	description : "It can be found in southeastern Canada, through the eastern United States from Maine to Minnesota to Texas, New Mexico, southern Arizona, southern California, and south through Mexico, Belize, and Guatemala."
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
	description : "The cockatiel, also known as weiro, or quarrion, is a medium-sized parrot that is a member of its own branch of the cockatoo family endemic to Australia. "
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
	description : "The budgerigar, also known as the common parakeet or shell parakeet, is a small, long-tailed, seed-eating parrot usually nicknamed the budgie."
}


ls_bird = [wb,nc,ct,br];

// birds possession
ls_bird_possesed = array_create(1,wb);



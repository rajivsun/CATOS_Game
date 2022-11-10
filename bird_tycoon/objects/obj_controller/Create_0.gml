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
bird_info();

ls_bird = [wb,nc,ct,br,dw,cr,ar,pg,gf,kf,ja,tc,hb,hbl,rb];

// birds possession
ls_bird_possesed = array_create(1,wb);

// 0:english  1:chinese
language = 1;
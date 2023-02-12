/// @description Insert description here
// You can write your code in this editor

move_y = 0;
move_h = 20;
move_dir = 1;
move_speed = 0.4;
delay = 0;
indicator_y = 0;
score_fishing = 0;
count = 0;

state = "fishing";
count_fish = 0;
scale_reward = 0;

action2 = [
[cutscene_change_variable,obj_shaoda_little,"enough_fish","true"],
[cutscene_change_variable,obj_player,"state","idle"],
]
txt[0] = [
["这么多应该差不多了，去找少达吧。",portrait.player_little],
[2,action2],
];

action = [
[cutscene_text,txt,0],
];

key_up = virtual_key_add(1400,550,100,100,vk_up);
key_down = virtual_key_add(1400,700,100,100,vk_down);
//virtual_key_show(key_up);
//virtual_key_show(key_down);

/// @description Insert description here
// You can write your code in this editor

// --------- initialization ----------

bar_scene = false;
y_buffer = 0;
sign_speed = 0.1;
current_mission = 0;
rot_highlight_sign = 0;
highlight_sign_scale = 0.7;
game_123 = 0;
vill_scene = 0;
metro_boss_call = false;
bar_shaoda_talk = false;
first_time_citytop = true;
tutorial = 0;

reward_beer = false;
repair_ac = false;
clean_building = false;
city_top_home_talk = false;
arcade_game = false;
rcp_game = false;
dart_game = false;
bartender_talk = false;
token_beer = 0;
drink_beer = 0;
arcade_win = false;
dart_game_win = false;
rcp_game_win = false;
play_sound_on_citytop = false;

mission = 
[
	["clean the building",171,238,rm_CITY_TOP],
];

//---- game cleaner-----
level_num = 3;
current_level = 0;
robot_cleaner_game_level = 0;
robot_cleaner_game_level_all = 3;

if debug
depth = -9999;

name_list();
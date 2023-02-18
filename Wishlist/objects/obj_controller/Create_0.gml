/// @description Insert description here
// You can write your code in this editor


count = 0;
y_buffer = 0;
sign_speed = 0.1;
current_mission = 0;
rot_highlight_sign = 0;
highlight_sign_scale = 0.7;


mission = 
[
	["clean the building",171,238,rm_CITY_TOP],
];

// game cleaner
level_num = 3;
current_level = 0;

vill_scene = 0;

robot_cleaner_game_level = 0;
robot_cleaner_game_level_all = 3;

if debug
depth = -9999;
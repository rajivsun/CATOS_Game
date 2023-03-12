/// @description Insert description here
// You can write your code in this editor

// --------- initialization ----------
naked = true;
hspd = 0;
vspd = 0;
nearest = 0;
state = "idle";
scan_world = false;
fx_hack_thres = 1;
hp = 100;
alpha_layer = 0;
scene_on = true;
do_action = false;
actioned = false;
standup = false;

// ------- info --------
//grav = 0;
spr_idle = spr_player;
spr_sit = spr_playerSIT;
spr_run = spr_playerRUN;
spr_walk = spr_playerWALK;
//spr_down = spr_playerRUN;
//spr_up = spr_playerRUN;

run = false;
left = 0;
right = 0;

//window_set_cursor(cr_none);

if room == rm_VILL_RIVER_douji_game state = "douji";

// to make sure the first sprite is the right sprite (not the defaut one)
player_sprite();
sprite_index = spr_idle;

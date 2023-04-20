/// @description Insert description here
// You can write your code in this editor

// --------- initialization ----------
hspd = 0;
vspd = 0;
nearest = 0;
state = "idle";
hp = 100;
alpha_layer = 0;
scene_on = true;
do_action = false;
actioned = false;
cd_shoot = 0;
rot_arm = 0;
recoil_angle = 0;
recoil_magnitude = 30;

// ------- info --------
run_speed = 1.5;
walk_speed = 1.5;

//grav = 0;
//spr_down = spr_playerRUN;
//spr_up = spr_playerRUN;

run = false;
left = 0;
right = 0;

//window_set_cursor(cr_none);

// to make sure the first sprite is the right sprite (not the defaut one)
player_sprite();
sprite_index = spr_idle;

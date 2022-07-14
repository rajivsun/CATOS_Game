/// @description Insert description here
// You can write your code in this editor
// ------- animation ------------
spr_attack = spr_demonattack;
spr_hit = spr_demonhit;
spr_idle = spr_demon;


//------- information ------------------
if obj_main.mode == 1 or room == rm_home_pre
{
	hp_max = 30;speedwalk = 0.7;damage = 2;
}
else if obj_main.mode == 0
{
	hp_max = 20;speedwalk = 0.4;damage = 1.5;
}
else
{
	show_message("ops，出现了bug，不过不影响游玩，请反馈到taptap论坛里吧");
	hp_max = 15;
}

if obj_main.debug == true hp_max = 2;obj_player.boss_fight2 = true
hp = hp_max;
scale = 1.3*1.15;
//--------initialization -----------------------
range_x = [0,0];range_y = [0,0];
hit_count = 0;
use_special = false;
invisible = false;
anti_fool = 0;
hit = false;
boss_fight = false;
attack_timer = 0;
cd_timer = 0;
attack_sign = true;
attack_sign_xscale= image_xscale;
attack_sign_x = 0;attack_sign_y= 0;

// audio
sd_emitter2 = audio_emitter_create();
audio_falloff_set_model(audio_falloff_linear_distance);
audio_emitter_position(sd_emitter2,x,y,0);
audio_emitter_falloff(sd_emitter2,50,300,1)
alarm[3] = 1;
audio_play_sound_on(sd_emitter2,sd_monsterhowl,false,1)

alarm[5] = 120; // big effect when created
follow = obj_player;
xTo = follow.x;
yTo = follow.y;
alarm[2] = 5;

//create the path
direction = point_direction(x,y,obj_player.x,obj_player.y)
path = path_add();

//alarm[0] = room_speed * 1;

state = "free";

ray_count = 8;
ray_length = 1000;

_count1 = 0;
_count2 = 0;
_count3 = 0;

see_player = false;
walking = false;

pathRun = false;

face = 0;
spr_idle = spr_demon;
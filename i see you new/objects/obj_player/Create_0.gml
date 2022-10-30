/// @description Insert description here
// You can write your code in this editor
audio_listener_orientation(0,1,0,0,0,1)
instance_create_depth(x,y,-depth-1,obj_shadow)
//if room == rm_homeF1_arcade
//{
//	pickupitem(obj_pistol)
//	//pickupressource(obj_ammo_9mm)
//}
//---------------------- information ----------------------------------
if room == rm_home_pre hp_max = 2;
if room == rm_homeF1 hp_max = 5;
else hp_max = 5;

if obj_main.debug
{
	hp = 2000;hp_max = 2000;
	speedwalk = 2;
}
else
{
	hp = hp_max;
	speedwalk = 0.8;
}
if obj_main.language == "chinese"
{
	name = "我"
}
else if obj_main.language == "english"
{
	name = "Me"
}

//speedwalk = 2;

sprRU = spr_playerRU;
sprRD = spr_playerRD;
sprRL = spr_playerRL;
sprRR = spr_playerRR;
sprU = spr_playerU;
sprD = spr_playerD;
sprL = spr_playerL;
sprR = spr_playerR;

sprUS = spr_playerUS;
sprDS = spr_playerDS;
sprLS = spr_playerLS;
sprRS = spr_playerRS;
sprURS = spr_playerURS;
sprDRS = spr_playerDRS;
sprULS = spr_playerULS;
sprDLS = spr_playerDLS;

sprRURS = spr_playerRURS;
sprRULS = spr_playerRULS;
sprRDRS = spr_playerRDRS;
sprRDLS = spr_playerRDLS;
sprRUS = spr_playerRUS;
sprRDS = spr_playerRDS;
sprRLS = spr_playerRLS;
sprRRS = spr_playerRRS;
// -------------------initialization------------------------
detection_range = 20;
coef_footprint = 1;
action_range = detection_range;
sonar = false;
//shooting = false;
pass_door = false;
notice_msg = "";
boss_fight = false;
door_freeze = false;
freeze = false;
reloading = false;
recoil = false;
current_weapon = 0;
near_item = -1;
timer = 0;
face = 3;
walking = false;
walking2 = false;
depth=-y;
input_direction = 0;
input_magnitude = 0;
state = "free";
interactsign = false;
y_buff = 0;
sgn = 1;
weapon = 0;
boss_fight2 = false;
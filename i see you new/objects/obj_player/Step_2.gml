/// @description Insert description here
// You can write your code in this editor

//animation
reload_animation();
shoot_animation();

if sonar == true detection_range = 40; // sonar helmet activated

if keyboard_check_pressed(vk_numpad5) && obj_inventory.ds_weapon_ready[# 1,1] != 0
&& obj_joystick.ready == false
{
	audio_play_sound(sd_gun_switch,99,false);
	if current_weapon == 0
	{
		current_weapon = 1;
	}
	else current_weapon = 0;
}
//player dead
if hp<=0{
	instance_destroy();
	with instance_create_depth(x,y,depth,obj_playerdead){
		if other.face >= 0	or other.face <=1 image_xscale = other.image_xscale;
		else image_xscale = -other.image_xscale;
	}
	exit;
}

make_visible();
if pause() {exit;}
if player_recoil() exit;

// -------------- keyboard input ---------------------------
if obj_main.english_keyboard == true
{
	keyleft = keyboard_check(ord("A"));
	keyup = keyboard_check(ord("W"));	
}
else
{
	keyleft = keyboard_check(ord("Q"));
	keyup = keyboard_check(ord("Z"));
}

keydown = keyboard_check(ord("S"));
keyright = keyboard_check(ord("D"));

if obj_main.platform == "mobile"
{
	keyinteract = keyboard_check_pressed(ord("E"));
}
else if obj_main.platform == "PC"
{
	keyinteract = keyboard_check_pressed(vk_space);
}
keyreload = keyboard_check_pressed(ord("R"));
//-------------------------------------------------------------------

if !place_meeting(x,y,obj_door) pass_door = false;
if player_shooting() exit;

switch (state){
	case "free":
		playerstate_free();
		break;
}

audio_listener_position(x,y,0);

depth = -y;

//show_debug_message(obj_bbportrait.component)
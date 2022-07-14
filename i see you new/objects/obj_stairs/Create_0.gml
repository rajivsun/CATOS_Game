/// @description Insert description here
// You can write your code in this editor
image_speed = 0;
image_alpha = 0;
dest_room = rm_homeF1;
dest_x = x;
dest_y = y;
type = "h";
locked = true;
alpha = 1;
key = 99;
actionable = false;
current_action = 0;
current_reward = 0;
acting = false;

if obj_main.language == "chinese"
{
	wrong_msg_text = ["我应该在一楼先找找线索"];
}
else if obj_main.language == "english"
{
	wrong_msg_text = ["i should first stick around on this floor to find clues"];
}

wrong_msg_spk = [obj_player];

if object_index == obj_stairsUP1 
	instance_create_depth(x,y,-9999,obj_stairsUP1BAR)
if object_index == obj_stairsDOWN1
	instance_create_depth(x,y,-9999,obj_stairsDOWN1BAR)
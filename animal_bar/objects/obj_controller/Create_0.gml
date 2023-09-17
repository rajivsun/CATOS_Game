/// @description Insert description here
// You can write your code in this editor



//game_set_speed(60, gamespeed_fps);
virtual_key_add(700,130,150,150,ord("F"))
virtual_key_add(0,400,960,200,vk_space);
virtual_key_add(400,40,70,70,vk_escape);
name_player = "John";

// --------------- init -----------------
make_drinks = false;
blur_level = 0;
blur_level_all = 0;
day = 0;
count = 0;
current_client = noone;
current_txt = 0;
dragging_item = noone;

pos1 = 480 * 1/6;
pos2 = 480 * 1/2;
pos3 = 480 * 5/6;
pos4 = 480 * 7/6;

scene = -1;
current_dialogue = -1;
position_dialogue[0] = [[obj_buck,pos3,true]];
//position_dialogue[0] = [[obj_buck,pos3,true,obj_wolf,pos2,false]];
position_dialogue[1] = [[obj_lion,pos2,true],[obj_buck,pos3,true]]
position_dialogue[2] = [[obj_buck,pos3,true]];
position_dialogue[3] = [[obj_white_fox,pos2,true],[obj_buck,pos3,true]];
position_dialogue[4] = [[obj_buck,pos3,true]];
position_dialogue[5] = [[obj_redpanda,pos1,false],[obj_gorilla,pos2,true],[obj_buck,pos3,true]];

//make_text(txt);

text_day_1();
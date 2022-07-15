/// @description Insert description here
// You can write your code in this editor

right = keyboard_check(vk_right) or keyboard_check(ord("D"));
left = keyboard_check(vk_left) or keyboard_check(ord("Q")); 
//jump = keyboard_check(vk_space);
interact = keyboard_check(ord("E"));

//--------------- movement --------------------
if instance_exists(obj_textbox)
{
	sprite_index = spr_idle;
}
else
{
	player_movement();
}

//-------------- interact --------------------
var _list = ds_list_create();
var _num = instance_place_list(x, y, obj_NPC, _list, false);
if _num > 0
{
    for (var i = 0; i < _num; ++i;)
    {
        if _list[| i].talkable == true and interact and !instance_exists(obj_textbox)
		{
			create_textbox(_list[| i].txt,0);
			//_list[| i].talk_sign_show = true;
			
		}
    }
}

ds_list_destroy(_list);

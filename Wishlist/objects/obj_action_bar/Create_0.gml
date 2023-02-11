/// @description Insert description here
// You can write your code in this editor

count = 0;
hp = 0;
hp_max = 100;


text = "连续按键来站起来";
action2 = [
[cutscene_change_variable,obj_oldman,"state","second_walk"],
[cutscene_fade,rm_ELEVATOR_INSIDE_work,120],
];

txt[0] = 
[
["老大爷，您坐着吧。",portrait.player],
["哎哟谢谢你啊，我这腰真站不住啊。\n我从这头走到车厢那头一个给我让座的没有。",portrait.old_man],
["年轻人，你肯定是个干大事的吧。",portrait.old_man],
["没有大爷，我就是个维修工。",portrait.player],
["维修工也很好啊，职位可没有贵贱之分，\n而且我看你这年轻人很不一样，我看好你!",portrait.old_man],
["哈哈谢谢大爷。",portrait.player],
[2,action2],
];
	
action = 
[
[cutscene_change_variable,obj_player_metro,"image_speed","1"],
[cutscene_text,txt,0],
]

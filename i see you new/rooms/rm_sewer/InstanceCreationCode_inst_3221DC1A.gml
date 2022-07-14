wrong_msg_text = ["电控门需要恢复电力才能打开。"];
key = -99;
actionable = true;

actiontext = [
"看起来是某种电控门，需要通电才能打开。",
"透过缝隙看到里面好像有个梯子，应该是离开这里的通道。",
"先想办法恢复电源吧。",
];

spk = [obj_player,obj_player,obj_player];

action1 = [
	[textbox,actiontext,spk],
	[change_variable,obj_controller,"current_mission",1],
];

action = [action1];

actionable = true;
locked = true;

actiontext = ["看起来是个电力控制中心。让我来打开一下。","......","没有反应，好像缺少了什么组件。"];
spk = [obj_player,obj_player,obj_player];

action1 = [
	[textbox,actiontext,spk],
	[change_variable,obj_controller,"current_mission",2],

	//[change_variable,id,"current_action",1],
]

action = [action1];


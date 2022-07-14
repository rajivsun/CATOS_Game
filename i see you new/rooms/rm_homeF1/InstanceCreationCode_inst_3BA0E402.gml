actionable = true;
locked = true;
//key = obj_carbatteryfull;
if obj_main.language == "chinese"
{
	actiontext = ["先来检查一下车子的基本情况，已经好久没开了。","嗯...电瓶空了，看来我要制作一个新的电瓶。"];
	actiontext2 = ["什么声音？","是地下室传来的！"];
}
else if obj_main.language == "english"
{
	actiontext = ["First let me check the situation of my car, it's been a long time since I drove this beast.",
	"Well, the battery is vacant, it looks like I must make a new one."];
	actiontext2 = ["What’s that sound? It’s coming from the basement!"];
}

spk = [obj_player,obj_player];
spk2 = [obj_player,obj_player];

//end chapiter
action2 = [
	[cutscene_sound,sd_carengine,"play",false],
	[cutscene_wait,2],
	[change_variable,inst_stairsUNDERDOWN,"locked",false],
	[change_variable,inst_stairsUNDERDOWN,"image_index",1],
	[cutscene_sound_ext,sd_girl_scream,spr_icon_unknown,486,820,642,1802],
	[textbox,actiontext2,spk2],
	//[fadetoroom,rm_end,120,c_black,0,0],
];

action1 = [
	[textbox,actiontext,spk],
	[change_variable,obj_controller,"current_mission",3],
	[change_variable,id,"current_action",1],
]

action = [action1];
//action = [action1,action2];



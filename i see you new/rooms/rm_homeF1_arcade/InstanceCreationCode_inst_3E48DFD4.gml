actionable = true;
if obj_main.language == "chinese"
{
	actiontext = [
	"番！是你吗番？",
	"呜呜...嗯嗯...（貌似有胶带堵住嘴巴）",
	"番，不用怕，我来把你的胶带拆下来。（把番嘴上的胶带拿了下来）",
	"贤...贤...你快离开这里，这里有危险！",
	"我刚刚查到你的手机定位在医院，我正准备坐车去哪里呢！",
	"贤...那是因为他们想要你去那里...",
	"他们？他们是谁？",
	"他们是...我不知道该和你怎么说贤...",
	"没事的番，我先把你解开，然后我们赶快离开这里，\n家里现在有危险。有什么事情一会再说。",
	"嗯嗯，东北角有一个钳子，不知道能不能剪开链子",
	"好的，我去看看。",
	"贤...","怎么了？",
	"谢谢你...","(微笑)",
	];
	actiontext2 = ["番！你没事吧！你听得到吗！","......","可恶！番你不要怕，我马上来找你！","该怎么下去呢...",
	"我需要一把梯子","好像番把梯子放在密室里了。"];
	msg="番把梯子放到了密室";
	actiontext3 = [
	"究竟是哪里来的怪物！",
	"唔...","你说什么？","深渊....",
	"可恶的家伙！"
	];

}
else if obj_main.language == "english"
{
	actiontext = [
	"Liz, is that you Liz?",
	"Yes, .....Sean.... (Liz's mouth got taped)",
	"Liz, don't worry babe, I'm here. I am getting the tape off.",
	"Sean, Sean, you have to get out of here. You are not safe here !",
	"I just located your phone to the hospital, I'm about to go there.",
	"Sean, that's because they want you to go there.",
	"They ? who are they?",
	"They are.... I don't know how to explain all this to you Sean.",
	"It's OK, Liz, I will first cut you loose, and we'll get out of here. Our house is not safe right now, we'll talk about it later.",
	"Ok.There's a clip in the upper corner, you may try using it to cut me loose.",
	"OK, got it, babe. I'll go check it out.",
	"Sean.","Yeah,baby",
	"Thank you","(Smiling)",
	];
	actiontext2 = ["Where are you Liz ! Can you hear me?","......","Shit, I'm coming for you Liz, Don't worry !","How can I get down there?",
	"I need a ladder.","Right, Liz put a ladder in the secret room."];
	msg="Liz stored the ladder in the secret room.";
	actiontext3 = [
	"Where the hell did you come from?",
	"Huuu...","What?","The void...",
	"You bastard..."
	];
}

spk = [obj_player,obj_baobaochair,obj_player,obj_baobaochair,obj_player,obj_baobaochair,obj_player,obj_baobaochair,
obj_player,obj_baobaochair,obj_player,obj_baobaochair,obj_player,obj_baobaochair,obj_player];

action1 = [
	[cutscene_destroy,"sound"],
	[textbox,actiontext,spk],
	//[animation_wait,obj_player,spr_playerINTERACT,1.5,false],
	[change_variable,obj_controller,"current_mission",7],
	[change_variable,obj_cutter,"pickable",true],
	[change_variable,obj_cutter,"actionable",true],
]

spk2 = [obj_player,obj_player,obj_player,obj_player,obj_player,obj_player];

action2 = [
	//[cutscene_destroy,"sound"],
	[textbox,actiontext2,spk2],
	//[animation_wait,obj_player,spr_playerINTERACT,1.5,false],
	[change_variable,obj_controller,"current_mission",8],
	[change_variable,id,"locked",true],
	[change_variable,id,"current_action",2],
	[add_journal,msg],
];

spk3 = [obj_player,obj_demonBIG,obj_player,obj_demonBIG,obj_player];
action3 = [
[cutscene_sound,sd_boss_fight,"play",true],
[change_variable,obj_player,"boss_fight2",true],
[cutscene_create,527,1713,"world",obj_demonBIG],
[change_variable,obj_camera,"follow",obj_demonBIG],
[cutscene_wait,1],
[screen_shake,10,120],
[cutscene_wait,2.5],
[textbox,actiontext3,spk3],
[change_variable,obj_camera,"follow",obj_player],
[change_variable,obj_controller,"current_mission",9],
[cutscene_wait,1],
[change_variable,id,"current_action",3],
]
if obj_main.demo == true
{
	action4 = [
	[change_variable,obj_main,"new_start",true],
	[change_variable,obj_controller,"current_mission",10],
	[change_variable,obj_main,"current_end",0],
	[fadetoroom,rm_end,120,c_black,0,0],
	];
}
else
{
	action4 = [
	[change_variable,obj_main,"new_start",true],
	[change_variable,obj_controller,"current_mission",10],
	[change_variable,obj_main,"current_end",0],
	[fadetoroom,rm_pre,120,c_black,0,0],
	];
}
action = [action1,action2,action3,action4];
//action = [action4];
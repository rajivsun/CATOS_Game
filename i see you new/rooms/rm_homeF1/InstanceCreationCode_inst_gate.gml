key = -99;
//actionable = true;
if obj_main.language == "chinese"
{
	wrong_msg_text = ["我现在还不想出去。"];
	actiontext = [
	"小伙子，你怎么还没离开啊。",
	"啊？我才刚刚从外地回到家。发生什么了?",
	"哎哟，你还不知道啊。我们这一片啊，都乱套啦。",
	"自从昨天。。。",
	];
	actiontext2 = [
	"什么声音？你听到了吗？",
	"我听到了，那是什么声音？",
	"小伙子，我要赶快走了，你也赶快离开吧！",
	];
}
else if obj_main.language == "english"
{
	wrong_msg_text = ["I don't want to go out now."];
	actiontext = [
	"Hey young man, why are you still here?",
	"What? I just got back here from a business trip. What happened?",
	"Shoot, you don't know? It's now a fucking shitshow here. Something really bad happened here.",
	"Since yesterday...",
	];
	actiontext2 = [
	"What was that? Did you hear that?",
	"Yeah, I heard it, what's that sound?",
	"OK, I gotta go, you better get the hell out of here, as fast as you can!",
	];	
}

spk = [obj_deliveryguy,obj_player,obj_deliveryguy,obj_deliveryguy];
spk2 = [obj_deliveryguy,obj_player,obj_deliveryguy];

action1 = [
	//[cutscene_wait,2],
	[cutscene_destroy,"sound"],
	[change_variable,id,"operate",true],
	[cutscene_sound,sd_dooropen,"play",false],
	[cutscene_wait,1],
	[cutscene_create,x,y+40,"world",obj_deliveryguy],
	[cutscene_wait,2],
	[textbox,actiontext,spk],
	[cutscene_wait,1],
	[screen_shake,10,120],
	[cutscene_sound,sd_monsterhowl2,"play",false],
	[cutscene_wait,3],
	[textbox,actiontext2,spk2],
	[cutscene_wait,2],
	
	[cutscene_sound,sd_doorclose,"play",false],
	[change_variable,id,"operate",true],
	//[cutscene_wait,1],
	[cutscene_destroy,obj_deliveryguy],
	[next_event]
];

action = [action1];
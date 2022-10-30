//pickable = true;
actionable = false;

if obj_main.language == "chinese"
{
	actiontext = ["当初买来以防锁阁楼的钥匙丢了，可以剪断锁阁楼的链子。\n这个应该可以剪开番身上的链子"];
	actiontext2 = ["番？番你没事吧！"];
}
else if obj_main.language == "english"
{
	actiontext = ["We bought this to cut off the chains of the attic in case we lost the key. I might use this to cut off the chains on Liz."];
	actiontext2 = ["Liz, are you alright?"];
}

spk = [obj_player];
spk2 = [obj_player];

action1 = [
	[textbox,actiontext,spk],
	[cutscene_wait,1],
	//[cutscene_sound_ext,sd_girl_scream,spr_icon_unknown,642,1802,642,1802],
	[cutscene_sound,sd_collapse,"play",false],
	[screen_shake,10,200],
	[cutscene_wait,2],
	//[cutscene_destroy,"sound"],
	[textbox,actiontext2,spk2],
	[change_variable,obj_baobaochair,"actionable",true],
	[change_variable,obj_baobaochair,"current_action",1],
	[change_variable,obj_baobaochair,"image_index",1],
	[change_variable,obj_baobaochair,"depth",100],
]

action = [action1]


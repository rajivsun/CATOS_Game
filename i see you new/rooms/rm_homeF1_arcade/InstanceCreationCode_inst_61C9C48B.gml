key = obj_key_main;
actionable = true;

if obj_main.language == "chinese"
{
	wrong_msg_text = ["我需要大门钥匙。"];
	actiontext = ["番，我到啦。"];
	actiontext2 = ["番，可以开下门吗，我没带你这里的钥匙。"];
	actiontext3 = ["咦，难道是在洗澡没听到吗...","好吧，我记得番好像有放一个备用钥匙在花坛里。"];
	msg = "大门钥匙放在花坛里了。";
}
else if obj_main.language == "english"
{
	wrong_msg_text = ["I need the key to the front door."];
	actiontext = ["Liz, I am here."];
	actiontext2 = ["Liz, could you open the door? I didn’t take the key to your place."];
	actiontext3 = ["I bet she is showering right now. Fine, I remember that she kept a spare key in the terrace here."];
	msg = "The key to the front door is in the terrace.";
}

spk = [obj_player];
spk2 = [obj_player];
spk3 = [obj_player,obj_player];

action1 = [
	//[change_variable,obj_player,"sprite_index",spr_demon],
	[animation_wait,obj_player,spr_playerKNOCK,2,false],
	[cutscene_create_sound,x,y,x,y,spr_icon_doorbell,sd_doorbell],
	[textbox,actiontext,spk],
	[cutscene_wait,2],
	[animation_wait,obj_player,spr_playerKNOCK,2,false],
	[textbox,actiontext,spk],
	[cutscene_wait,2],
	[textbox,actiontext3,spk3],
	[cutscene_destroy,"sound"],
	[add_journal,msg],
];

action = [action1];



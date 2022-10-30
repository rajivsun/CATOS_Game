if obj_main.language == "chinese"
{
	rewardtext = ["是我最喜欢的卡通人物，因为和番长得很像。"]; 
}
else if obj_main.language == "english"
{
	rewardtext = ["Its my favourite toy, cause it kind of looks like Liz."]; 
}

spk2 = [obj_player];

reward1 = [
	[itembox,obj_sleepbabe,true],
	[pickupitem,obj_sleepbabe],
	[textbox,rewardtext,spk2],
	//[cutscene_destroy,obj_joystick],
	//[cutscene_fade,rm_piano,60,c_black],
];

reward = [reward1];
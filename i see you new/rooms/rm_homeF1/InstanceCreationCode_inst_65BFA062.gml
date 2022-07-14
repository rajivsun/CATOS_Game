rewardtext = ["是我最喜欢的卡通人物，因为和番长得很像。"]; 
spk2 = [obj_player];

reward1 = [
[cutscene_sound,sd_collapse,"play",false],
[screen_shake,2,450],
[cutscene_move,850,435,inst_bibliotheque,0.1],
[cutscene_destroy,inst_bibliotheque],

	//[itembox,obj_sleepbabe,true],
	//[pickupitem,obj_sleepbabe],
	//[textbox,rewardtext,spk2],
	//[cutscene_destroy,obj_joystick],
	//[cutscene_fade,rm_piano,60,c_black],
];

reward = [reward1];
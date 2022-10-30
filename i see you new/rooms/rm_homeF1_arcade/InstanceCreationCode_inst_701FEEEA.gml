//exam = true;

rewardtext = ["现在可以去琴房了"];
spk = [obj_player];

reward1 = [
	
	[pickupitem,obj_key_pianoroom],	
	[cutscene_destroy,obj_itembox],
	[itembox,obj_key_pianoroom,true],
	[textbox,rewardtext,spk],
	[next_scene],

];	

reward = [reward1];
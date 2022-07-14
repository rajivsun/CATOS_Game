exam = true;

rewardtext = ["未知人物：如果电子装置缺失或发生损坏，可以使用工坊重新制作。","所需材料为：铜块，芯片和废金属。"];
spk = [id,id];

msg="制作电子零件需要铜块，芯片和废金属。"

reward1 = [
	[cutscene_destroy,obj_itembox],
	[change_variable,id,"exam",true],
	[textbox,rewardtext,spk],
	[add_journal,msg],
	[change_variable,id,"current_reward",1],
];

reward2 = [
	[cutscene_destroy,obj_itembox],
	[change_variable,id,"exam",true],
	[textbox,rewardtext,spk],
];

reward = [reward1,reward2];
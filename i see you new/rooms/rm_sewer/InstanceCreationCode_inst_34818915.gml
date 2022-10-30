exam = true;

rewardtext = ["未知人物：那天我无意间听到头头在修改他的保险箱密码。\n如果我没看错，应该是467。"];
spk = [id];

msg="保险箱的密码是467。"

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
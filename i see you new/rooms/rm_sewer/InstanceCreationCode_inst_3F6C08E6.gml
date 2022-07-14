exam = true;

rewardtext = ["未知人物：目前来看贤与番的相处非常融洽。\n贤没有发现异常，符合我们的预期。"];
spk = [id];

//msg="保险箱的密码是467。"

reward1 = [
	[cutscene_destroy,obj_itembox],
	[change_variable,id,"exam",true],
	[textbox,rewardtext,spk],
];



reward = [reward1];
exam = true;

rewardtext = ["未知人物：贤的日常起居已经步入正轨，没有剧烈的术后反应。\n只是在少数情况下可能会诱发回忆，我们将继续跟进。"];
spk = [id];

//msg="保险箱的密码是467。"

reward1 = [
	[cutscene_destroy,obj_itembox],
	[change_variable,id,"exam",true],
	[textbox,rewardtext,spk],
];



reward = [reward1];
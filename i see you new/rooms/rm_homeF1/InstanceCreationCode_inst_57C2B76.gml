exam = true;

if obj_main.language == "chinese"
{
	rewardtext = ["番：今天是10月01号了，离我们周年庆祝只有5天了。\n这次我要送贤一个他最喜欢的玩偶。",
	"番：先把它藏在钢琴里面吧，他应该找不到。"];
	msg="今天是10月01号了，离我们周年庆祝只有5天了。番在钢琴里藏了一个小礼物给我。";
}
else if obj_main.language == "english"
{
	rewardtext = ["Liz: Today is October 1st, five days away from our anniversary, this time I will give Sean his favorite puppet as present.",
	"Liz: Let me put it in the piano, so that he won't find it."];
	msg="Today is October 1st, five days away from our anniversary, Liz hid a little present for me in the piano.";
}

spk = [id,id];
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
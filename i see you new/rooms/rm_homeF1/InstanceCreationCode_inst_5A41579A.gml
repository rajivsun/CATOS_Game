exam = true;
if obj_main.language == "chinese"
{
	rewardtext = ["（番）今天终于把密室给修缮完成了，废了我好大的劲。","不过书架的导轨还有点问题，滑动的时候有时候会卡住。",
	"而且一楼好潮湿啊，要想办法通风，不然很容易发霉。","主要是二楼没有空间了，不然应该造在二楼。",
	"对了，我在钢琴房旁边的房间给你留了一张字条。\n是关于密室的哦。（亲亲）"];
	msg = "番在钢琴房的旁边给我留了一张字条。"
}
else if obj_main.language == "english"
{
	rewardtext = ["Liz: finally I finish the repairing of the 'secret room' today, took me a lot of effort.","However, the rails of the bookshelf still have some problems, sometimes they got stuck when sliding.",
	"And the ground floor is very humid. We need to find a way to ventilate, otherwise it will be easy to mold.","Well there is no space on the second floor, otherwise it should be built there.",
	"Right, I left a note in the room near piano room, it's about out secret room(^3)."];
	msg = "Liz left a note near the piano room."
}

spk = [id,id,id,id,id];

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
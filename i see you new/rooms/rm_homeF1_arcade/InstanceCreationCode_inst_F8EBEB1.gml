exam = true;
if obj_main.language == "chinese"
{
	rewardtext = "睡睡兽玩偶使用说明：\n睡睡兽玩偶可以用来当作无线追踪器。\n一旦配对成功，您可以通过连接电脑来获得配对手机的实时位置";
	actiontext = ["原来这个睡睡兽玩偶是一个无线追踪器",
	"因为它和手机是双向绑定的，所以如果我能读取玩偶上的数据，\n我就能知道番的手机的所在位置。"];
}
else if obj_main.language == "english"
{
	rewardtext = "Mr Sleepy stuff toy user manual: Mr Sleepy can be used as a wireless tracker.\n Once matched with a phone, you can link it to a computer\n to acquire real-time coordinate of the that phone.";
	actiontext = ["So this Mr Sleepy stuff toy is a wireless tracker.",
	"It's bounded with a phone, so if I can read its data on computer, then I can get the location of Liz's phone."];
}

spk = [obj_player,obj_player]
reward1 = [

	[itemtextbox,rewardtext],
	[cutscene_destroy,obj_itembox],
	[change_variable,id,"exam",true],
	[textbox,actiontext,spk],
];	

reward = [reward1];
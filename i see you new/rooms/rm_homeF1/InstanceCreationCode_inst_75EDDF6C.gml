exam = true;
code = "1006";
actionable = true;

if obj_main.language == "chinese"
{
	actiontext = ["番喜欢用我们的纪念日作为很多东西的密码，\n不过我觉得这样不是很安全。"];
	rewardtext = ["现在可以打开钢琴了"];
}
else if obj_main.language == "english"
{
	actiontext = ["Fan likes to use many of our anniversaries as passwords, still I think it is not very safe though."];
	rewardtext = ["Now i can open the piano."];
}

actionspk = [obj_player];
spk = [obj_player];

action1 = [
[textbox,actiontext,actionspk],
];

action = [action1];

reward1 = [
	[change_variable,id,"image_index",1],
	[pickupitem,obj_key_piano],	
	//[cutscene_destroy,obj_puzzlebox],
	[itembox,obj_key_piano,true],
	[textbox,rewardtext,spk]
];	

reward = [reward1];
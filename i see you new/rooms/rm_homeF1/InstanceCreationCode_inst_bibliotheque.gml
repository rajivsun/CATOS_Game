actionable = true;
locked = true;

if obj_main.language == "chinese"
{
	actiontext = ["好像有一本书不见了，留下一个奇怪的空缺。"];
	msg = "钢琴房的书架上有一本书不见了，留下了一个奇怪的空缺。";
}
else if obj_main.language == "english"
{
	actiontext = ["It seems one book is missing, leaving a vacancy here."];
	msg = "One book is missing on the bookshelf in piano room, leaving a vacancy here.";
}

spk = [obj_player];

action1 = [
	[textbox,actiontext,spk],	
	[add_journal,msg],
]
action = [action1]
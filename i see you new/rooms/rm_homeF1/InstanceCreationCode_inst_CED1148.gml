exam = true;

if obj_main.language == "chinese"
{
	rewardtext = "贤，\n我把那本'书'放到阁楼了，因为一时间也想不到放哪哈哈。\n你要是要那本'书'就去阁楼吧。";
	msg = "番把一本书放在了阁楼。";
}
else if obj_main.language == "english"
{
	rewardtext = "Sean, I have put the 'book' on the attic, I don't know where else should I put it.\n If you are looking for it, just go to the attic.";
	msg = "Fan just put a book on the attic.";
}

spk = [obj_player,obj_player,obj_player];
reward1 = [

	[itemtextbox,rewardtext],
	[cutscene_destroy,obj_itembox],
	[change_variable,id,"exam",true],
	//[add_journal,msg],
	//[textbox,actiontext,spk],
];	

reward = [reward1];
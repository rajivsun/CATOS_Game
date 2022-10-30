pickable = true;
actionable = true;

if obj_main.language == "chinese"
{
	actiontext = ["看起来像是从某个书架上掉下来的"];
}
else if obj_main.language == "english"
{
	actiontext = ["It seems like coming off a bookshelf."];
}

spk = [obj_player];

action1 = [
	[textbox,actiontext,spk],
	//[itembox,id,false],
]
action = [action1];
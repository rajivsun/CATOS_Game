actionable = true;
if obj_main.language == "chinese"
{
	actiontext = ["来看看这里有什么。"];
	actiontext2 = ["这里什么也没有。"];
}
else if obj_main.language == "english"
{
	actiontext = ["Let's see..."];
	actiontext2 = ["There is nothing here."];
}

spk = [obj_player];
spk2 = [obj_player,obj_player];

action1 = [
	[textbox,actiontext,spk],
	[textbox,actiontext2,spk2],
]
action = [action1];
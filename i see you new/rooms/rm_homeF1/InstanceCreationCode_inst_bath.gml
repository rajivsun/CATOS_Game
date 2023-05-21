
actionable = false;
if obj_main.language == "chinese"
{
	actiontext = ["奇怪，浴室里没有人...."];
}
else if obj_main.language == "english"
{
	actiontext = ["It is weird, there is no one here..."];
}
spk = [obj_player];

action1 = [
[cutscene_destroy,"sound"],
[textbox,actiontext,spk],
[next_event],
];

action = [action1];
actionable = true;

if obj_main.language == "chinese"
{
	actiontext = ["来看看这里有什么。"];
	actiontext2 = ["啊哈，找到了家门钥匙!，幸好她藏了一把备用钥匙。"];
}
else if obj_main.language == "english"
{
	actiontext = ["Let's see what we got here"];
	actiontext2 = ["Aha, got the key! Thank god she kept a spare one."];
}

spk = [obj_player];
spk2 = [obj_player];

action1 = [
	[textbox,actiontext,spk],
	[pickupitem,obj_key_main],
	[itembox,obj_key_main,true],
	[textbox,actiontext2,spk2],
];

action = [action1];
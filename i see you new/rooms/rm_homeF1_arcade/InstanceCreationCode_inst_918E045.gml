locked = true;
key = obj_cutter;

if obj_main.language == "chinese"
{
	rewardtext = ["爽"]; 
	wrong_msg_text = ["好像被铁链锁住了，看看有什么东西可以剪短铁链。"]
}
else if obj_main.language == "english"
{
	rewardtext = ["Sweet"]; 
	wrong_msg_text = ["Seems like its locked by chains, let's see if i can cut the chains."]
}

spk2 = [obj_player];

reward1 = [
[itembox,obj_pistol_elect,true],
[pickupitem,obj_pistol_elect],


	//[cutscene_destroy,obj_joystick],
	//[cutscene_fade,rm_piano,60,c_black],
];

reward = [reward1];
exam = true;
if obj_main.language == "chinese"
{
	rewardtext = ["现在可以用我的手机里的语音助手来看地图了"];
}
else if obj_main.language == "english"
{
	rewardtext = ["Now I can use Voice assistance to look into maps."];
}

spk = [obj_player];

reward1 = [
[textbox,rewardtext,spk],
[itembox,obj_map,true],
[change_variable,obj_controller,"map",true],
];	

reward = [reward1];
show_debug_message(object_get_name(92))
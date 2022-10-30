key = obj_key_pianoroom;
actionable= false;

if obj_main.language == "chinese"
{
	wrong_msg_text = ["我需要钢琴房的钥匙"];
	actiontext = ["怎么会有钢琴声，难道是番在练琴吗？"];
	actiontext2 = ["什么东西？"];
}
else if obj_main.language == "english"
{
	wrong_msg_text = ["I need the pianoroom key"];
	actiontext = ["Why there is piano sound, is that Liz playing the piano?"];
	actiontext2 = ["What the hell was that?"];
}

actionspk = [obj_player];
actionspk2 = [obj_player];

action1 = [
[textbox,actiontext,actionspk],
//[change_variable,inst_pianodoor2,"actionable",false],
[change_variable,id,"current_action",1],
//[change_variable,inst_pianodoor2,"current_action",1],
];

action2 = [
[change_variable,id,"operate",true],
[cutscene_sound,sd_dooropen,"play",false],
[cutscene_wait,1],

[cutscene_create,691,670,"world",obj_demon],
[screen_shake,10,120],
[cutscene_wait,3],
[cutscene_destroy,obj_demon],
[cutscene_wait,2],
[textbox,actiontext2,actionspk2],
//[change_variable,inst_pianodoor2,"actionable",false],
];

action = [action1,action2];
action = [action2];

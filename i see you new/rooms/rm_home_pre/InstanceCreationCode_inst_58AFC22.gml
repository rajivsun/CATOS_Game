
key = -99;
wrong_msg_text = ["打不开"];

actionable = false;

action1 = [
[change_variable,id,"operate",true],
[cutscene_sound,sd_dooropen,"play",false],
[cutscene_wait,1],
[fadetoroom,rm_homeF1,180,c_white,false,false],
]

action = [action1];
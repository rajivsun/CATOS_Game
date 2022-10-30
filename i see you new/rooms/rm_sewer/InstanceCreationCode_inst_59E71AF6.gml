rewardtext = [
"连上电源了，电控门应该可以打开了。",
"赶快离开这里吧。",
]
rewardspk = [obj_player,obj_player];

reward1 = [
[textbox,rewardtext,rewardspk],
[change_variable,inst_3221DC1A,"key",-1],
//[change_variable,obj_fusebox,"exam",true],
[change_variable,obj_controller,"current_mission",3],
];

reward = [reward1];
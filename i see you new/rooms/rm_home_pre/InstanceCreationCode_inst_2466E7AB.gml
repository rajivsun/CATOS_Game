
actionable = true;


action1 = [
[change_variable,id,"operate",true],
[cutscene_sound,sd_dooropen,"play",false],
[cutscene_wait,1],
[cutscene_create,x,y-50,"world",obj_demon],
[screen_shake,10,120],
[cutscene_wait,3],
[change_variable,inst_58AFC22,"actionable",true],
]

action = [action1];
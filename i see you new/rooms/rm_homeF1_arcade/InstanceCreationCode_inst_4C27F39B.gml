depth = 100;
//actionable = true;
exam = false;
if obj_main.language == "chinese"
{
	rewardtext = ["车库门开了"]
	rewardtext2 = [
	"可恶！居然把我的车破坏了！",
	"我这次不会放过你。"
	]
}
else if obj_main.language == "english"
{
	rewardtext = ["The gate is opened"]
	rewardtext2 = [
	"God damn it! You destroyed my car!",
	"I am not gonna let you go this time."
	]
}

rewardspk = [obj_player]
rewardspk = [obj_player,obj_player];
rewardspk2 = [obj_player,obj_player];

reward1 = [
[cutscene_destroy,obj_itembox],
[cutscene_sound,sd_garagedoor,"play",false],
[cutscene_sound,sd_boss_fight,"play",true],
[cutscene_wait,3],
[textbox,rewardtext,rewardspk],
[cutscene_wait,1],

[cutscene_destroy,obj_demon],
[cutscene_create,520,855,"world",obj_demon],
[change_variable,obj_demon,"acting",true],
[change_variable,obj_car,"acting",true],
[change_variable,obj_demon,"follow",obj_car],
[change_variable,obj_camera,"follow",obj_demon],
//[cutscene_wait,2],
//[screen_shake,10,120],
[cutscene_wait,6],
[change_variable,obj_demon,"acting",false],
[change_variable,obj_car,"acting",false],
[change_variable,obj_demon,"follow",obj_player],
[textbox,rewardtext2,rewardspk2],
[change_variable,obj_camera,"follow",obj_player],
[cutscene_wait,1],
[change_variable,obj_player,"boss_fight",true],
[change_variable,obj_controller,"current_mission",5],
[cutscene_close_door,inst_garagedoor1],
[cutscene_close_door,inst_garagedoor2],
]

reward = [reward1];
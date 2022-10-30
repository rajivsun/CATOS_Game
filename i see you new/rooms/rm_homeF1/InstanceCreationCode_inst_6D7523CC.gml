exam = true;
key = obj_sleepbabe;

if obj_main.language == "chinese"
{
	rewardtext = ["已成功解锁。","说不定我可以用电脑来找找番去哪了。"]
	rewardtext2 = ["正在读取目标位置...",
	"读取成功，目标位置为...圣马丁医院",
	"番怎么会在那里？不过起码知道番的位置了。",
	"这些坐标应该可以输入自动驾驶汽车里。",
	"已将坐标上传至连接的智能车辆中，已远程开启车库内门。", 
	"我马上就去找你番。",
	];
	rewardtext3 = ["又来？！"]
}
else if obj_main.language == "english"
{
	rewardtext = ["Unlocked successfully.","Maybe I can use the computer to find where Liz is."]
	rewardtext2 = ["Acquiring target location....",
	"Acquired complete, target location is Saint Martin Hospital",
	"Saint Martin ? What's she doing over there? Anyway, I know where Liz is now.",
	"This coordinate can be put into the auto car system.",
	"Successfully upload coordinate to auto car system, remotely open garage door.", 
	"Liz, I am on my way.",
	];
	rewardtext3 = ["Again?!"]
}

rewardspk = [id,obj_player];
rewardspk2 = [id,id,obj_player,id,obj_player,obj_player];
rewardspk3 = [obj_player]

reward2 = [
[textbox,rewardtext2,rewardspk2],
[change_variable,inst_garagedoor1,"key",-1],
[change_variable,inst_garagedoor2,"key",-1],

[cutscene_destroy,obj_demon],
[cutscene_create,2358,717,"world",obj_demon],
[change_variable,obj_camera,"follow",obj_demon],
[cutscene_wait,1],
[screen_shake,10,120],
[cutscene_wait,2.5],
[textbox,rewardtext3,rewardspk3],
[change_variable,obj_camera,"follow",obj_player],
[cutscene_wait,1],
[change_variable,obj_controller,"current_mission",2],
]
if obj_main.language == "chinese"
{
	reward1 = [
	[change_variable,id,"name","笔记本电脑（已解锁）"],
	[textbox,rewardtext,rewardspk],
	[change_variable,id,"current_reward",1],
	[change_variable,id,"current_puzzle",1],
	[change_variable,id,"exam",true],
	]
}
else if obj_main.language == "english"
{
	reward1 = [
	[change_variable,id,"name","Computer (Unlocked)"],
	[textbox,rewardtext,rewardspk],
	[change_variable,id,"current_reward",1],
	[change_variable,id,"current_puzzle",1],
	[change_variable,id,"exam",true],
	]
}


reward = [reward1,reward2];

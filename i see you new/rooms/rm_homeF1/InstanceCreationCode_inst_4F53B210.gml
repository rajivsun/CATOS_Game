if obj_main.language == "chinese"
{
	rewardtext = [
	"太好了，现在只要去把车库的外门打开就行了。",
	"番家里的车库外门开关在哪里来着，让我想想...","应该是在车库的某一面墙上如果我没记错的话"
	]
}
else if obj_main.language == "english"
{
	rewardtext = [
	"Great, now i just need to open the garage gate.",
	"Where is that switch, let me think...","It should be on one of the walls in the garage."
	]
}

rewardspk = [obj_player,obj_player,obj_player];

reward1 = [
[textbox,rewardtext,rewardspk],
[change_variable,obj_fusebox,"exam",true],
[change_variable,obj_controller,"current_mission",4],
];

reward = [reward1];
/// @description Insert description here
// You can write your code in this editor

interact = false;
hspeed = 0.5;
state = "run";
kid = false;

action2 = [
[cutscene_change_variable,id,"state","run"],
]

txt[0] = [
	["我是猎资集团的收资官，你之前申请的贷款已过了\n最后交付期，现在将实施强制措施，请你跟我们走一趟。",portrait.robot_hunter],
	["不行！我还有事情要处理！我不能跟你走！\n而且你们不是说到月底到期吗？怎么现在就来了？",portrait.player],
	["目标不配合，即将启动强制措施",portrait.robot_hunter],
	[2,action2],
	//[1,0],
];

action = 
[
[cutscene_text,txt,0],
];



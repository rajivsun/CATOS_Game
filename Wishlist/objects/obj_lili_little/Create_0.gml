/// @description Insert description here
// You can write your code in this editor

count_123 = 120;
cd = 120;
state = "start";

interact = false;

// ----------- village -----------
action2 = [
//[ cutscene_fade,rm_VILL_RIVER_123,60],
[cutscene_change_variable,obj_shaoda_little,"state","run"],
[cutscene_change_variable,id,"sprite_index",spr_lili_little],
];

txt[0] = [
	["嘿！你在干嘛！",portrait.lili_little],
	["我在看书呢。",portrait.player_little],
	["你看我摘的小花！漂亮吧？那边田里都是呢！",portrait.lili_little],
	["是吗？一会我也去摘一朵。",portrait.player_little],
	[2,action2],
];
action = [
[cutscene_text,txt,0],
];

// ----------- douji -----------
action5=[
[cutscene_fade,rm_VILL_RIVER_douji_game,120],
];
txt3[0] = [
	["我是猎资集团的收资官，你之前申请的贷款已过了\n最后交付期，现在将实施强制措施，请你跟我们走一趟。",portrait.robot_hunter],
	["不行！我还有事情要处理！我不能跟你走！\n而且你们不是说到月底到期吗？怎么现在就来了？",portrait.player],
	["目标不配合，即将启动强制措施",portrait.robot_hunter],
	[2,action5],
];
action4 = [
[cutscene_move,358,140,obj_dayu_little,0.5],
[cutscene_text,txt3,0], 
]
txt2[0] = [
	["我是猎资集团的收资官，你之前申请的贷款已过了\n最后交付期，现在将实施强制措施，请你跟我们走一趟。",portrait.robot_hunter],
	["不行！我还有事情要处理！我不能跟你走！\n而且你们不是说到月底到期吗？怎么现在就来了？",portrait.player],
	["目标不配合，即将启动强制措施",portrait.robot_hunter],
	[2,action4],
];
action3 = [
[cutscene_text,txt2,0],
];
/// @description Insert description here
// You can write your code in this editor

count_123 = 120;
count_123_dur = 120;
cd = 120;
state = "start";
game_start = false;
interact = false;

// ----------- village -----------
action2 = [
//[ cutscene_fade,rm_VILL_RIVER_123,60],
//[cutscene_change_variable,obj_shaoda_little,"state","run"],
[cutscene_change_variable,id,"sprite_index",spr_lili_little],
[cutscene_change_variable,obj_player_little_sit,"standingup","true"],
];
txt[1] = [
	["可是我还想看书呢",portrait.player_little],
	["哎呀你可以过一会再看嘛，就陪我玩一会嘛，求你了让让。",portrait.lili_little],
	["好吧丽丽，那我们就一起玩吧。",portrait.player_little],
	["好棒哦！",portrait.lili_little],
	["可是才两个人，还缺一个人。",portrait.player_little],
	["我们找少达吧！他在那钓鱼呢！",portrait.lili_little],
	["我去问问他。",portrait.player_little],
	[2,action2],
];
txt[2] = [
	["好啊，来一起玩吧！",portrait.player_little],
	["好棒哦！",portrait.lili_little],
	["可是才两个人，还缺一个人。",portrait.player_little],
	["我们找少达吧！他在那钓鱼呢！",portrait.lili_little],
	["我去问问他。",portrait.player_little],
	[2,action2],
];
txt[0] = [
	["嘿！你在干嘛！",portrait.lili_little],
	["我在看书呢。",portrait.player_little],
	["你知道唐僧是去哪取经吗？",portrait.player_little],
	["糖森？那是什么，很甜吗？",portrait.lili_little],
	["……那是西游记里的一个人物…",portrait.player_little],
	["你快看我摘的小花！漂亮吧？那边田里都是呢！",portrait.lili_little],
	["是吗？一会我也去摘一朵。",portrait.player_little],
	["对了我们玩一二三木头人吧！",portrait.lili_little],
	[0,[["可是我还想看书呢",1],["好啊一起来玩吧",2]]],
];
action = [
[cutscene_text,txt,0],
];

// ----------- 123 -------------
if room == rm_VILL_RIVER_123
{
	action2 = [
	[cutscene_change_variable,id,"game_start","true"],
	]
	if obj_controller.game_123 == 0
	{
		txt[0] = 
		[
			["你们准备好了吗？",portrait.lili_little],
			["准备好啦！",portrait.player_little],
			["那我开始啦！",portrait.lili_little],
			[2,action2],
		];
	}
	else if obj_controller.game_123 == 1
	{
		txt[0] = 
		[
			["我们再来一局吧！我要增加难度了！",portrait.lili_little],		
			["好啊，你还想再玩一局吗少达？",portrait.player_little],
			["可以啊，我也要认真玩了！",portrait.shaoda_little],
			["那我开始啦！",portrait.lili_little],
			[2,action2],
		];
	}
	action = [ [cutscene_text,txt,0]];
	take_action(action);
}



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
	["丽丽你数的太快啦。我都快更不上啦。",portrait.shaoda_little],
	["就是数快点才好玩呀。",portrait.player_little],
	["哈哈哈，好像也是哦。",portrait.shaoda_little],
	["太阳快下山啦，我们是不是应该回家啦。",portrait.lili_little],
	["是哦，要回家了，感觉时间过的好快。",portrait.shaoda_little],
	["我骑车送你们回家吧！我今天骑了我爷爷的自行车。",portrait.player_little],
	["好啊好啊，我做车头！",portrait.shaoda_little],
	["那我坐车尾！",portrait.lili_little],    
	[1,0],
];
action3 = [
[cutscene_text,txt2,0],
];
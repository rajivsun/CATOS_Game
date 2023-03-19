/// @description Insert description here
// You can write your code in this editor


alarm[0] = 60;

if room == rm_OLD_HOME
{
	action2 = 
	[
	[fade,rm_DEMO_fin,120,c_white],
	];

	txt[0] = 
	[
	["啊哈哈哈哈！",portrait.tudigong],
	["咦！土地公！原来我们家从小一直供奉的神像就是你啊！",portrait.player_little],
	["没错！余乃天地间之土地，守护此方百姓，责任...",portrait.tudigong],
	["土地公你之前已经介绍过自己了。",portrait.player_little],	
	["啊是吗？哈哈，不好意思...",portrait.tudigong],
	["那么，让让。",portrait.tudigong],
	["你准备好重启你的人生了吗？",portrait.tudigong],
	["我准备好了！",portrait.player_little],
	[2,action2],
	];

	action = [
	[cutscene_text,txt,0],
	];
}

if room == rm_FOREST_TRAVEL
{
	action2 = 
	[
		[cutscene_change_variable,obj_tudigong_gate,"reveal",true],
	];

	txt[0] = 
	[
		["吼吼！",portrait.tudigong],
		["你是？你是土地公？",portrait.player],
		["余乃天地间之土地，守护此方百姓，责任重大，刻不容缓...",portrait.tudigong],
		["咳咳咳，好了好了，不装腔作势了。",portrait.tudigong],
		["没错我就是土地公，守护这大地上的万物。\n我偶尔会下凡人间，来帮助有需要的人。",portrait.tudigong],
		["让让，我觉得你是一个很棒的孩子，\n我决定要再给你一次重来人生的机会。",portrait.tudigong],
		["真的吗？我真的能重新度过我的人生吗？",portrait.player],
		["我土地公说话何曾为假？",portrait.tudigong],
		["除了我偷偷藏了点私房钱，\n这个你不要和土地婆说哦。（咳咳）",portrait.tudigong],
		["那么我们现在就开始吧！",portrait.tudigong],
		
		["天地玄黄，宇宙洪荒，日月盈昃，辰宿列张，\n寒来暑往，秋收冬藏，闰余成岁，律吕调阳。",portrait.tudigong],
		[2,action2],
	];

	action = [
	[cutscene_text,txt,0],
	];	
}
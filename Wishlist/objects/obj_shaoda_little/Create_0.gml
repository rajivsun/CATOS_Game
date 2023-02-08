/// @description Insert description here
// You can write your code in this editor

state = "idle";
interact = false;

// ----------- village -----------
action2 = [
[cutscene_fade,rm_VILL_RIVER_123,60],
];
//action2 = [
//[ cutscene_fade,rm_VILL_RIVER_123,60],
//[cutscene_change_variable,obj_shaoda_little,"state","run"],
//[cutscene_change_variable,id,"sprite_index",spr_lili_little],
//];

txt[0] = [
	["小毅子，你在这干嘛呢？",portrait.shaoda_little],
	["我在这看书呢，你知道唐僧是去哪取经吗？",portrait.player_little],
	["糖森？那是什么，很甜吗？",portrait.shaoda_little],
	["......那是西游记里的一个人物...",portrait.player_little],
	["我们来玩木头人吧！反正离上课还有一段时间。",portrait.shaoda_little],
	["好呀好呀我要玩木头人！",portrait.lili_little],
	[0,[["好啊，来一起玩吧",1],["可是我还想看书呢",2]]],
];
txt[1] = [
["好啊，来一起玩吧！坐了好久，也该起来活动活动了。",portrait.player_little],
["好棒~",portrait.lili_little],
[2,action2],
];

txt[2] = [
["可是我还想看书呢。",portrait.player_little],
["哎呀你可以过一会再看嘛，我们都来了就一起玩吧，求你了让让~",portrait.lili_little],
["好吧丽丽，那我们就一起玩吧。",portrait.player_little],
[2,action2],
];
action = [
[cutscene_text,txt,0],
];








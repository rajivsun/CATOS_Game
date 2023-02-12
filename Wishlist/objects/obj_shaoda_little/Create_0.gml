/// @description Insert description here
// You can write your code in this editor

state = "idle";
interact = false;

// ----------- village -----------
//action2 = 
//[
//[cutscene_fade,rm_VILL_RIVER_123,60],
//];

action2 = 
[
//[ cutscene_fade,rm_VILL_RIVER_123,60],
//[cutscene_change_variable,obj_shaoda_little,"state","run"],
[cutscene_change_variable,obj_fishing_pod,"interactable","true"],
];

txt[0] = 
[
	["嘿！少达，你要和我们玩一二三木头人吗？",portrait.player_little],
	["我还要钓鱼呢！妈妈说要今天要钓三条鱼。我才钓了一条。",portrait.shaoda_little],
	["你都钓了一中午了，才钓上来一条啊...",portrait.player_little],
	["今天这鱼不知怎么了，就是不上钩。",portrait.shaoda_little],
	[0,[["好吧，那你加把劲吧",1],["那我也来帮你钓吧",2]]],
];
txt[1] = [
["好吧，那你要加把劲了。总不能钓一下午鱼吧。",portrait.player_little],
["哎没办法啊，不然回家要被妈妈说了。",portrait.shaoda_little],
[1,0],
];
txt[2] = [
["那我也来帮你钓吧！这样快点。",portrait.player_little],
["哎呀那太好了，正好我今天多带了一根鱼竿。",portrait.shaoda_little],
["本来是给我爸带的，结果他今天去拉货了。\n你就那他的鱼竿吧，就在旁边。",portrait.shaoda_little],
["那就看我的吧！",portrait.player_little],
[2,action2],
];

action = [
[cutscene_text,txt,0],
];








/// @description Insert description here
// You can write your code in this editor


following = false;
max_dist = 30;
follow = false;
action = [
//[cutscene_change_variable,id,"follow",true],
//[cutscene_change_variable,id,"interactable",false],
[cutscene_create,x,y,"system",obj_cat_follow],
[cutscene_destroy,id],
];

txt[0] = [
["喵~",portrait.cat],
["面包，你又饿啦，我可没有吃的了。",portrait.player],
["喵喵喵~~~",portrait.cat],
[0,[["给你个小鱼干吧",1],["我真没吃的了",2]]],
];

txt[1] = [
["哎，还是给你一个小鱼干吧，谁叫你这么可爱呢。",portrait.player],
["喵~",portrait.cat],
["有你每天陪着我真好，感觉没那么孤独了。",portrait.player],
[2,action],
];

txt[2] = 
[
["我真没吃的了面包。\n虽说十橘九胖，但是你也不能这样放飞自我呀。",portrait.player],
["喵...",portrait.cat],
["不过有你每天陪着我真好，感觉没那么孤独了。",portrait.player],
[1,0],
];



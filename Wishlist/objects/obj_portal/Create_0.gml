/// @description Insert description here
// You can write your code in this editor

talk = false;
count = 0
image_alpha = 0;
image_xscale = 2;
image_yscale = image_xscale;

action = 
[
[fade,rm_Travel,120,c_white],
];


txt[0]=
[
["好了让让，你现在走进我的牌坊里。",portrait.tudigong],
["走进去会发生什么呢？",portrait.player],
["你走进去就知道了哈哈哈哈",portrait.tudigong],
["好吧.....",portrait.player],
[1,0],
];

action_talk =  [[cutscene_text,txt,0]];
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
	["让让，在看书呢。",portrait.old_farmer],
	["是啊，这西游记的故事可好玩了呢。",portrait.player_little],
	["这让让从小就爱读书，长大肯定是个人才。",portrait.old_farmer],
	["要是我家大宇也像你这样就好了，这孩子从小就不爱读书。",portrait.old_farmer],
	["人各有志嘛大爷，每个人都有自己的特长。",portrait.player_little],
	["哈哈哈也是。行，我去忙了，哪天来家里吃饭啊让让。",portrait.old_farmer],
	["好的大爷。",portrait.player_little],
	[2,action2],
	//[1,0],
];

action = 
[
[cutscene_text,txt,0],
];



/// @description Insert description here
// You can write your code in this editor

action = [
[cutscene_fade,rm_DART,60],
];

txt[0] = [
["你是这酒吧的常客吗？",portrait.player],
["我是在这酒吧长大的。这酒吧40年前开的时候\n还没这些乱七八糟亮闪闪的东西呢。",portrait.player],
["哎，还是以前的酒吧好啊。",portrait.player],
["那看来你对这个酒吧很了解咯？",portrait.player],
["这酒吧每个角落我都了如指掌。",portrait.player],
["那你知道这个酒吧有个秘密房间吗？",portrait.player],
["看你的样子好像你在骗人呢。",portrait.player],
["咳。。。这样吧，你会玩飞镖吗？你要是赢了我就和你聊聊。",portrait.player],
[0,[["来吧",1],["还是算了吧",2]]]
];

txt[1] = [
["那你可是选对人了，想当年我在国外留学的时候还得过飞镖冠军呢。",portrait.player],
["那来吧！",portrait.player],
[2,action],
];

txt[2] = [
["还是算了吧，我现在没什么兴趣。",portrait.player],
["那真遗憾。",portrait.player],
[1,0],
];
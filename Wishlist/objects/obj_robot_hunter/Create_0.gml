/// @description Insert description here
// You can write your code in this editor

if room == rm_METRO
{
	txt[0] = [
	["刚被开除么？",portrait.robot_hunter],
	["你什么意思？你怎么知道我被开除了？\n这又和你有什么关系呢？",portrait.player],
	["哦，不好意思。我只是刚刚在旁边听到了。别误会哈。",portrait.robot_hunter],
	["对了，你听说过回到过去项目吗？",portrait.robot_hunter],
	["嘿我还真看到过，别说我其实挺感兴趣的。",portrait.player],
	["那你可找对人了，今晚在X酒吧，我在那里等你。",portrait.robot_hunter],
	["你怎么知道我一定会去呢？我还没确定呢。",portrait.player],
	["你一定会去的，哈哈哈。",portrait.robot_hunter],
	[1,0],
	];
}


if room == rm_SECRET_ROOM
{
	txt[0] = [
	["让先生！你好！",portrait.robot_hunter],
	["请开始你的忽悠。",portrait.player],
	["好那我开始了。我们是国际量子研究所的科学家。",portrait.robot_hunter],
	["好",portrait.player],
	[1,0],		
	];

}
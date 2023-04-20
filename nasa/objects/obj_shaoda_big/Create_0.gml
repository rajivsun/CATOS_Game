/// @description Insert description here
// You can write your code in this editor

action2 =
[
	[cutscene_change_variable,obj_camera,"state","3"],
	
];


txt[0] = 
[
	["哎，那个倒霉公司。真是太过分了，老员工就这么开了。",portrait.player],
	["现在公司都这样，人一到三十五说开就开了。",portrait.shaoda_big],
	["也怪我，没啥一技之长，现在年轻人啥都会，\n体力也比不上人家了。",portrait.player],
	["别这么说自己，这不是你的问题。",portrait.shaoda_big],
	["行了，不多说了。来喝一杯吧。",portrait.player],
	["对了，今晚酒吧里好像有举办一个活动，\n好像是可以凭券免费获得酒水，要不你去吧台问问？",portrait.shaoda_big],
	["有这么好的事？那我今晚可要一醉方休！",portrait.player],
	[2,action2],
];


action = 
[
	[cutscene_text,txt,0],
];
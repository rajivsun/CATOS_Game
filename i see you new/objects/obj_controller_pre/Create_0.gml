/// @description Insert description here
// You can write your code in this editor

scene = 0;
text1 = ["什么声音？"];
spk1 = [obj_player];
action = [

[animation_wait,obj_player,spr_playerU,1,false],
[textbox,text1,spk1],
[change_variable,obj_car_cutscene,"cutscene1_run",true],

];
text1_2 = ["呼...刚刚发生了什么？","我这是在哪里？"];
spk1_2 = [obj_player,obj_player];

action1_2 = [
[animation_wait,obj_player,spr_playerU,4,false],
[textbox,text1_2,spk1_2],

]


text2 = [
"番？你怎么在这？",
"贤，我们分开吧...",
"番，怎么回事？",
];
spk2 = [obj_player,obj_baobao,obj_player]
text3 = ["不要来找我了"]
spk3 = [obj_baobao]
text4 = ["番？番！！！"];
spk4 = [obj_player]

action2 = [

[animation_wait,obj_player,spr_playerU,0.5,false],
[textbox,text2,spk2],
[animation_wait,obj_baobao,spr_baobaoU,1],
[textbox,text3,spk3],
[change_variable,obj_baobao,"walk_away",true],
[cutscene_wait,2],
[textbox,text4,spk4],
]
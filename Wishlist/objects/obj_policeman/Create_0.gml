/// @description Insert description here
// You can write your code in this editor

count = 0;
delay = random_range(10,120);
txt[0] = [
["你们就不能通融一下吗？外面这么冷的天，\n他老人家根本经不住冻啊。",portrait.player],
["不可以，我们不能违反规定。",portrait.policeman],
["你们太固执了...",portrait.player],
["根据机器人行为法第十三条，作为执法机器人时，\n请务必履行法律条例，否则...",portrait.policeman],
["行了行了，别念叨了...",portrait.player],
[1,0],
];

hacked = false;
leave = false;
actioned = false;

//action3=
//[
//[cutscene_change_variable,obj_camera,"follow",obj_player],
//];
//txt3[0] = 
//[
//["小伙子又是你啊，真的谢谢你啊，要不是你，我今晚可能就要睡外面了。",portrait.old_man],
//["我这把年纪了，身体经不起冻啊。",portrait.old_man],
//["没事大爷，小事而已。",portrait.player],
//[2,action3],
//];
action2=
[
[cutscene_change_variable,obj_policeman,"leave","true"],
//[cutscene_wait,2],
[cutscene_change_variable,obj_camera,"follow",obj_player],
];
txt2[0]=
[
["安盾安保公司祝您晚上愉快，再见。",portrait.policeman],
[2,action2],
];

action = 
[
[cutscene_change_variable,obj_camera,"follow",obj_policeman],
[cutscene_text,txt2,0],
];
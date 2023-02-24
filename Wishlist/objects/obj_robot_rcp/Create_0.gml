/// @description Insert description here
// You can write your code in this editor

action2 = 
[
[cutscene_create,x,y,"system",obj_rcp_game],
];

txt[0] = 
[
["我是猜拳机器人，你需要赢我三次才算胜利。",portrait.robot_rcp],
["这么苛刻的条件吗？",portrait.player],
["对啊，不然岂不是所有人都能拿到奖励了。",portrait.robot_rcp],
["好吧，让我来试试。",portrait.player],
[2,action2],
];
action =
[
[cutscene_text,txt,0],
];

slot= [spr_robot_rcp_s,spr_robot_rcp_r,spr_robot_rcp_p];

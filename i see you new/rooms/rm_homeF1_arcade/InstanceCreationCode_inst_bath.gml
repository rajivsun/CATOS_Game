
actionable = false;

actiontext = ["奇怪，浴室里没有人...."];
spk = [obj_player];

action1 = [
[cutscene_destroy,"sound"],
[textbox,actiontext,spk],
[next_event],
];

action = [action1];
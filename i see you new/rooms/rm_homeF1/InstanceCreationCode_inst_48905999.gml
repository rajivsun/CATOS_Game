actionable = true;
actiontext = [
"为什么浴缸里有一把枪。"];

spk = [obj_player];

action1 = [
[cutscene_destroy,id],
[itembox,obj_pistol,true],
[pickupitem,obj_pistol],
//[textbox,actiontext,spk],
//[change_variable,id,"x",-99],
//[change_variable,id,"y",-99],

//[tutorialbox,1],
];

action = [action1];


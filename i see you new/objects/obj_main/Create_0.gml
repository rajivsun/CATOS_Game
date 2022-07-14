/// @description Insert description here
// You can write your code in this editor
//language = "english";
//window_set_cursor(cr_none);
//cursor_sprite = spr_cursor;

bbportrait = loadgame_ext("core","important","bbportrait");
hard_complete = loadgame_ext("core","important","hard_complete");

new_start = false;
if obj_main.language == "chinese"
{
	text1 = ["终于到家了，坐了好久的车。","好饿啊，番肯定已经做好饭了吧。"];
}
else if obj_main.language == "english"
{
	text1 = ["I am finaly home, it was a long trip.","I am so hungry, I bet Liz has cooked dinner."];
}


spk1 = [obj_player,obj_player];

action1 = [
[cutscene_wait,3],
[textbox,text1,spk1],
[tutorialbox,2],
];

mode_bonus = false;
mode = 0;

current_end = -1;
choose_chapiter = 1;

//depth = -9999;

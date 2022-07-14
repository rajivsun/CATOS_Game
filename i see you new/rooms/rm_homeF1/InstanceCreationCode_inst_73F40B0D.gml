alpha = 0.5;
depth = -9999;

dest_x = 3030;
dest_y = 1702;

locked = true;

key = obj_cutter;

if obj_main.language == "chinese"
{
	wrong_msg_text = ["阁楼被铁链锁住了，看看有什么东西可以剪短铁链。"]
	txt = ["铁链被剪短了，现在可以去阁楼看看了。"]
}
else if obj_main.language == "english"
{
	wrong_msg_text = ["Seems like the attic is locked by chains, let's see if i can cut them"]
	txt = ["Chains are cut, now i can go to the attic."]
}

spk = [obj_player]
reward1 = [[textbox,txt,spk],[cutscene_create,2728,1819,"world",obj_demonSMALL]];
reward = [reward1];
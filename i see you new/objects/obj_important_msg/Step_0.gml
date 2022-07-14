/// @description Insert description here
// You can write your code in this editor
//check important item

if room == rm_homeF1{
	if check_materials(obj_bbportrait) == true{
		pickupitem(obj_bbportrait);
		itembox(obj_bbportrait,true);
		if obj_main.language == "chinese"
		{
			notice_msg = "番的画像已加入博物馆";
		}
		else if obj_main.language == "english"
		{
			notice_msg = "Portrait of Liz added to the museum";
		}

		alarm[0] = 300;
		savegame_ext("core","important","bbportrait",true);
	}
}
if room == rm_sewer{
	
}

if kill_hardboss == true{
	alarm[0] = 300;
	kill_hardboss = false;
	if obj_main.language == "chinese"
	{
		notice_msg = "已用盲眼战神模式完成章节";
	}
	else if obj_main.language == "english"
	{
		notice_msg = "Chapter completed in hard mode";
	}
}

if journal == true{
	alarm[0] = 300;
	if obj_main.language == "chinese"
	{
		notice_msg = "新的日志";
	}
	else if obj_main.language == "english"
	{
		notice_msg = "New journal";
	}

	journal = false;
}
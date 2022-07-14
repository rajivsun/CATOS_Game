/// @description Insert description here
// You can write your code in this editor

if language == "chinese"
{
	var notice = "此版本为测试试玩版，正式版会有全部章节，\n欢迎给作者提出意见，感谢每一位帮助测试本游戏的玩家！\n"+
	"感谢sappheiros,Scott Buckley,Elysium Audio的音乐。";
	var _main = "返回";
	var _start = "开始游戏";
	var _difficulty = "难度选择";
	var _normal = "以普通难度进行游戏。"
	var _hard = "你是盲视战神，即使没有视觉，你任然可以大杀四方。\n敌人血量，速度和攻击力提升。"+
		"\n禁用地图功能，禁用存档功能。\n关门无法阻挡敌人视野";
	var _museum = "存放着在游戏中收集到的各种战利品，\n以及特殊物品，人物等等。";
	var _allseemode = "以全视模式回到已经完全解锁的场景，\n需要集齐记忆碎片并以盲眼战神模式完成章节";
	var _fragment = "已集齐记忆碎片：";
	var _hardcomplete = "以盲眼战神模式完成章节：";
	var _arcade = "以街机模式体验爽快的战斗，\n（敬请期待）";
	var _yes = "是"; var _no = "否";
}
else if language == "english"
{
	var notice = "It is a beta testing version, the official version will unlock full chapters.\n"+
	"Comments are welcome, and thanks to every players"+ "and developers who have helped build this game!\n"+
	"Credit to sappheiros, Scott Buckley, Elysium Audio for the music.";
	var _main = "BACK";
	var _start = "START";
	var _difficulty = "DIFFICULTY";
	var _normal = "Play in normal mode."
	var _hard = "You are now in the Blind War Junkie mode! \n"+
	"Even without vision, you can still erase anyone \n"+
	"who stands in your ways with a killer's instinct. \n"+

	"The enemy's HP, speed and attack power are enhanced.\n"+
	"The map and checkpoint saving functions are disabled, \n"+
	"closing doors will not block enemy's view\n";
	var _museum = "You will find all your collections \n"+
	"and special objects you found in game.";
	var _allseemode = "Go back to fully unlocked game scene in all-seeing mode. \n"+
	"You need to collect all the memory fragments\n"+
	"and clear the chapter in Blind War Junkie mode";
	var _fragment = "Memories fragments have been collected:";
	var _hardcomplete = "Clear the chapter in Blind War Junkie mode:";
	var _arcade = "Play in intensive arcade mode，\n(Coming Soon)";
	var _yes = "yes"; var _no = "no";
}

if room == rm_start{
	
	//version
	draw_set_font(ft_numberSSMALL);
	draw_set_valign(fa_middle);draw_set_halign(fa_right);
	draw_text(1250,600,"Version: " + GM_version);	
	

	draw_set_font(ft_chinese);
	draw_set_valign(fa_middle);draw_set_halign(fa_center);
	draw_text(700,550,notice);
}
if room == rm_gamemode{
		
	draw_set_font(ft_chineseULTRA)
	draw_set_valign(fa_middle);draw_set_halign(fa_center);
	draw_text(150,50,_main)
	
	
	//draw_set_font(ft_chinese)
	//draw_set_valign(fa_middle);draw_set_halign(fa_center);
	//draw_text(640,50,"注意：开始新游戏将抹除已有存档")
	
	//signs
	draw_sprite_ext(spr_next,0,60,50,2,2,180,c_white,1);
	
}

if room == rm_difficulty{
		
	draw_set_font(ft_chineseULTRA)
	draw_set_valign(fa_middle);draw_set_halign(fa_center);
	draw_text(150,50,_main)

	draw_set_font(ft_chineseULTRA)
	draw_set_valign(fa_middle);draw_set_halign(fa_center);
	draw_text(1060,50,_start)
	
	draw_set_font(ft_chineseULTRA)
	draw_set_valign(fa_middle);draw_set_halign(fa_center);
	draw_text(640,50,_difficulty)
	
	draw_set_font(ft_chinese)
	draw_set_valign(fa_middle);draw_set_halign(fa_center);
	if mode == 0{
		draw_text(900,250,_normal)
	}
	
	if mode == 1{
		draw_text(900,250,_hard)
	}
	
	//draw_set_font(ft_chinese)
	//draw_set_valign(fa_middle);draw_set_halign(fa_center);
	//draw_text(640,50,"注意：开始新游戏将抹除已有存档")
	
	
	draw_sprite_ext(spr_next,0,1200,50,2,2,0,c_white,1);
	draw_sprite_ext(spr_next,0,60,50,2,2,180,c_white,1);
	
}
if room == rm_choosechapiter
{
	draw_set_font(ft_chineseULTRA)
	draw_set_valign(fa_middle);draw_set_halign(fa_center);
	draw_text(150,50,_main)

	draw_set_font(ft_chineseULTRA)
	draw_set_valign(fa_middle);draw_set_halign(fa_center);
	draw_text(1060,50,_start)
	//signs
	draw_sprite_ext(spr_next,0,1200,50,2,2,0,c_white,1);
	draw_sprite_ext(spr_next,0,60,50,2,2,180,c_white,1);
}
if room == rm_bonus{
	
	draw_set_font(ft_chineseULTRA)
	draw_set_valign(fa_middle);draw_set_halign(fa_center);
	draw_text(150,50,_main)

	draw_set_font(ft_chineseULTRA)
	draw_set_valign(fa_middle);draw_set_halign(fa_center);
	draw_text(1060,50,_start)
	
	draw_set_font(ft_chinese)
	draw_set_valign(fa_middle);draw_set_halign(fa_center);
	if mode_bonus == "museum"{
		draw_text(900,250,_museum);
	}
	if mode_bonus == "tour"{
		
		var _collect;var _hardboss
		if bbportrait == true _collect = _yes else _collect = _no
		if hard_complete == true _hardboss = _yes else _hardboss = _no
		draw_text(900,250,_allseemode);
		draw_text(900,400,_fragment+_collect);
		draw_text(900,450,_hardcomplete+ _hardboss)
	}
	if mode_bonus == "arcade"{
		draw_text(900,250,_arcade);
	}
	
	//signs
	draw_sprite_ext(spr_next,0,1200,50,2,2,0,c_white,1);
	draw_sprite_ext(spr_next,0,60,50,2,2,180,c_white,1);
}
	
if room == rm_options
{
	draw_set_font(ft_chineseULTRA)
	draw_set_valign(fa_middle);draw_set_halign(fa_center);
	draw_text(150,50,_main)
	
	//signs
	draw_sprite_ext(spr_next,0,60,50,2,2,180,c_white,1);
}
//draw_text(50,500,bbportrait);
//draw_text(50,550,new_start);



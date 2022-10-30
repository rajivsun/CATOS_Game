// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function room_home_create(){
	scene = 0;
	timer = 0;
	piano_scene = false;
	//tutorial = 0;
	//monster1 = false;
	check_cactus = false;
	check_pc = false;
	//freeze_player = true;
	current_mission = 0
	boss_fight = false;
	depth = -9700;
	_pause = -1;
	vk_j = virtual_key_add(1200-32,50-32,64,64,ord("J"));
	map = false;
	//gameboy_win = false;
	//virtual_key_show(vk_j);
	if obj_main.language == "chinese"
	{
		mission = [
		"回家",
		"找到番的下落",
		"去车库开车",
		"制作汽车电瓶：\n稀硫酸（厨房）\n铜条（书房）\n空电瓶（储藏室）",
		"打开车库外门开关",
		
		"击败敌人",
		"调查地下室",
		"剪断番身上的铁链",
		"找到梯子下到地底",
		"击败敌人",
		
		"下到地底寻找番",
		];
	}
	else if obj_main.language == "english"
	{
		mission = [
		"Go home",
		"Find Liz",
		"Get car in the garage",
		"Build car battery: \nDilute acid (kitchen)\nCopper rod (study room)\nempty battery (storage room)",
		"Open the switch of the gate",
		
		"Defeat enemy",
		"Investigate basement",
		"Cut off the shackles on Liz",
		"Find the ladder to get to the underground",
		"Defeat enemy",
		
		"Go underground to find Liz",
		];
	}
}
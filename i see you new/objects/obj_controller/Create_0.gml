/// @description Insert description here
// You can write your code in this editor
pc_password =15;
_pause = -1;
timer = 0;
vk_j = virtual_key_add(1200-32,50-32,64,64,ord("J"));
scene = 0;
map = false;
current_mission = 0;

switch room{
	case rm_home_pre:		
		room_home_pre_create();
		break;
	
	case rm_homeF1:
		room_home_create();
		break;
		
	case rm_sewer:
		mission = [
		"继续寻找番",
		"恢复地下设施的电力",
		"制作电子装置",
		"离开地下设施",
		];
		break;	
		
	case rm_museum:
		mission = ["尽情探索博物馆吧"];
		break;
}

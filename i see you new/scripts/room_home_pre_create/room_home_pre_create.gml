// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function room_home_pre_create(){

		vk_j = virtual_key_add(1200-32,50-32,64,64,ord("J"));
		timer = 0;
		alarm[2] = 360; // mangdao indication count
		_pause = -1;
		scene = -1;
		
		textpre = ["坐了好久的车。","再走一段路就能到家啦。"];
		spkpre = [obj_player,obj_player];
		action_pre = [
		[textbox,textpre,spkpre]
		] 
		
		text1 = ["什么声音？"];
		spk1 = [obj_player];
		action = [
		[textbox,text1,spk1],
		]
		
		text11 = ["这条街今天这么安静的吗？"];
		spk11 = [obj_player];		
		action1_1 = [
		[animation_wait,obj_player,spr_playerU,1,false],
		[textbox,text11,spk11],
		[change_variable,obj_car_cutscene,"cutscene1_run",true],
		];
		
		text1_2 = ["刚刚...刚刚发生了什么？","我这是在哪里？"];
		spk1_2 = [obj_player,obj_player];
		action1_2 = [

		[animation_wait,obj_player,spr_playerU,9,false],
		[textbox,text1_2,spk1_2],
		]

		text2 = [
		"番？你怎么在这？",
		"贤，我们分开吧...",
		"番，怎么回事？",
		];
		spk2 = [obj_player,obj_baobao,obj_player]
		text3 = ["不要来找我了"]
		spk3 = [obj_baobao]
		text4 = ["番？番！！！"];
		spk4 = [obj_player]

		action2 = [
		[cutscene_sound,sd_scary_background,"play",true],
		[animation_wait,obj_player,spr_playerU,0.5,false],
		[textbox,text2,spk2],
		[animation_wait,obj_baobao,spr_baobaoU,1],
		[textbox,text3,spk3],
		[change_variable,obj_baobao,"walk_away",true],
		[cutscene_wait,2],
		[textbox,text4,spk4],
		]
		
}
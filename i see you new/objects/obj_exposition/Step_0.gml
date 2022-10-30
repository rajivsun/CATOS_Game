/// @description Insert description here
// You can write your code in this editor

if object_index == obj_demonLIVE{
	if obj_main.hard_complete == false{

		text = ["需要以盲视战神模式完成章节"];
		spk = [obj_player];
		image_index= 0;
	}
	else {
		text = ["就是这东西追着我满屋子跑"];
		spk = [obj_player];
		image_index = 1;
	}
}

if object_index == obj_fan1{
	text = ["你好，请问你是","我是第一位写出第一章完整攻略的人，你可能有看过我在taptap上的攻略。","啊，好厉害！"]
	spk = [obj_player,obj_fan1,obj_player];
}
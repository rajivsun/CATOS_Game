/// @description Insert description here
// You can write your code in this editor

audio_play_sound(sd_intromusic,1,1);
audio_sound_gain(sd_intromusic,1,1000);
pass = false;
vk_sub = virtual_key_add(1200-32,50-32,64,64,vk_subtract)
_count = 0;
alpha_train = 1;

current = 0;
alpha = 0;
timer = 0;
timer2 = 0;
state = 0;
duration_main = 150;
duration = 60;


if obj_main.current_end == -1
{
	if obj_main.language == "chinese"
	{
		text = [
		"什么？我是怎么失明的？",
		"我不太想去回忆细节，我只记得有一束光，\n一束很强的光，然后...",
		"不过我是幸运的。",
		"我有一个无微不至地照顾我的女朋友。",
		"未婚妻，准确的说。下个月我们就要结婚了。",
		"是啊，我现在就整天盼着下个月的到来。",
		"不过现在的社会保障是真的好，\n像我这样的盲人也可以自己一个人去出差。",
		"已经有半个月没见到她了，真想赶快见到她。",
		"今天她在家做了一大桌菜，我已经等不及了哈哈。",
		"哦我到站了，那我先下了，很高兴认识你，后会有期。",
		"",
		"第一章 家",
		];
	}
	else if obj_main.language == "english"
	{
		text = [
		"So, how did I get blind?",
		"I try not to memorize too much details, \nbut I just recall a light, a very strong light, \nand then...",
		"I'm lucky though,",
		"I have a girlfriend who takes care of me with all her heart.",
		"Well, Fiance, to be exact, \nbecause we are getting married next month.",
		"Yeah, I can't wait for next month.",
		"You gotta say,\n blind guy like me can go on a business trip all by myself,\nthe society must have done something right.",
		"I haven't seen her for half month, \nreally eager see her now.",
		"She made a nice hot meal today to \nwelcome me back, can't wait for it",
		"Oh, it's my stop, I better get going then, \nreally nice talking with you, \nhope we can meet again. Bye",
		"",
		"Chapter 1 HOME",
		];
	}
	roomgoto = rm_homeF1;
}
else if obj_main.current_end == 0
{
	text = [
	"我从外地出差回来，本以为能见到许久未见的未婚妻番。",
	"然而她却离奇地失踪了，家里也发生了许多怪事。",
	"而且番居然在我的眼皮地下又一次消失了，\n地下室也塌陷出了一个巨大的洞。",
	"在消灭了我也不知道是什么东西的敌人后，\n我顺着地下室的洞来到了下水道。",
	"我也不知道下水道的尽头是什么。",
	"",
	"第二章 地下设施",

	];
	
	roomgoto = rm_sewer;
}

msg = text[current];
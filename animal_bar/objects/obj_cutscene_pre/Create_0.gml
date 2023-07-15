/// @description Insert description here
// You can write your code in this editor

scale_x = 1.5;
scale_y = 1.5;

pass = false;
vk_sub = virtual_key_add(1200-32,50-32,64,64,vk_subtract)
_count = 0;
alpha_train = 1;

current = 0;
alpha = 0;
timer = 0;
timer2 = 0;
state = 0;
duration_main = 300;
duration = 60;

cutscene_image = [spr_scientist,spr_evolution,spr_human_leave,spr_tavern];
current_image = 0;

text = [
"2034年，当人类科学家揭开了生物进化的神秘面纱，终于诞生出引领进化之路的奇迹装置时，\n整个世界为之一震。",
"这新奇的装置点燃了动物界的希望与激情，引发了一场全新的转变。",
"动物们开始蜕变，融入这人类所建立的社会体系，如影随形地追逐着人类活动的脚步。",
"本能与思维的交织，创造出一段崭新的历史。",
"然而，数十年过去，不经意间，人类的繁衍力却跌至冰点，全球人口迅速减少，仅剩下寥寥数百万。",
"地球成为了众多生灵的栖息之所，而人类则默默退出了历史的舞台。据闻，他们隐居在南极的某个角落，\n与世隔绝，与自然相伴。",
"你，一名人类，或许是最后一代。在这动物主宰的城市里开启了一家独特的酒馆。",
"在这被繁华与自然交织的世界中，你与各色动物相互交织，聆听他们的故事，分享他们的欢笑与痛苦。",
"你将成为这座城市的纽带，将人类的智慧与温暖传递给身处其中的动物们。",
"你的酒馆将成为一个独特的聚集地，\n汇聚了生命的多样性与奇妙的交集。",
];
	
//你是不幸的，因为你从没见过你的生父母。同时你也是幸运的，一对慈祥的熊猫夫妇把你抚养长大。
roomgoto = rm_bar;

msg = text[current];
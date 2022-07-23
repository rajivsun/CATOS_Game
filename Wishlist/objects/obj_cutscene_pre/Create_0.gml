/// @description Insert description here
// You can write your code in this editor

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

msg = text[current];


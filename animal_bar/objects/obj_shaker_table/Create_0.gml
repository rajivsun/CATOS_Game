/// @description Insert description here
// You can write your code in this editor

y_offset_2 = 0;
state = "mixing";
dist = y - obj_bar_table.y;
current_cocktail = -1;
//ls_drinks = ds_list_create();
ls_drinks = [];
y_offset = 0;

//ds_list_add(ls_drinks,"whiskey");
//ds_list_add(ls_drinks,"orange juice");
//ds_list_add(ls_drinks,"orange juice");

all_drinks = [
[obj_cognac,obj_liqueur_apple,obj_lemon_juice],
[obj_vodka,obj_lemon_juice,obj_liqueur_orange,obj_absinte],
[obj_rum,obj_liqueur_banana,obj_orange_juice,obj_lemon_juice],
[obj_vodka,obj_coconut_milk,obj_lemon_juice],
];

all_drinks_name = [
["鹿舞风华"],
["狮心特调"],
["猩猩狂潮"],
["熊猫抓抓"],
];

all_drinks_description = [
["优雅 清凉 温暖"],
["浓郁 力量 清凉"],
["浓郁 酸爽 力量"],
["清凉 酸爽 甘甜"],
];

all_drinks_intro = [
["让口感和香气带领你跨越城市的喧嚣，进入森林深处，与雄鹿一同翩翩起舞。"],
["呈现出狮子般的豪迈与王者风范，一杯烈酒，尽显无畏勇气。"],
["体验一场野性与活力的狂欢，让你的味蕾在这潮流中跳跃，享受无拘无束的乐趣。"],
["每一口中都感受到宁静与和谐，享受属于自己的甜蜜时刻。"],
];



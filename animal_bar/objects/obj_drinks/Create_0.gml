/// @description Insert description here
// You can write your code in this editor

if object_get_parent(object_index) == obj_alcohol
{
	dist = x - inst_support_1.x;
}
if object_get_parent(object_index) == obj_liqueur
{
	dist = x - inst_support_2.x;
}
if object_get_parent(object_index) == obj_non_alcohol
{
	dist = x - inst_support_3.x;
}
//if object_get_parent(object_index) == obj_season
//{
//	dist = x - inst_support_4.x;
//}

if object_index == obj_tequila name = ["龙舌兰"];
else if object_index == obj_cognac name = ["白兰地"];
else if object_index == obj_whiskey name = ["威士忌"];
else if object_index == obj_rum name = ["朗姆酒"];
else if object_index == obj_vodka name = ["伏特加"];
else if object_index == obj_gin name = ["金酒"];
else if object_index == obj_liqueur_apple name = ["苹果利口酒"];
else if object_index == obj_liqueur_banana name = ["香蕉利口酒"];
else if object_index == obj_liqueur_blueberry name = ["蓝莓利口酒"];
else if object_index == obj_liqueur_coffee name = ["咖啡利口酒"];
else if object_index == obj_liqueur_orange name = ["橙子利口酒"];
else if object_index == obj_liqueur_plum name = ["梅子利口酒"];
else if object_index == obj_champagne name = ["香槟"];
else if object_index == obj_absinte name = ["苦艾酒"];
else if object_index == obj_orange_juice name = ["橘子汁"];
else if object_index == obj_apple_juice name = ["苹果汁"];
else if object_index == obj_grape_juice name = ["葡萄汁"];
else if object_index == obj_pineapple_juice name = ["菠萝汁"];
else if object_index == obj_cranberry_juice name = ["蔓越莓汁"];
else if object_index == obj_lemon_juice name = ["柠檬汁"];
else if object_index == obj_coconut_milk name = ["椰奶"];

else name = [""];

outline_create(shader_outlineW);

// ----------- init -----------
image_xscale = 0;
image_yscale = 0;
destroying = false;
initial_depth = depth;
dragging_item = noone;
start_x = 100;
start_y = 100;
mouse_buff_x = 0;
mouse_buff_y = 0;
dragging = false;
click = false;
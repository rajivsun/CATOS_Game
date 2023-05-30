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
if object_get_parent(object_index) == obj_season
{
	dist = x - inst_support_4.x;
}

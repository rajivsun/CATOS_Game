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
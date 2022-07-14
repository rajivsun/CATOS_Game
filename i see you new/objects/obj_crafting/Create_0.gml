/// @description Insert description here
// You can write your code in this editor

//virtual_key_show(vk_tb)
depth = -9800;
/// inventory UI setup-------------------------
spr_UI = spr_craft_UI;

scale = 2;
alpha = 1;
show_inventory = false;
cell_size = 45;

m_slotx = 99;
m_sloty = 99;
gui_width = display_get_gui_width();
gui_height = display_get_gui_height();

inv_UI_width = sprite_get_width(spr_UI);
inv_UI_height = sprite_get_height(spr_UI);

inv_UI_x = gui_width/2 - inv_UI_width/2*scale;
inv_UI_y = gui_height/2 - inv_UI_height/2*scale;

///inventory setup------------------------------
inv_slot = 3;
selected_slot = inv_slot+1;
picked_slot = selected_slot;
inv_slot_width = 3;
inv_slot_height = 3;
//inv_slot_height = 3;
slot_x = inv_UI_x + 85*scale;
slot_y = inv_UI_y + 100*scale;
spr_big_x = slot_x + 330*scale;
spr_big_y = slot_y + 30*scale;
x_buffer = 15;
y_buffer = 15;

ds_inventory = ds_grid_create(2,inv_slot);

//menu
if room == rm_homeF1
{
	ds_inventory[# 0,0] = obj_carbatteryfull;
	ds_inventory[# 1,0] = 1;
	ds_inventory[# 0,1] = obj_firstaidkit;
	ds_inventory[# 1,1] = 1;
	ds_inventory[# 0,2] = obj_ammo_9mm;
	ds_inventory[# 1,2] = 1;
}
else if room == rm_sewer
{
	ds_inventory[# 0,0] = obj_firstaidkit;
	ds_inventory[# 1,0] = 1;
	ds_inventory[# 0,1] = obj_ammo_9mm;
	ds_inventory[# 1,1] = 1;
	ds_inventory[# 0,2] = obj_electronic;
	ds_inventory[# 1,2] = 1;	
}
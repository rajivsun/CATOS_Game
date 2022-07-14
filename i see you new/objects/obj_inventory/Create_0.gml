/// @description Insert description here
// You can write your code in this editor

vk_0 = virtual_key_add(100,50,200,70,vk_numpad0);
vk_1 = virtual_key_add(310,50,200,70,vk_numpad1);
vk_2 = virtual_key_add(520,50,200,70,vk_numpad2);
vk_3 = virtual_key_add(730,50,200,70,vk_numpad3);
vk_4 = virtual_key_add(940,50,120,70,vk_numpad4);
vk_pgup = virtual_key_add(640+100,400,100,100,vk_pageup);
vk_pgdown = virtual_key_add(640-200,400,100,100,vk_pagedown);

//virtual_key_show(vk_0);
//virtual_key_show(vk_1);
//virtual_key_show(vk_2);
//virtual_key_show(vk_3);
//virtual_key_show(vk_4);
//virtual_key_show(vk_pgup);
//virtual_key_show(vk_pgdown);
//virtual_key_show(vk_tb);

/// inventory UI setup-------------------------
#region
if obj_main.language == "chinese"
{
	spr_UI = spr_inv_UI;
}
else if obj_main.language == "english"
{
	spr_UI = spr_inv_UIEN;
}

depth = -9999;
scale = 2;
alpha = 1;
show_inventory = false;
category = 0;
cell_size = 45;

m_slotx = 99;
m_sloty = 99;
gui_width = display_get_gui_width();
gui_height = display_get_gui_height();

inv_UI_width = sprite_get_width(spr_UI);
inv_UI_height = sprite_get_height(spr_UI);

inv_UI_x = gui_width/2 - inv_UI_width/2*scale;
inv_UI_y = gui_height/2 - inv_UI_height/2*scale;

show_debug_message(gui_width)
show_debug_message(inv_UI_x)
show_debug_message(inv_UI_y)
#endregion

///inventory setup------------------------------
if room == rm_homeF1{
	journal = ds_list_create();
	if obj_main.language == "chinese"
	{
		ds_list_add(journal,"我想赶快回家见到番。");
	}
	else if obj_main.language == "english"
	{
		ds_list_add(journal,"I just want to get home to meet Liz.");
	}
}

if room == rm_sewer{
	journal = ds_list_create();
	if obj_main.language == "chinese"
	{
		ds_list_add(journal,"番又一次不见了，我顺着这个隧道来到了一个地下设施。");
	}
	else if obj_main.language == "english"
	{
		ds_list_add(journal,"Once again i have lost Liz, i found myself in a underground area.");
	}

}

current_page = 0;
check_item = -1;
right_item = -1;
check_key = false;
inv_slot = 12;
selected_slot = inv_slot+1;
picked_slot = selected_slot;
inv_slot_width = 4;
inv_slot_height = 3;
//inv_slot_height = 3;
slot_x = inv_UI_x + 85*scale;
slot_y = inv_UI_y + 100*scale;
spr_big_x = slot_x + 370*scale;
spr_big_y = slot_y + 40*scale;
x_buffer = 15;
y_buffer = 15;
//weapon_slot = 10;
w_slot1x = 250;
w_slot1y = 200;
//spr_inv_items = spr_item;
vk_u = virtual_key_add(spr_big_x-60,spr_big_y+300-30,120,60,ord("U"))
//virtual_key_show(vk_u)

ds_inventory = ds_grid_create(2,inv_slot);
ds_weapon_ready = ds_grid_create(2,2);

if obj_main.debug{
ds_weapon_ready[# 0,0] = obj_pistol;
ds_weapon_ready[# 1,0] = 1;
ds_inventory[# 0,1] = obj_ammo_9mm;
ds_inventory[# 1,1] = 10;
//ds_inventory[# 0,0] = obj_pistol_elect
//ds_inventory[# 1,0] = 1;
//ds_inventory[# 0,2] = obj_key_piano;
//ds_inventory[# 1,2] = 1;
//ds_inventory[# 0,3] = obj_cutter;
//ds_inventory[# 1,3] = 1;
//ds_inventory[# 0,5] = obj_ladder;
//ds_inventory[# 1,5] = 3;
//ds_inventory[# 0,6] = obj_piece;
//ds_inventory[# 1,6] = 3;
//ds_inventory[# 0,7] = obj_gunpowder;
//ds_inventory[# 1,7] = 3;
//ds_inventory[# 0,8] = obj_bandage;
//ds_inventory[# 1,8] = 3;
}

if room == rm_sewer && obj_main.new_start == true
{	
	ds_weapon_ready[# 0,0] = obj_pistol;
	ds_weapon_ready[# 1,0] = 1;

	ds_inventory[# 0,0] = obj_ammo_9mm;
	ds_inventory[# 1,0] = 10;
	ds_list_add(obj_pistol.ac,"电磁");obj_pistol.ac_total+=1;
	obj_pistol.hitback_duration += 20;obj_pistol.hitback_power += 1;
	obj_pistol.special = "elect";
}
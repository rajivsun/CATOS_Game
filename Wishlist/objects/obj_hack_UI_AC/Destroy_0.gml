/// @description Insert description here
// You can write your code in this editor


virtual_key_delete(key_esc);
if room = rm_BAR
{
virtual_key_delete(key_1);
virtual_key_delete(key_2);
virtual_key_delete(key_3);
}
else if room = rm_CITY_TOP
{
	virtual_key_delete(key_1);
	virtual_key_delete(key_2);
	obj_controller.repair_ac = true;
}
else if room = rm_METRO_STATION_QUAI
{
	virtual_key_delete(key_1);
	if inst_head_police.slot[0] == "忽视"
	{
		inst_head_police.hacked = true;
	}
}
virtual_key_delete(key_4);
virtual_key_delete(key_5);
virtual_key_delete(key_6);


layer_enable_fx("ef_scan",false);
obj_player.scan_world = false;
obj_player.fx_hack_thres = 1;



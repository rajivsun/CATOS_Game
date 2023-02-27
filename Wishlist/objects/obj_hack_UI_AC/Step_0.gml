/// @description Insert description here
// You can write your code in this editor

if room = rm_BAR
{
	if keyboard_check_pressed(vk_numpad1)
	{
		select = 0;
	}
	if keyboard_check_pressed(vk_numpad2)
	{
		select = 1;
	}
	if keyboard_check_pressed(vk_numpad3)
	{
		select = 2;
	}
	if keyboard_check_pressed(vk_numpad4) and select != -1
	{
		obj_robot_rcp.slot[select] = spr_robot_rcp_p;
		select = -1;
	}
	if keyboard_check_pressed(vk_numpad5) and select != -1
	{
		obj_robot_rcp.slot[select] = spr_robot_rcp_s;
		select = -1;
	}
	if keyboard_check_pressed(vk_numpad6) and select != -1
	{
		obj_robot_rcp.slot[select] = spr_robot_rcp_r;
		select = -1;
	}
}
if room == rm_CITY_TOP
{
	//if keyboard_check_pressed(vk_numpad1)
	//{
	//	select = 0;
	//}
		if keyboard_check_pressed(vk_numpad2)
	{
		select = 1;
	}
	if keyboard_check_pressed(vk_numpad4) and select != -1
	{
		inst_broken_ac.slot[select] = "启动";
		select = -1;
	}
	if keyboard_check_pressed(vk_numpad5) and select != -1
	{
		inst_broken_ac.slot[select] = "停止";
		select = -1;
	}
	if inst_broken_ac.slot[1] == "启动" //and inst_broken_ac.slot[1] == "启动"
	{
		inst_broken_ac.broken = false;
	}
	else inst_broken_ac.broken = true;
}
if room == rm_METRO_STATION_QUAI
{
	if keyboard_check_pressed(vk_numpad1)
	{
		select = 0;
	}
	if keyboard_check_pressed(vk_numpad4) and select != -1
	{
		inst_head_police.slot[select] = "驱逐";
		select = -1;
	}
	if keyboard_check_pressed(vk_numpad5) and select != -1
	{
		inst_head_police.slot[select] = "忽视";
		select = -1;
	}

	//else inst_head_police.broken = true;
}
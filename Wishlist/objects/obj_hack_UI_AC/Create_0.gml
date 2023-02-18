/// @description Insert description here
// You can write your code in this editor



key_esc = virtual_key_add(1700,30,150,150,vk_escape);

key_4 = virtual_key_add(362,200,376,90,vk_numpad4);
key_5 = virtual_key_add(362,295,376,90,vk_numpad5);
key_6 = virtual_key_add(362,390,376,90,vk_numpad6);

select = -1;

if room == rm_BAR
{
	key_1 = virtual_key_add(1190,247,260,100,vk_numpad1);
	key_2 = virtual_key_add(1190,540,260,100,vk_numpad2);
	key_3 = virtual_key_add(1190,780,260,100,vk_numpad3);
}
if room = rm_CITY_TOP 
{
	key_2 = virtual_key_add(1288,300,260,100,vk_numpad2);
	key_1 = virtual_key_add(1350,170,260,100,vk_numpad1);
}
if room = rm_METRO_STATION_QUAI
{
	key_1 = virtual_key_add(1135,400,260,100,vk_numpad1);
}

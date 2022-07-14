/// @description Insert description here
// You can write your code in this editor

ac = ds_list_create()
ac_total = 0;
//ac1=false;ac2=false;ac3=false;
special = "";
code = 0;
current_reward = 0;
current_action = 0;
current_puzzle = 0;
quantity = 1;
image_alpha = 0;
actionable = false;
text = false;
reward = [false];
description = false;
key = -1;
//if object_get_parent(object_index) == obj_resource pickable = true;
//keylock = false;
cd = 0;
outline_create(shader_outlineW);

hold = noone;

if place_meeting(x,y,obj_furniture){
	hold = instance_place(x,y,obj_furniture);
	depth = hold.depth -1;
	//show_debug_message(hold.depth)
}

else depth = -y;

exam = false;

var _lang = obj_main.language
#region name and description
if object_index == obj_key_storage{
	if _lang == "chinese" name = "储藏室钥匙";
	else if _lang == "english" name = "Storage room key"
}
if object_index == obj_support_electronic{
	if _lang == "chinese" 	name = "电源控制台内部";
	else if _lang == "english" name = "Interior of the command"
	exam = true;key = obj_electronic;
}
if object_index == obj_electronic{
	name = "电子装置";
	component = [obj_copper,obj_chipset,obj_metalwaste];
}
if object_index == obj_metalwaste{
	name = "废金属";;description = "金属废料，可用于合成";
}
if object_index == obj_sonar{
	name = "声纳头环";;description = "通过声波与脑电波的转换，\n提高失明患者对周围环境的感知力";
}
if object_index == obj_chipset{
	name = "芯片";;description = "可用于制作某些电子装置";
}
if object_index == obj_shotgun{
	name = "哈特菲尔德";
}
if object_index == obj_key_powerroom{
	name = "电源房钥匙";
}
if object_index == obj_key_spyroom{
	if _lang == "chinese"	name = "中央监控室钥匙";
	else if _lang == "english" name = "central supervisory room key"
}
if object_index == obj_pistol_elect{
	if _lang == "chinese"	{	name = "电磁枪口补偿器";description = "可装备于枪械上，提升击退和麻痹效果"}
	else if _lang == "english"{ name = "compensator";description ="Can be used to upgrade the handgun"}
}
if object_index == obj_closetchain_item{
	if _lang == "chinese"	name = "被铁链拴住的衣柜";
	else if _lang == "english" name = "wardrobe"
	exam = true;key = obj_cutter;
}
if object_index == obj_hole{
	if _lang == "chinese"	name = "漆黑的洞";
	else if _lang == "english" name = "Dark hole"
	exam = true;key = obj_ladder;
}
if object_index == obj_bibliotheque_item{
	if _lang == "chinese"	name = "有异样的书架";
	else if _lang == "english" name = "Bookshelf"
	exam = true;key = obj_book;
}
if object_index == obj_gunpowder{
	if _lang == "chinese"	{	name = "火药";description = "可用于合成物品"}
	else if _lang == "english"{ name = "Gun powder";description ="Can be used to craft items"}
}
if object_index == obj_piece{
	if _lang == "chinese"	{	name = "零件";description = "可用于合成物品"}
	else if _lang == "english"{ name = "Component";description ="Can be used to craft items"}
}
if object_index == obj_bandage{
	if _lang == "chinese"	{	name = "绷带";description = "可用于合成物品"}
	else if _lang == "english"{ name = "Bandage";description ="Can be used to craft items"}

}
if object_index == obj_firstaidkit{
	if _lang == "chinese"	{name = "急救包";description = "回复少量生命值"}
	else if _lang == "english"{ name = "First aid kit";description ="Can restore health"}
	component = [obj_bandage,obj_piece];
}
if object_index == obj_book
{
	if _lang == "chinese"	name = "机关书";
	else if _lang == "english" name = "Book"
}
if object_index == obj_cutter{
	if _lang == "chinese"	{name = "重型断线钳";description = "可用于剪断坚硬的绳子或链条"}
	else if _lang == "english"{ name = "Heavy clip";description ="Can be used to cut ropes or chains"}
}
if object_index == obj_ladder
{
	if _lang == "chinese"	name = "梯子";
	else if _lang == "english" name = "Ladder"
}
if object_index == obj_bbportrait2
{
	if _lang == "chinese"	name = "番的画像碎片";
	else if _lang == "english" name = "One piece of Liz's portrait"
}		
if object_index == obj_bbportrait3
{
	if _lang == "chinese"	name = "番的画像碎片";
	else if _lang == "english" name = "One piece of Liz's portrait"
}		
if object_index == obj_bbportrait1
{
	if _lang == "chinese"	name = "番的画像碎片";
	else if _lang == "english" name = "One piece of Liz's portrait"
}	
if object_index == obj_bbportrait{
	if _lang == "chinese"	name = "番的画像";
	else if _lang == "english" name = "Portrait of Liz"
	component = [obj_bbportrait1,obj_bbportrait2,obj_bbportrait3];
}
if object_index == obj_map
{
	if _lang == "chinese"	name = "地图";
	else if _lang == "english" name = "Map"
}
if object_index == obj_gameboy
{
	name = "GAMEBOY";
}
if object_index == obj_typewritter
{
	if _lang == "chinese"	name = "盲文打字机";
	else if _lang == "english" name = "braille typewriter"
	exam = true;
}
if object_index == obj_ammo_shotgun{
	if _lang == "chinese"	{name = "霰弹枪子弹";description = "适用于各种霰弹枪";}
	else if _lang == "english"{ name = "Shotgun ammo";description ="Used for shotgun"}
	component = [obj_piece,obj_gunpowder];
}
if object_index == obj_ammo_9mm{
	if _lang == "chinese"	{name = "9毫米子弹";description = "适用于各种手枪";}
	else if _lang == "english"{ name = "9mm ammo";description ="Used for handgun"}
	component = [obj_piece,obj_gunpowder];
	quantity = 7;
}
if object_index == obj_pistol{
	if _lang == "chinese"	{name = "勃朗宁";description = "一把威力强大的半自动手枪";}
	else if _lang == "english"{ name = "Browning";description ="A powerful handgun"}
}
if object_index == obj_soup
{
	if _lang == "chinese"	name = "热的肉汤";
	else if _lang == "english" name = "Hot soup"
}
if object_index == obj_fusebox
{
	if _lang == "chinese"	name = "车库外门开关";
	else if _lang == "english" name = "Switch of the gate"
}	
if object_index == obj_carlock{
	if _lang == "chinese"	name = "汽车内部";
	else if _lang == "english" name = "Car interior"
	exam = true;key = obj_carbatteryfull;
}
if object_index == obj_copper{
	if _lang == "chinese"	{	name = "铜块";description = "可用合成物品"}
	else if _lang == "english"{ name = "Copper";description ="Can be used to craft items"}
}	
if object_index == obj_acid{
	if _lang == "chinese"	{name = "稀硫酸";description = "可用合成物品"}
	else if _lang == "english"{ name = "Dilute acid";description ="Can be used to craft items"}

}	
if object_index == obj_carbatteryempty{
	if _lang == "chinese"{name = "汽车电瓶（空）";description = "可用合成物品"}
	else if _lang == "english"{ name = "Car battery (empty)";description ="Can be used to craft items"}
}	
if object_index == obj_carbatteryfull{
	if _lang == "chinese"	name = "汽车电瓶（满）";
	else if _lang == "english" name = "Car battery (full)"
	component = [obj_carbatteryempty,obj_copper,obj_acid];
}
if object_index == obj_pc
{
	if _lang == "chinese"	name = "笔记本电脑（需要密码）";
	else if _lang == "english" name = "Computer (Locked)"
}
if object_index == obj_recorder
{
	if _lang == "chinese"	name = "语音备忘录";
	else if _lang == "english" name = "Voice recorder"
}	
if object_index == obj_key_pianoroom
{
	if _lang == "chinese"	name = "钢琴房钥匙";
	else if _lang == "english" name = "Piano room key"
}	
if object_index == obj_key_main
{
	if _lang == "chinese"	name = "大门钥匙";
	else if _lang == "english" name = "Front door key"
}	
if object_index == obj_necklacebox
{
	if _lang == "chinese"	name = "首饰盒（空）";
	else if _lang == "english" name = "Jewelry box (empty)"
}	
if object_index == obj_safebox
{
	if _lang == "chinese"	name = "保险箱";
	else if _lang == "english" name = "Safe box"
}	
if object_index == obj_necklace
{
	if _lang == "chinese" name = "狗狗项链";
	else if _lang == "english" name = "Doggy necklace"

}	
if object_index == obj_paper
{
	if _lang == "chinese" name = "一份盲文文件";
	else if _lang == "english" name = "A file written in braille"
}	
if object_index == obj_paperbox
{
	if _lang == "chinese" name = "纸箱";
	else if _lang == "english" name = "Paper box"
}	
if object_index == obj_sleepbabe{
	if _lang == "chinese" {name = "睡睡兽玩偶";description = "底部好像有什么东西";}
	else if _lang == "english" {name = "Mr Sleepy";description = "There is something at the bottom"}
}
if object_index == obj_cactus
{
	if _lang == "chinese" name = "仙人掌";
	else if _lang == "english" name = "Cactus"

}
if object_index == obj_pianolock{
	if _lang == "chinese" name = "钢琴锁"
	else if _lang == "english" name = "Piano lock"
	exam = true;key = obj_key_piano;
}
		
if object_index == obj_key_piano
{
	if _lang == "chinese" name = "钢琴钥匙";
	else if _lang == "english" name = "Piano key"
}
#endregion
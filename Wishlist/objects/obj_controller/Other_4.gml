/// @description Insert description here
// You can write your code in this editor

play_scene = false;
if room == rm_FOREST
	cutscene_on = true;
	
general_room_setup();

if room == rm_VILL_RIVER
{
	if vill_scene == 0 instance_create_layer(84,147,"NPC_near",obj_old_farmer);
}

key_next = virtual_key_add(1800,50,100,100,vk_add)
//virtual_key_show(key_next)


if room == rm_ROBOT_CLEANER
{
	instance_create_layer(x,y,"system",obj_robot_cleaner_game);
}

if room = rm_METRO
{
	txt2[0] =
	[
	["haha",portrait.player],
	];
	
	action3 = 
	[
	[cutscene_text,txt2,0],
	];
	
	action2 = 
	[
	//[cutscene_fade_in,60,c_black],
	[cutscene_change_variable,obj_player,"state","scene"],
	];
	
	txt[0]=[
	["让啊，做完工作了吗？",portrait.boss],
	["做完了老板，电机现在正常工作了，\n楼体也清理完成了。",portrait.player],
	["是这样的让，我和上级领导沟通了一下，\n可能我们要让你走了。",portrait.boss],
	["走？我已经走啦。我现在下班在地铁上呢。",portrait.player],
	["不是这个走...我是说我们要辞退你了。",portrait.boss],
	["辞退我？",portrait.player],
	["是的。",portrait.boss],
	[0,[["你怎么怎么能这样！",1],["能不能争取一下",2]]],
	]
	
	txt[1] =
	[
	["你们怎么能这样！你知道我在这公司呆了多久吗？",portrait.player],
	["十五年！你们居然说走就让我走！",portrait.player],
	["你不要激动让，毕竟你年龄也有点大了，\n干起活来可能没那么利索了。",portrait.boss],
	["这是公司一致的决定了。祝你好运吧。",portrait.boss],	
	["我才35就年纪大？",portrait.player],
	["你能比得上20出头的年轻人吗？\n好了，就这样了，祝你尽快找到新的工作吧。",portrait.boss],
	[2,action2],
	];
	
	txt[2] =
	[
	["老板你就不能再争取一下吗？看在这么多年的份上。",portrait.player],
	["我已经争取过了，没办法了。\n好了，就这样了，祝你尽快找到新的工作吧。",portrait.boss],
	[2,action2],
	];
	action = [
	[cutscene_text,txt,0],
	]
}

if room = rm_BAR
{
	action2 =
	[
		[cutscene_change_variable,obj_camera,"follow",obj_player],
	]
	
	txt[0] = 
	[
	["让！这里！",portrait.shaoda_little],		
	[2,action2],
	];
	
	action = 
	[
	[cutscene_change_variable,obj_camera,"follow",obj_shaoda_big],
	//[cutscene_wait,20],
	[cutscene_text,txt,0],

	];
}

if room == rm_CITY_TOP
{
	audio_sound_gain(mc_sixteen,0,2000);
}
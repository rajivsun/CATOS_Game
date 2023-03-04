/// @description Insert description here
// You can write your code in this editor

if first_time exit;
if obj_controller.drink_beer < obj_controller.token_beer state = "enough"
else state = "not_enough";

switch state
{
	case "enough":
	
		action=
		[
		[cutscene_fade_in,60,c_black],
		[cutscene_change_position,obj_player,812,162],
		[cutscene_change_variable,obj_player,"image_xscale","-1"],
		[cutscene_fade_out,60,c_black],
		[cutscene_animation_wait,obj_player,spr_player_drink,2,false],
		[cutscene_fade_in,60,c_black],		
		[cutscene_fade_out,60,c_black],		
		];
		
		txt[1] = 
		[
			["听说你们这里今晚有个奖励卡换酒的活动。",portrait.player],
			["是的，今晚酒吧里有一个活动。可以通过获取奖励卡来兑换酒水。",portrait.bartender],	
			["那我怎么得到这个奖励卡呢？",portrait.player],
			["是这样的，游戏制作人不让我告诉您，\n需要您自己去探索，这样能提升玩家体验。",portrait.bartender],
			["啊...这...",portrait.player],
			["实在不好意思。",portrait.bartender],
			[1,0],
		];			
		txt[2] = 
		[
			["我想用奖励卡兑换啤酒。",portrait.player],		
			[2,action]
			
		];

		
		txt[0] = 
		[
			["你好先生，请问你需要什么？",portrait.bartender],
			[0,[["今晚的活动",1],["兑换啤酒",2]]],
		];

		break;
		
	case "not_enough":
		txt[2] = 
		[
			["我想用奖励卡兑换啤酒。",portrait.player],		
			["不好意思，您好像没有可用的奖励卡呢。",portrait.bartender],		
			["被你发现了。",portrait.player],		
			[1,0],
		];
		txt[1] = 
		[
			["听说你们这里今晚有个奖励卡换酒的活动。",portrait.player],
			["是的，今晚酒吧里有一个活动。可以通过获取奖励卡来兑换酒水。",portrait.bartender],	
			["那我怎么得到这个奖励卡呢？",portrait.player],
			["是这样的，游戏制作人不让我告诉您，\n需要您自己去探索，这样能提升玩家体验。",portrait.bartender],
			["啊...这...",portrait.player],
			["实在不好意思。",portrait.bartender],
			[1,0],
		];	
		
		txt[0] = 
		[
			["你好先生，请问你需要什么？",portrait.bartender],
			[0,[["今晚的活动",1],["兑换啤酒",2]]],
		];
		break;	
}
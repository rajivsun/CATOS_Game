exam = true;

rewardtext = ["未知人物：贝塔分队报告...地下设施...已被...怪物占领",
"番...番已经被转移至圣马丁医院...移交西格玛分队...",
"我是队长...队伍只剩下我一个人...",
"可恶...我快坚持不住了...",
"看来番真的被转移至医院了。可恶，就想把我引到医院是吧。",
];
spk = [id,id,id,id,obj_player];


msg="番现在应该在圣马丁医院。"

reward1 = [
	[cutscene_destroy,obj_itembox],
	[change_variable,id,"exam",true],
	[textbox,rewardtext,spk],
	[add_journal,msg],
	[change_variable,id,"current_reward",1],		
];

reward2 = [
	[cutscene_destroy,obj_itembox],
	[change_variable,id,"exam",true],
	[textbox,rewardtext,spk],
];

reward = [reward1,reward2];

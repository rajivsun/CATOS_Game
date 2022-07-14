exam = true;

rewardtext = ["未知人物：地下通道已经投入使用2个月了。目前一切功能正常。",
"此通道配备全套的监控装置，可以全天候监视目标在住所的一切行为举止。",
"在紧急情况下也可作为快速转移通道，能够直达圣马丁医院。",
];
spk = [id,id,id];


msg="这个地下通道居然连接了我家里与圣马丁医院。\n这些人究竟想干嘛。"

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

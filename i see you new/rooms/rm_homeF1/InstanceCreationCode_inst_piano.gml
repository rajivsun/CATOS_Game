actionable = true;
locked = true;

if obj_main.language == "chinese"
{
	actiontext = ["番总是喜欢把钢琴锁起来，\n可能是她小时候学琴的时候养成的习惯吧。",
	"如果没记错的话，\n钥匙应该被她放在旁边的保险箱里了。"];
	pianoscenetext = [
		"这首曲子之前没听过哎\n这是你新学的曲子吗？",
		"对呀，好听嘛？",
		"好好听呀,我仿佛可以看到鲜花在我眼前绽放。",
		"这首曲子就叫'绽放'哦。"
	];
	pianoscenetext2 = [
		"平时最幸福的时刻就是坐在番旁边听她弹琴。",
		"番，你到底在哪里...",
	];
}
	
else if obj_main.language == "english"
{
	actiontext = ["Liz always like to lock the piano, it must be a habit when she was a little girl.",
	"she worked really hard at practicing pianos at that time."];
	pianoscenetext = [
		"This song sounds new to me, did you just learned that?",
		"Yes, is it good?",
		"It is so beautiful, I can almost see the flowers blossoming right in front of me. ",
		"Let's just call this song 'blossom', don't you agree?"
	];
	pianoscenetext2 = [
		"I always enjoyed listening to her playing the piano.",
		"Liz, Where are you...",
	];
}

//key = -1
spk1 = [obj_player,obj_player];
action2=[
[textbox,actiontext,spk1],
//[itembox,obj_pianolock,false],
//[change_variable,id,"actionable",true],
];

pianoscenespk = [obj_player,obj_bbpiano,
obj_player,obj_bbpiano];
pianoscenespk2 = [
obj_player,obj_player];

action1 = [
[cutscene_destroy,"sound"],
[fadetoroom,rm_homeF1,120,c_white,631,556],
[change_variable,obj_player,"depth",-566],
[change_variable,id,"image_index",1],
[cutscene_create,613,551,"world",obj_bbpiano],
[change_variable,obj_controller,"piano_scene",true],
[cutscene_sound,sd_piano_boom,"play",true],
[animation_wait,obj_player,spr_playerPIANO,5,false],
[textbox,pianoscenetext,pianoscenespk],
[animation_wait,obj_player,spr_playerPIANO,5,false],

[fadetoroom,rm_homeF1,120,c_white,707,559],
[cutscene_sound,sd_impact,"play",false],
[cutscene_sound,sd_piano_boom,"stop"],
[change_variable,id,"current_action",1],
[change_variable,obj_controller,"piano_scene",false],
[change_variable,id,"image_index",0],
[cutscene_destroy,obj_bbpiano],
[animation_wait,obj_player,spr_playerD,2,true],
[change_variable,id,"actionable",true],
[textbox,pianoscenetext2,pianoscenespk2],
[change_variable,inst_pianodoor1,"actionable",true],
//[change_variable,inst_pianodoor2,"actionable",true],
[cutscene_close_door,inst_pianodoor1],
//[cutscene_close_door,inst_pianodoor2],
];

action = [action1,action2];

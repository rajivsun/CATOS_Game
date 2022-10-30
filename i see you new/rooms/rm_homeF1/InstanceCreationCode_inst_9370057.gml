randomize();
if obj_main.new_start
	pc_password = irandom_range(1000,9999);
else if file_exists("user.sav")
{
	ini_open("user.sav");
	pc_password = loadgame("password","pc_password");
	ini_close();
}

if obj_main.language == "chinese"
{
	actiontext = [
	"贤...贤...你能...我...话吗",
	"番？你在哪里番？",
	"贤...我在...不要...",
	"番你说什么，我听不清楚",
	"钢琴里面...钥匙...仙人掌...下"];
	actiontext2 = ["贤！你在家吗？","番，你在哪里？！你怎么不在家里啊？",
	"贤，我这边...不...你要...家里有危险...小心....",
	"电脑...码...."+string(pc_password)+"，我怕你...不要来...",
	"喂？喂？番！你在吗！番！",
	"不行，我要去找番！"];
	actiontext3 = ["是什么人在那？！"];
	msg1 = "好像是番打来的电话说钥匙...仙人掌....下，\n还有钢琴什么的。";
	msg2 = "番的电话说电脑...码..."+string(pc_password);
}
else if obj_main.language == "english"
{
	actiontext = [
	"Sean...Sean...Can...hear me...",
	"Liz?Liz where are you?",
	"Sean...I...don't...",
	"Liz i can't hear you!",
	"Inside the piano...key...under...cactus"];
	actiontext2 = ["Sean! are you home?","Liz, where are you? ",
	"I am in ...no...you have to...danger at home...careful....",
	"password...computer"+string(pc_password)+",I worry about...don't come...",
	"Hello? Hello? Are you there Liz?",
	"I have to find her!"];
	actiontext3 = ["Who is there?"];
	msg1 = "Seems like Liz called,she said something about cactus...under,and something about the piano.";
	msg2 = "Liz said password...computer..."+string(pc_password);
}


spk = [obj_phone,obj_player,obj_phone,obj_player,obj_phone];


//obj_controller.pc_password = pc_password;

action1 = 
[
	[cutscene_destroy,"sound"],
	[textbox,actiontext,spk],
	[change_variable,obj_cactus,"exam",true],
	[change_variable,id,"current_action",1],
	[add_journal,msg1],
]

actionspk3 = [obj_player];
spk2 = [obj_phone,obj_player,obj_phone,obj_phone,obj_player,obj_player];

//actionable = true;

action2 = [
[cutscene_destroy,"sound"],
[textbox,actiontext2,spk2],
	
[cutscene_destroy,obj_demon],
[cutscene_create,987,911,"world",obj_demon],
[change_variable,obj_camera,"follow",obj_demon],
[cutscene_wait,1],
[screen_shake,10,120],
[cutscene_wait,2.5],
[textbox,actiontext3,actionspk3],
[change_variable,obj_camera,"follow",obj_player],
[cutscene_wait,1],
[tutorialbox,3],	
[add_journal,msg2],
];

action = [action1,action2];
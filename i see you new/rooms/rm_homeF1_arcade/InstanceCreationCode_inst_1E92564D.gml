actionable = true;

if obj_main.language == "chinese"
{
	actiontext = ["是我向她表白时候送她的狗狗项链，是她最爱惜的首饰。",
	"平时她都是放在卧室的首饰盒里，从来没有拿出来过。",
	"难道...我要上楼去卧室看一看。"];
	msg = "番的首饰很反常的被拿了出来，我要去楼上看一看。";
}
else if obj_main.language == "english"
{
	actiontext = ["This is the doggy necklace I gave her when we started dating, that's her favorite jewelry.",
	"She always kept it in the locker and never took it out before.",
	"I should go check out upstairs"];
	msg = "That's weird, all of Liz's jewelry are taken out there, I have to go check upstairs.";
}

spk = [obj_player,obj_player,obj_player];

action1 = [

[itembox,id,false],
[textbox,actiontext,spk],
[change_variable,inst_stairsF1,"locked",false],
[add_journal,msg],
];

action = [action1];
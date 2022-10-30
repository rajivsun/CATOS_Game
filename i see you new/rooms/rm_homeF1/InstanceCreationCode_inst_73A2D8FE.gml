actionable = true;

if obj_main.language == "chinese"
{
	actiontext = ["番的首饰怎么都没了",
	"我的天，番你在哪，我好担心。。。",]
}
else if obj_main.language == "english"
{
	actiontext = ["Liz's jewelry are all gone",
	"Liz where are you, I am so worried about you...",]
}


spk = [obj_player,obj_player];

action1 = [
[itembox,id,false],
[textbox,actiontext,spk],
];

action = [action1];
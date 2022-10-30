exam = true;

if obj_main.language == "chinese"
{
	rewardtext = ["番：最近身体越来越不舒服。不会是...",
	"番：可是我真的好喜欢他。"];
}
else if obj_main.language == "english"
{
	rewardtext = ["Liz: I am not feeling well these days...I hope it's not because of....",
	"Liz: But i really love him."];
}

spk = [id,id];

reward1 = [
	[cutscene_destroy,obj_itembox],
	[textbox,rewardtext,spk],
	[change_variable,id,"exam",true]
];	

reward = [reward1];
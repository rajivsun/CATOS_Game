actionable = true;
if obj_main.language == "chinese"
{
	actiontext = ["这是她最喜欢的电视剧","可是她去哪了呢？"];
}
else if obj_main.language == "english"
{
	actiontext = ["This is her favorite TV show, where did she go?"];
}

spk = [obj_player,obj_player];

action1 = [
	[textbox,actiontext,spk],
	//[animation_wait,obj_player,spr_playerINTERACT,1.5,false],
	[change_variable,id,"image_index",1],
	[cutscene_destroy,"sound"],
	[next_event],
	[change_variable,obj_controller,"current_mission",1]
]

action = [action1];
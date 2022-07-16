// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function src_game_text(_text_id){
	
	switch(_text_id)
	{
		case "npc_robotU":
			src_text("Hi, master!");
			break;
	}
}

function create_textbox(_txt,_current_node)
{
	with (instance_create_depth(0,0,-9999,obj_textbox))
	{
		txt = _txt;
		current_node = _current_node;
	}
}
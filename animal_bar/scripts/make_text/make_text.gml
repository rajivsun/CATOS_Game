// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function make_text(_txt){
	if !instance_exists(obj_textbox)
	{
		with instance_create_layer(0,0,"text",obj_textbox)
		{
			txt = _txt;
		}
		current_txt++;
	}

}
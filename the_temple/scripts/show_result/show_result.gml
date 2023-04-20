// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function show_result(_result){
	if !instance_exists(obj_failure)
	{
		with instance_create_layer(x,y,"system",obj_failure)
		{
			pass = _result;
		}
	}
}

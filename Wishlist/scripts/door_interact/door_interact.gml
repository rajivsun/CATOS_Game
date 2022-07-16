// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function door_interact(_id){

	if _id == inst_door_home
	{
		take_action(_id.action);
	}
}
/// @description Insert description here
// You can write your code in this editor

if hacked
{
	interactable = false;
	if !actioned 
	{
		actioned = true;
		take_action(action);
	}
}

if leave 
{
	count ++;
	if count > delay
	{
		image_xscale = 1;
		sprite_index = spr_policeman_walk;
		hspeed = 0.5;	
	}
}


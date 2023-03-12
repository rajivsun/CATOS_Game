/// @description Insert description here
// You can write your code in this editor

count ++;
if count >= 60 
{
	image_alpha +=0.01;
	image_xscale = min(2,image_xscale *1.1);
	image_yscale = image_xscale; 
	if ! talk 
	{
		take_action(action_talk);
		talk = true;
	}
}


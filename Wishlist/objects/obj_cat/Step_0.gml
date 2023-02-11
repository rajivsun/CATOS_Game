/// @description Insert description here
// You can write your code in this editor



if follow == true
{
	if distance_to_object(obj_player) > max_dist && ! following
	{
		xTo = obj_player.x;
		following = true;
		hspeed = 0.7 * -sign(x - obj_player.x);	
	}
	if following
	{
		if abs(x - xTo) <= 1		
		{
			following = false;
			hspeed = 0;
		}
	}
}


if hspeed != 0
{
	sprite_index = spr_catRUN;
	if hspeed > 0 image_xscale = -0.6;
	else image_xscale = 0.6;
}
else sprite_index = spr_cat;
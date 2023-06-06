/// @description Insert description here
// You can write your code in this editor


// reveal
if state == "reveal"
{
	count_alpha ++;
	alpha_black = min(alpha_black+1/60,1);
	if count_alpha >= 30
	{
		alpha = min(alpha+0.1,1);
		count_alpha = 30;
	}

}
else if state == "leaving"
{
	count_alpha --;
	alpha_black = max(alpha_black-1/60,1);
	if count_alpha < 0
	{
		alpha = max(alpha-0.1,0);
		count_alpha = 0;
	}
}


image_blend = c_black;
image_alpha = alpha_black;
draw_self();
image_blend = c_white;
image_alpha = alpha;
draw_self();
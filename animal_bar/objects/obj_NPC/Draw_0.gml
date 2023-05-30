/// @description Insert description here
// You can write your code in this editor


// reveal
count_alpha ++;
alpha_black = min(alpha_black+1/60,1);
if count_alpha >= 30
{
	alpha = min(alpha+0.1,1);
}

image_blend = c_black;
image_alpha = alpha_black;
draw_self();
image_blend = c_white;
image_alpha = alpha;
draw_self();


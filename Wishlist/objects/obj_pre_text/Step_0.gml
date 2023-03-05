/// @description Insert description here
// You can write your code in this editor


count ++;

if count >= 180
{
	alpha -= 0.01;
}

if alpha <= 0.5
{
	if room == rm_PRE
		fade(rm_VILL_RIVER,120);
	else if room == rm_BAR_pre
		fade(rm_BAR_drunk,180);
}




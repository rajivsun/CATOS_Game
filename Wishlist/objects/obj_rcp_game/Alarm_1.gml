/// @description refresh
// You can write your code in this editor


out = "none";
played = false;
hit = false;
show_hand = false;

ds_list_add(result_count,result);

if ds_list_size(result_count) >= 3
{
	alarm[2] = 120;
	over = true;
}
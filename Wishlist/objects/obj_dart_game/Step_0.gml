/// @description Insert description here
// You can write your code in this editor

var score_to_win = 100

// if someone win 
if total_score >= score_to_win && result == 0
{
	instance_destroy(obj_pointer);
	instance_destroy(obj_flechette);
	alarm[1] = 120;
	result = "你赢了!";

}
if total_score_fbg >= score_to_win && result == 0
{
	instance_destroy(obj_pointer);
	instance_destroy(obj_flechette);
	alarm[1] = 120;	
	result = "你输了!";
}

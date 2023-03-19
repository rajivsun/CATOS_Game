/// @description Insert description here
// You can write your code in this editor

if state == 0
{
	timer ++;
	if timer >= duration{
		
		if instance_exists(obj_cutscene) {
			with obj_cutscene end_scene();
		}
		state = 2;
	}
}

if state == 1
{
	timer --;
	if timer <= 0
	{				
		if instance_exists(obj_cutscene) {
			with obj_cutscene end_scene();
		}
		instance_destroy();
	}
}
alpha = timer / duration;


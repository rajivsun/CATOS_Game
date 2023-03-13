/// @description Insert description here
// You can write your code in this editor

if room == rm_VILL_RIVER_travel{
	count ++;
	if count <= 60*5
	{
		exit;
	}
}

if current < array_length_1d(text)
{
	msg = text[current];

	if state == 0{	
	
		timer ++;	
		if timer >= duration{		
			state = 1;
		}
	}
	
	else if state == 1
	{
		timer2 ++;
		if timer2 >= duration_main
		{
			state = 2;
			timer2 = 0;
		}
	}

	else if state == 2
	{
		timer --;
		if timer <= 0
		{		
			current++;
			state = 0;
		}
	}
	alpha = timer / duration;
}

else
{
	instance_destroy();
	if room == rm_VILL_RIVER_travel fade(rm_METRO_SCENE,120);
	else if room = rm_ELEVATOR_INSIDE fade(rm_METRO_SCENE,120);
	else if room == rm_ELEVATOR_INSIDE_work fade(rm_CITY_TOP,120);
	else if room == rm_Travel fade(rm_OLD_HOME,120,c_white);
	else if room == rm_DEMO_fin 
	{
		fade(rm_START,120);
		instance_destroy(obj_controller);
	}
	//else if room == rm_METRO take_action(action);

}

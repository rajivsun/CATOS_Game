/// @description Insert description here
// You can write your code in this editor

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
	if obj_main.current_end == -1
	{
		with instance_create_depth(250,100,-999,obj_xun)
		{	
			room_dest = rm_homeF1;
		}
	}
	else
	{
		fadetoroom(roomgoto,180,c_black,false,false);
		audio_sound_gain(sd_intromusic,0,2000);
	}
}
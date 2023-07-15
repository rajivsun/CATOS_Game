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
			if current == 2 or current == 4 or current == 6
			{
				current_image ++;
				scale_x = 1.5;
				scale_y = 1.5;
			}
		}
	}
	alpha = timer / duration;
}

else
{
	fadetoroom(roomgoto,180,c_black,false,false);
}



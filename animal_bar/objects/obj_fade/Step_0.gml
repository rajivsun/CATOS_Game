/// @description Insert description here
// You can write your code in this editor


if state == 0{
	
	timer ++;
	
	if timer >= duration{
		

		room_goto(targetroom);
		
		state = 1;
		if duration = 0 {
			state = 0.5;
			timer = 180;
		}
	}
}
else if state == 0.5{
	timer2 --;
	if timer2 <= 0{
		timer2 = 300;
		state = 1;
	}
}
	
else if state == 1{
	
	timer --;
	
	if timer <= 0{
		
		instance_destroy();

	}
}

if duration == 0 alpha = timer/180;
else alpha = timer / duration;
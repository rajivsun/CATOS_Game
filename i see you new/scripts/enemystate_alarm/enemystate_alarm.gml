// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function enemystate_alarm(){
	sprite_index = spr_idle;
	if _count1 <= 60{			
		direction -= 1;
		_count1 ++;		
	}
	else if _count2 <= 120{
		direction += 1;
		_count2 ++;
	}
	else if _count1>60 and _count2 >120{
		_count1 = 0;
		_count2 = 0;
		state = "free";
	}
}



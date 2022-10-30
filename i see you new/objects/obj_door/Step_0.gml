/// @description Insert description here
// You can write your code in this editor


//open/close the door
if operate{
	//open the door
	if state == "close"{
		image_speed = 1;
		if image_index >= image_number-1{
			operate = false;
			state = "open";

		}
	}
	//close the door
	else if state == "open"{
		image_speed = -1;
		//with obj_player{
		//	if other.type == "front"{
		//		var dest = other.y + sign(y-other.y)*18;
		//		y = lerp(y,dest,0.1);
		//	}
		//	else if other.type == "lateral"{
		//		var dest = other.x + sign(x-other.x)*17;
		//		x = lerp(x,dest,0.1);
		//	}
		//}
				
		if image_index <= 1{
			image_index = 0; image_speed = 0;
			//if place_meeting(x,y,obj_player) == false{ 
				operate = false;
				state = "close";		
				obj_player.pass_door = true;
			//}
		}
	}
}
else{
	image_speed = 0;
}
	
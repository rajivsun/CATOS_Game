// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function enemystate_wander(){

	anti_fool ++;
	if anti_fool >= room_speed * 10{
		state = "free";
		anti_fool = 0;
	}
	//image_angle = direction;
	if path_position == 1{
		state = "alarm";
	}
}
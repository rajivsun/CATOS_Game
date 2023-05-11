/// @description Insert description here
// You can write your code in this editor

switch state
{
	case "idle":
		speed = 0;
		sprite_index = spr_idle;
		count ++;
		
		if count >= room_speed * random_range(3,6)
		{
			count = 0;
			if random_range(0,10) > 5
			{
				state = "walk";
				direction = random_range(0,360);
				image_angle = direction - 90;
			}
		}
		break;
		
	case "walk":
	
		//if collision_circle(x,y,0,obj_animal,false,false)
		//{
		//	state = "idle";
		//	count = 0;
		//	exit;
		//}
		
		sprite_index = spr_walk;
		speed = walk_speed;

		count ++;
		if count >= room_speed * random_range(3,6)
		{
			count = 0;
			state = "idle";
		}
		
		break;
}
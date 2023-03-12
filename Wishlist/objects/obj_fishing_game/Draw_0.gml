/// @description Insert description here
// You can write your code in this editor
var scale = 1;
var border_x = 430;
var border_y = 132;


//draw_text(400,100,score_fishing);

switch state
{
	case "fishing":
		// input
		up = keyboard_check(vk_up);
		down = keyboard_check(vk_down);
		indicator_y += down-up;

		// movement indicator
		indicator_y = min(63,indicator_y);
		indicator_y = max(5,indicator_y);
		move_y += move_speed * move_dir;

		if move_y >= 66-move_h
		{
			move_dir *= -1;
		}
		if move_y <= 0
		{
			move_dir *= -1;
		}

		// draw
		draw_sprite_ext(spr_fishing_bar,0,border_x,border_y,scale,scale,0,c_white,1);
		draw_sprite_ext(spr_fishing_bar2,0,border_x-10,border_y,scale,scale,0,c_white,1);
		draw_sprite_stretched(spr_fishing_bar_move2,0,border_x-10,border_y,4*scale,scale*score_fishing/400*68);
		//draw_healthbar(border_x-10,border_y,border_x-5,border_y+62,score_fishing/400*100,c_black,c_red,c_lime,3,true,true);

		// score
		if indicator_y >= move_y and indicator_y <= move_y+20
		{
			score_fishing ++;
			draw_sprite_stretched_ext(spr_fishing_bar_move_red,0,border_x,border_y+move_y,8*scale,move_h*scale,c_white,1);		
		}
		else
		{
			draw_sprite_stretched_ext(spr_fishing_bar_move,0,border_x,border_y+move_y,8*scale,move_h*scale,c_white,1);
		}
		draw_sprite_ext(spr_fishing_indicator,0,border_x+4,border_y+indicator_y,0.5,0.5,0,c_white,1);
		if score_fishing >= 400
		{
			state = "delay";
		}
		break;
		
	case "delay":
		delay ++;
		if delay >= 30
	
		{
			state = "reward";
			delay = 0
		}
		break;
		
	case "reward":
		
		count ++;
		if count >= 3*60
		{
			count_fish ++;
			count = 0;
			score_fishing = 0;
			state = "fishing";
			scale_reward = 0;
			move_speed += 0.2;
			if count_fish >= 3
			{
				instance_destroy();
				take_action(action);
			}
		}
		
		// draw
		scale_reward = min(3,scale_reward+0.1);
		draw_sprite_ext(spr_fish,0,obj_player.x,250/2,scale_reward,scale_reward,0,c_white,1);
		draw_set_font(ft_chinese);
		draw_set_center();
		draw_text_ext_transformed_color(obj_player.x,80,"一条新鲜大鲈鱼！",100,100,0.5,0.5,0,c_white,c_yellow,c_white,c_yellow,1);
		
		break;
}
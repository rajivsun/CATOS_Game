/// @description Insert description here
// You can write your code in this editor

switch state 
{
	case "0":
		scale = min(scale+0.05,1);
		if scale >= 1
		state = "1";

		break;
	
	case "1":
		count ++;
		if count >= 120 state = "2"
		break;
	
	case "2":
		scale = max(scale-0.05,0);
		if scale <= 0 {
			instance_destroy();
			obj_controller.token_beer ++;
		}
		break;
}


draw_sprite_ext(spr_token_beer,0,2160/2,1080/2,10*scale,10*scale,0,c_white,1);

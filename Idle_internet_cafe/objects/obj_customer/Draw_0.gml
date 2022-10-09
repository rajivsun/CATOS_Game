/// @description Insert description here
// You can write your code in this editor

//draw_text(x,y-200,state);
draw_self();


switch state
{
	case "wait_reception":
		draw_sprite_ext(spr_circle,0,x,y-100,0.125,0.125,0,c_white,1);
		
		
		for(var i=0;i<36*wait_count/reception_cd;i++)
		{
			draw_sprite_ext(spr_circle_piece,0,x,y-100,0.125,0.125,i*10,c_white,1);
			//draw_sprite_ext(spr_circle_piece,0,x,y-100,0.5,0.5,wait_count*360/reception_cd,c_white,1);
		}
		break;
}



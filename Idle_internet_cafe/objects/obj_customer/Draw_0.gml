/// @description Insert description here
// You can write your code in this editor

//draw_text(x,y-200,state);
//draw_self();


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


// ------------ draw sprite -----------
// orientation
if (direction >= 0 and direction <= 90) or (direction >= 270 and direction <= 360)
{
	image_xscale = -1;
}
else
{
	image_xscale = 1;
}

// walk animation
if path_speed == 0 and speed == 0
{
	draw_sprite_ext(spr_lower,0,x,y,image_xscale,1,0,c_white,1);
}
else
{
	walk_count += 0.05;
	draw_sprite_ext(spr_walk,walk_count,x,y,image_xscale,1,0,c_white,1);
}
draw_sprite_ext(spr_upper,0,x,y,image_xscale,1,0,c_white,1);
draw_sprite_ext(spr_head,0,x,y,image_xscale,1,0,c_white,1);



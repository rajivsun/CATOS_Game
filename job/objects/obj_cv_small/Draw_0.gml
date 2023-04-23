/// @description Insert description here
// You can write your code in this editor


// ----------- draw self with size changing-------

//draw_self()

var draw_width = (border - x + spr_width/2);
var draw_height = (bordery - y + spr_height/2);


if dragging
{
	if mouse_y >= 119 and mouse_y <= 149
	{
		draw_sprite_ext(spr_mail,0,x,y,1,1,0,c_white,1);
	}
	else if mouse_y >= 149
	{
		draw_sprite_ext(spr_papertrash,0,x,y,1,1,0,c_white,1);
	}
	else
		draw_sprite_part_ext(spr_cv_small,0,0,0,draw_width,spr_height,x-spr_width/2,y-spr_height/2,1,1,c_white,1);
}

else
// draw small part
draw_sprite_part_ext(spr_cv_small,0,0,0,draw_width,draw_height,x-spr_width/2,y-spr_height/2,1,1,c_white,1);
